/*
* This source file is part of the EtherCAT Slave Stack Code licensed by Beckhoff Automation GmbH & Co KG, 33415 Verl, Germany.
* The corresponding license agreement applies. This hint shall not be removed.
*/

/**
\addtogroup digital_io digital_io
@{
*/

/**
\file digital_io.c
\brief Implementation
*/

#include "ecat_def.h"
#include "applInterface.h"

#define _DIGITAL_IO_ 1
#include "digital_io.h"
#undef _DIGITAL_IO_

#include "ecat_config.h"
#include "hpm_gpio_drv.h"
#include <stdio.h>
#include "rs485_hal.h"
#include "modbus_rtu.h"

void    APPL_AckErrorInd(UINT16 stateTrans) { }
UINT16 APPL_StartMailboxHandler(void) { return ALSTATUSCODE_NOERROR; }
UINT16 APPL_StopMailboxHandler(void) { return ALSTATUSCODE_NOERROR; }
UINT16 APPL_StartInputHandler(UINT16 *pIntMask) { return ALSTATUSCODE_NOERROR; }
UINT16 APPL_StopInputHandler(void) { return ALSTATUSCODE_NOERROR; }
UINT16 APPL_StartOutputHandler(void) { return ALSTATUSCODE_NOERROR; }
UINT16 APPL_StopOutputHandler(void) { return ALSTATUSCODE_NOERROR; }

UINT16 APPL_GenerateMapping(UINT16 *pInputSize, UINT16 *pOutputSize)
{
    UINT16 result = ALSTATUSCODE_NOERROR;
    UINT16 InputSize = 0;
    UINT16 OutputSize = 0;

#if COE_SUPPORTED
    UINT16 PDOAssignEntryCnt = 0;
    OBJCONST TOBJECT OBJMEM *pPDO = NULL;
    UINT16 PDOSubindex0 = 0;
    UINT32 *pPDOEntry = NULL;
    UINT16 PDOEntryCnt = 0;

#if MAX_PD_OUTPUT_SIZE > 0
    for (PDOAssignEntryCnt = 0; PDOAssignEntryCnt < sRxPDOassign.u16SubIndex0; PDOAssignEntryCnt++) {
        pPDO = OBJ_GetObjectHandle(sRxPDOassign.aEntries[PDOAssignEntryCnt]);
        if (pPDO != NULL) {
            PDOSubindex0 = *((UINT16 *)pPDO->pVarPtr);
            for (PDOEntryCnt = 0; PDOEntryCnt < PDOSubindex0; PDOEntryCnt++) {
                pPDOEntry = (UINT32 *)(((UINT16 *)pPDO->pVarPtr) + (OBJ_GetEntryOffset((PDOEntryCnt+1), pPDO)>>4));    
                OutputSize += (UINT16) ((*pPDOEntry) & 0xFF);
            }
        } else {
            OutputSize = 0;
            result = ALSTATUSCODE_INVALIDOUTPUTMAPPING;
            break;
        }
    }
    OutputSize = (OutputSize + 7) >> 3;
#endif

#if MAX_PD_INPUT_SIZE > 0
    if (result == 0) {
        for (PDOAssignEntryCnt = 0; PDOAssignEntryCnt < sTxPDOassign.u16SubIndex0; PDOAssignEntryCnt++) {
            pPDO = OBJ_GetObjectHandle(sTxPDOassign.aEntries[PDOAssignEntryCnt]);
            if (pPDO != NULL) {
                PDOSubindex0 = *((UINT16 *)pPDO->pVarPtr);
                for (PDOEntryCnt = 0; PDOEntryCnt < PDOSubindex0; PDOEntryCnt++) {
                    pPDOEntry = (UINT32 *)(((UINT16 *)pPDO->pVarPtr) + (OBJ_GetEntryOffset((PDOEntryCnt+1), pPDO)>>4));
                    InputSize += (UINT16) ((*pPDOEntry) & 0xFF);
                }
            } else {
                InputSize = 0;
                result = ALSTATUSCODE_INVALIDINPUTMAPPING;
                break;
            }
        }
    }
    InputSize = (InputSize + 7) >> 3;
#endif
#endif
    *pInputSize = InputSize;
    *pOutputSize = OutputSize;
    return result;
}

void APPL_InputMapping(UINT16 *pData)
{
    uint16_t size_bytes = 12; 
    uint16_t size_words = 6;  
    MEMCPY(pData, &TxPDO_Status_Slave10x6000.Motor_Alarm_Code, size_bytes);
    MEMCPY(pData + size_words, &TxPDO_Status_Slave20x6010.Motor_Alarm_Code, size_bytes);
}

void APPL_OutputMapping(UINT16 *pData)
{
    uint16_t size_bytes = 4; 
    uint16_t size_words = 2;
    MEMCPY(&RxPDO_Control_Slave10x7000.Control_Command, pData, size_bytes);
    MEMCPY(&RxPDO_Control_Slave20x7010.Control_Command, pData + size_words, size_bytes);
}

/* =========================================================================
   多轴极速状态机 (恢复高效 16 寄存器打包版)
   ========================================================================= */
#define AXIS_COUNT 2

#define STATE_REQ     0
#define STATE_WAIT    1

static uint8_t  s_poll_state = STATE_REQ; 
static uint8_t  s_current_axis = 0; 
static uint8_t  s_poll_step[AXIS_COUNT] = {0, 0}; 
static uint32_t s_timeout_cnt = 0; 

static uint8_t  s_pending_write = 0; 
static uint16_t s_sdo_write_reg = 0;
static uint16_t s_sdo_write_val16 = 0;
static uint32_t s_sdo_write_val32 = 0;

static uint8_t  s_axis_initialized[AXIS_COUNT] = {0, 0}; 

static uint16_t s_last_control_cmd[AXIS_COUNT] = {0xFFFF, 0xFFFF};
static uint16_t s_last_target_speed[AXIS_COUNT] = {0xFFFF, 0xFFFF};
static uint16_t s_last_save_param[AXIS_COUNT] = {0, 0};

static uint8_t  s_rx_buffer[128];
static uint16_t s_rx_idx = 0;

#define GET_U16(buf, offset)  (((uint16_t)buf[3 + (offset)*2] << 8) | buf[4 + (offset)*2])
#define GET_U32(buf, offset)  (((uint32_t)GET_U16(buf, offset) << 16) | GET_U16(buf, offset+1))

static TOBJ2000 s_last_sdo[AXIS_COUNT];
static uint8_t  s_sdo_init = 0;

#define CHECK_SDO_16(field_name, reg_addr) \
    if (pConfigRW->field_name != pShadow->field_name) { \
        s_sdo_write_reg = reg_addr; \
        s_sdo_write_val16 = pConfigRW->field_name; \
        pShadow->field_name = pConfigRW->field_name; \
        s_pending_write = 3; \
        goto SEND_PACKET; \
    }

#define CHECK_SDO_32(field_name, reg_addr) \
    if (pConfigRW->field_name != pShadow->field_name) { \
        s_sdo_write_reg = reg_addr; \
        s_sdo_write_val32 = pConfigRW->field_name; \
        pShadow->field_name = pConfigRW->field_name; \
        s_pending_write = 4; \
        goto SEND_PACKET; \
    }

#define SYNC_FROM_READ_16(field_name, read_val) do { \
    if (pConfigRW->field_name == pShadow->field_name) { \
        pConfigRW->field_name = (read_val); \
        pShadow->field_name = (read_val); \
    } \
} while(0)

#define SYNC_FROM_READ_32(field_name, read_val) do { \
    if (pConfigRW->field_name == pShadow->field_name) { \
        pConfigRW->field_name = (read_val); \
        pShadow->field_name = (read_val); \
    } \
} while(0)

void APPL_Application(void)
{
    uint8_t tx_buf[32];
    uint8_t rx_tmp[128];
    uint16_t chunk_len = 0;
    
    if (s_sdo_init == 0) {
        MEMCPY(&s_last_sdo[0], &SDO_Config_RW_Slave10x2000, sizeof(TOBJ2000));
        MEMCPY(&s_last_sdo[1], &SDO_Config_RW_Slave20x2010, sizeof(TOBJ2000));
        s_last_save_param[0] = Modbus_Config_Slave10x8000.Save_Parameters;
        s_last_save_param[1] = Modbus_Config_Slave20x8010.Save_Parameters;
        s_sdo_init = 1;
    }

    uint8_t checked_axes = 0;
    uint8_t slave_id = 0;
    TOBJ8000 *pModbus_tmp;
    
    while (checked_axes < AXIS_COUNT) {
        pModbus_tmp = (s_current_axis == 0) ? &Modbus_Config_Slave10x8000 : (TOBJ8000*)&Modbus_Config_Slave20x8010;
        slave_id = (uint8_t)pModbus_tmp->Station_ID;
        if (slave_id != 0) break;
        
        s_poll_step[s_current_axis] = 0; 
        s_current_axis = (s_current_axis + 1) % AXIS_COUNT;
        s_poll_state = STATE_REQ; 
        checked_axes++;
    }
    if (checked_axes == AXIS_COUNT) return; 

    TOBJ2000 *pConfigRW = (s_current_axis == 0) ? &SDO_Config_RW_Slave10x2000 : (TOBJ2000*)&SDO_Config_RW_Slave20x2010;
    TOBJ2001 *pStatusRO = (s_current_axis == 0) ? &SDO_Status_RO_Slave10x2001 : (TOBJ2001*)&SDO_Status_RO_Slave20x2011;
    TOBJ6000 *pTxPDO    = (s_current_axis == 0) ? &TxPDO_Status_Slave10x6000  : (TOBJ6000*)&TxPDO_Status_Slave20x6010;
    TOBJ7000 *pRxPDO    = (s_current_axis == 0) ? &RxPDO_Control_Slave10x7000 : (TOBJ7000*)&RxPDO_Control_Slave20x7010;
    TOBJ8000 *pModbus   = pModbus_tmp;
    TOBJ2000 *pShadow   = &s_last_sdo[s_current_axis];

    switch (s_poll_state) {
        
        case STATE_REQ:
            s_rx_idx = 0; 
            s_timeout_cnt = 0; 
            
            if (s_pending_write == 5) goto SEND_PACKET;

            s_pending_write = 0;

            if (s_axis_initialized[s_current_axis]) {
                if (pModbus->Save_Parameters != s_last_save_param[s_current_axis]) {
                    s_last_save_param[s_current_axis] = pModbus->Save_Parameters;
                    if (s_last_save_param[s_current_axis] == 0xFFFF) {
                        s_sdo_write_reg = 0x81FF;
                        s_sdo_write_val16 = 0xFFFF;
                        s_pending_write = 3;
                        goto SEND_PACKET;
                    }
                }
                if (pRxPDO->Control_Command != s_last_control_cmd[s_current_axis]) {
                    s_pending_write = 1;
                    s_last_control_cmd[s_current_axis] = pRxPDO->Control_Command;
                    uint16_t combined_8106 = ((pConfigRW->Work_Mode & 0xFF) << 8) | (pRxPDO->Control_Command & 0xFF);
                    RS485_SendData(tx_buf, Modbus_BuildWritePacket(tx_buf, slave_id, 0x8106, combined_8106));
                    s_poll_state = STATE_WAIT;
                    break;
                }
                if (pRxPDO->Target_Speed_RPM != s_last_target_speed[s_current_axis]) {
                    s_pending_write = 2;
                    s_last_target_speed[s_current_axis] = pRxPDO->Target_Speed_RPM;
                    RS485_SendData(tx_buf, Modbus_BuildWritePacket(tx_buf, slave_id, 0x8110, pRxPDO->Target_Speed_RPM));
                    s_poll_state = STATE_WAIT;
                    break;
                }
                
                if (pConfigRW->Work_Mode != pShadow->Work_Mode) {
                    s_sdo_write_reg = 0x8106;
                    s_sdo_write_val16 = ((pConfigRW->Work_Mode & 0xFF) << 8) | (pRxPDO->Control_Command & 0xFF);
                    pShadow->Work_Mode = pConfigRW->Work_Mode;
                    s_pending_write = 3;
                    goto SEND_PACKET;
                }
                if (pConfigRW->Modbus_Baudrate != pShadow->Modbus_Baudrate || 
                    pConfigRW->Motor_Pole_Pairs != pShadow->Motor_Pole_Pairs) {
                    s_sdo_write_reg = 0x8107;
                    s_sdo_write_val16 = ((pConfigRW->Modbus_Baudrate & 0xFF) << 8) | (pConfigRW->Motor_Pole_Pairs & 0xFF);
                    pShadow->Modbus_Baudrate = pConfigRW->Modbus_Baudrate;
                    pShadow->Motor_Pole_Pairs = pConfigRW->Motor_Pole_Pairs;
                    s_pending_write = 3;
                    goto SEND_PACKET;
                }
                if (pConfigRW->Deceleration_Time != pShadow->Deceleration_Time || 
                    pConfigRW->Acceleration_Time != pShadow->Acceleration_Time) {
                    s_sdo_write_reg = 0x810B;
                    s_sdo_write_val16 = ((pConfigRW->Deceleration_Time & 0xFF) << 8) | (pConfigRW->Acceleration_Time & 0xFF);
                    pShadow->Deceleration_Time = pConfigRW->Deceleration_Time;
                    pShadow->Acceleration_Time = pConfigRW->Acceleration_Time;
                    s_pending_write = 3;
                    goto SEND_PACKET;
                }

                CHECK_SDO_16(Drive_Station_Addr,   0x8102)
                CHECK_SDO_16(Comm_Address_High,    0x8103)
                CHECK_SDO_16(CAN_Comm_Freq,        0x8104)
                CHECK_SDO_16(CAN_Heartbeat_Time,   0x8105)
                CHECK_SDO_16(Start_Torque,         0x8109)
                CHECK_SDO_16(Sensorless_Start_Spd, 0x810A)
                CHECK_SDO_16(Current_Protect,      0x810C)
                CHECK_SDO_16(Brake_Torque,         0x810D)
                CHECK_SDO_16(Brake_Lock_Torque,    0x8129) 
                CHECK_SDO_16(High_Voltage_Alarm,   0x810E)
                CHECK_SDO_16(Low_Voltage_Alarm,    0x810F)
                CHECK_SDO_16(Speed_Loop_P,         0x8111)
                CHECK_SDO_16(Speed_Loop_I,         0x8112)
                CHECK_SDO_16(Speed_Loop_D,         0x8113)
                CHECK_SDO_16(Over_Limit_Ratio_C,   0x8114)
                CHECK_SDO_16(PWM_Output_Min,       0x8115)
                CHECK_SDO_16(PWM_Output_Max,       0x8116)
                CHECK_SDO_16(Current_Loop_P,       0x8117)
                CHECK_SDO_16(Current_Loop_I,       0x8118)
                CHECK_SDO_16(Current_Loop_D,       0x8119)
                CHECK_SDO_16(Current_Loop_C,       0x811A)
                CHECK_SDO_16(Temp_Alarm_Point,     0x811B)

                CHECK_SDO_32(Software_Speed_Max,   0x811C)
                CHECK_SDO_32(Software_Speed_Min,   0x811E)
            }

SEND_PACKET:
            if (s_pending_write == 3) {
                RS485_SendData(tx_buf, Modbus_BuildWritePacket(tx_buf, slave_id, s_sdo_write_reg, s_sdo_write_val16));
            }
            else if (s_pending_write == 4) {
                uint16_t high_word = (s_sdo_write_val32 >> 16) & 0xFFFF;
                RS485_SendData(tx_buf, Modbus_BuildWritePacket(tx_buf, slave_id, s_sdo_write_reg, high_word));
            }
            else if (s_pending_write == 5) {
                uint16_t low_word = s_sdo_write_val32 & 0xFFFF;
                RS485_SendData(tx_buf, Modbus_BuildWritePacket(tx_buf, slave_id, s_sdo_write_reg + 1, low_word));
            }
            else { 
                s_pending_write = 0;
                // 恢复 16 寄存器满负荷抓取！极大提高带宽利用率！
                if (s_axis_initialized[s_current_axis] == 0) {
                    if (s_poll_step[s_current_axis] == 0)      RS485_SendData(tx_buf, Modbus_BuildReadPacket(tx_buf, slave_id, 0x8102, 16));
                    else if (s_poll_step[s_current_axis] == 1) RS485_SendData(tx_buf, Modbus_BuildReadPacket(tx_buf, slave_id, 0x8112, 16)); 
                    else if (s_poll_step[s_current_axis] == 2) RS485_SendData(tx_buf, Modbus_BuildReadPacket(tx_buf, slave_id, 0x8122, 8));  
                } else {
                    s_poll_step[s_current_axis] = 3;
                    RS485_SendData(tx_buf, Modbus_BuildReadPacket(tx_buf, slave_id, 0x8200, 16));
                }
            }
            s_poll_state = STATE_WAIT; 
            break;

        case STATE_WAIT:
            chunk_len = RS485_ReadData(rx_tmp); 
            if (chunk_len > 0) {
                for (int i = 0; i < chunk_len; i++) {
                    if (s_rx_idx < 128) s_rx_buffer[s_rx_idx++] = rx_tmp[i];
                }
            }

            while (s_rx_idx > 0 && s_rx_buffer[0] != slave_id) {
                for (int i = 0; i < s_rx_idx - 1; i++) {
                    s_rx_buffer[i] = s_rx_buffer[i+1];
                }
                s_rx_idx--;
            }

            uint16_t expected_len = 0;
            if (s_pending_write >= 1 && s_pending_write <= 5) {
                expected_len = 8; 
            } else {
                if (s_poll_step[s_current_axis] == 0) expected_len = 37; 
                else if (s_poll_step[s_current_axis] == 1) expected_len = 37; 
                else if (s_poll_step[s_current_axis] == 2) expected_len = 21; 
                else if (s_poll_step[s_current_axis] == 3) expected_len = 37; 
            }

            if (s_rx_idx >= 2 && (s_rx_buffer[1] & 0x80)) {
                expected_len = 5;
            }

            if (s_rx_idx >= expected_len) {
                if (Modbus_CRC16(s_rx_buffer, expected_len) == 0) {
                    
                    if (pTxPDO->Motor_Alarm_Code == 0xFFFF) pTxPDO->Motor_Alarm_Code = 0;

                    if (s_rx_buffer[1] == 0x06) {
                        if (s_pending_write == 4) s_pending_write = 5; 
                        else s_pending_write = 0; 
                    }
                    else if (s_rx_buffer[1] == MODBUS_FC_READ_HOLDING_REG && s_pending_write == 0) {
                        
                        if (s_poll_step[s_current_axis] == 0 && expected_len == 37) {
                            SYNC_FROM_READ_16(Drive_Station_Addr,   GET_U16(s_rx_buffer, 0)); 
                            SYNC_FROM_READ_16(Comm_Address_High,    GET_U16(s_rx_buffer, 1));
                            SYNC_FROM_READ_16(CAN_Comm_Freq,        GET_U16(s_rx_buffer, 2));
                            SYNC_FROM_READ_16(CAN_Heartbeat_Time,   GET_U16(s_rx_buffer, 3));
                            SYNC_FROM_READ_16(Work_Mode,            GET_U16(s_rx_buffer, 4) >> 8); 
                            SYNC_FROM_READ_16(Modbus_Baudrate,      GET_U16(s_rx_buffer, 5) >> 8);
                            SYNC_FROM_READ_16(Motor_Pole_Pairs,     GET_U16(s_rx_buffer, 5) & 0xFF);
                            pStatusRO->Ext_Motor_Speed_Set =        GET_U16(s_rx_buffer, 6); 
                            SYNC_FROM_READ_16(Start_Torque,         GET_U16(s_rx_buffer, 7)); 
                            SYNC_FROM_READ_16(Sensorless_Start_Spd, GET_U16(s_rx_buffer, 8));
                            SYNC_FROM_READ_16(Deceleration_Time,    GET_U16(s_rx_buffer, 9) >> 8);
                            SYNC_FROM_READ_16(Acceleration_Time,    GET_U16(s_rx_buffer, 9) & 0xFF);
                            SYNC_FROM_READ_16(Current_Protect,      GET_U16(s_rx_buffer, 10)); 
                            SYNC_FROM_READ_16(Brake_Torque,         GET_U16(s_rx_buffer, 11));
                            SYNC_FROM_READ_16(High_Voltage_Alarm,   GET_U16(s_rx_buffer, 12));
                            SYNC_FROM_READ_16(Low_Voltage_Alarm,    GET_U16(s_rx_buffer, 13));
                            SYNC_FROM_READ_16(Speed_Loop_P,         GET_U16(s_rx_buffer, 15));
                            s_poll_step[s_current_axis] = 1; 
                        }
                        else if (s_poll_step[s_current_axis] == 1 && expected_len == 37) {
                            SYNC_FROM_READ_16(Speed_Loop_I,       GET_U16(s_rx_buffer, 0));
                            SYNC_FROM_READ_16(Speed_Loop_D,       GET_U16(s_rx_buffer, 1));
                            SYNC_FROM_READ_16(Over_Limit_Ratio_C, GET_U16(s_rx_buffer, 2));
                            SYNC_FROM_READ_16(PWM_Output_Min,     GET_U16(s_rx_buffer, 3));
                            SYNC_FROM_READ_16(PWM_Output_Max,     GET_U16(s_rx_buffer, 4));
                            SYNC_FROM_READ_16(Current_Loop_P,     GET_U16(s_rx_buffer, 5));
                            SYNC_FROM_READ_16(Current_Loop_I,     GET_U16(s_rx_buffer, 6));
                            SYNC_FROM_READ_16(Current_Loop_D,     GET_U16(s_rx_buffer, 7));
                            SYNC_FROM_READ_16(Current_Loop_C,     GET_U16(s_rx_buffer, 8));
                            SYNC_FROM_READ_16(Temp_Alarm_Point,   GET_U16(s_rx_buffer, 9));
                            SYNC_FROM_READ_32(Software_Speed_Max, GET_U32(s_rx_buffer, 10));
                            SYNC_FROM_READ_32(Software_Speed_Min, GET_U32(s_rx_buffer, 12));
                            s_poll_step[s_current_axis] = 2; 
                        }
                        else if (s_poll_step[s_current_axis] == 2 && expected_len == 21) {
                            // 偏移为7是因为读取了8个寄存器，0x8129是第八个
                            SYNC_FROM_READ_16(Brake_Lock_Torque,  GET_U16(s_rx_buffer, 7)); 
                            s_axis_initialized[s_current_axis] = 1; 
                            s_poll_step[s_current_axis] = 3;        
                        }
                        else if (s_poll_step[s_current_axis] == 3 && expected_len == 37) {
                            pStatusRO->Motor_Work_Status  = GET_U16(s_rx_buffer, 0);
                            pStatusRO->Motor_Target_Speed = GET_U32(s_rx_buffer, 1);
                            pStatusRO->Given_Speed        = GET_U32(s_rx_buffer, 3);
                            pTxPDO->Motor_Actual_Speed    = GET_U32(s_rx_buffer, 5);
                            pStatusRO->Motor_State        = GET_U32(s_rx_buffer, 7);
                            pTxPDO->Actual_Temp           = GET_U16(s_rx_buffer, 9);
                            pStatusRO->Port_Speed_Voltage = GET_U16(s_rx_buffer, 10);
                            pTxPDO->Bus_Voltage           = GET_U16(s_rx_buffer, 11);
                            pStatusRO->Current_Protect_RO = GET_U16(s_rx_buffer, 12);
                            pStatusRO->Section_Speed_Port = GET_U16(s_rx_buffer, 13);
                            pTxPDO->Actual_Current        = GET_U16(s_rx_buffer, 14);
                            pTxPDO->Motor_Alarm_Code      = GET_U16(s_rx_buffer, 15);
                            
                            s_current_axis = (s_current_axis + 1) % AXIS_COUNT;
                        }
                    }
                    else if (s_rx_buffer[1] & 0x80) {
                        // 【致命Bug修复区】一旦遭到从机拒绝（报异常错误码），必须强制清空阻塞任务，释放总线！
                        s_pending_write = 0; 
                    }
                    
                    s_rx_idx = 0; 
                    s_poll_state = STATE_REQ; 
                } 
                else {
                    s_rx_buffer[0] = 0x00; 
                }
            } 
            else {
                s_timeout_cnt++;
                // 极限 200万次超时（相当于彻底杜绝了程序运行过快导致的误杀）
                if (s_timeout_cnt > 2000000) {  
                    pTxPDO->Motor_Alarm_Code = 0xFFFF; 
                    s_axis_initialized[s_current_axis] = 0; 
                    s_poll_step[s_current_axis] = 0;        
                    s_pending_write = 0; // 超时必须解开 SDO 写入锁
                    s_rx_idx = 0; 
                    
                    s_current_axis = (s_current_axis + 1) % AXIS_COUNT;
                    s_poll_state = STATE_REQ; 
                }
            }
            break;
    }
}

#if EXPLICIT_DEVICE_ID
UINT16 APPL_GetDeviceID(void)
{
    return 0x5;
}
#endif

#if USE_DEFAULT_MAIN
#if _PIC24 && EL9800_HW
int main(void)
#elif _WIN32
int main(int argc, char *argv[])
#else
void main(void)
#endif
{
#if FC1100_HW
#if _WIN32
    u16FcInstance = 0;
    if (argc > 1) {
        u16FcInstance = atoi(argv[1]);
    }
#endif
    if (HW_Init()) {
        HW_Release();
        return;
    }
#else
    HW_Init();
#endif
    MainInit();

    bRunApplication = TRUE;
    do {
        MainLoop();
    } while (bRunApplication == TRUE);

    HW_Release();
#if _PIC24
    return 0;
#endif
}
#endif /* #if USE_DEFAULT_MAIN */
/** @} */