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
 Created with SSC Tool application parser 1.6.4.0
\version 0.0.0.1
*/

/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/
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

/*-----------------------------------------------------------------------------------------
------
------    generic functions
------
-----------------------------------------------------------------------------------------*/
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
    /*Scan object 0x1C12 RXPDO assign*/
    for (PDOAssignEntryCnt = 0; PDOAssignEntryCnt < sRxPDOassign.u16SubIndex0; PDOAssignEntryCnt++) {
        pPDO = OBJ_GetObjectHandle(sRxPDOassign.aEntries[PDOAssignEntryCnt]);
        if (pPDO != NULL) {
            PDOSubindex0 = *((UINT16 *)pPDO->pVarPtr);
            for (PDOEntryCnt = 0; PDOEntryCnt < PDOSubindex0; PDOEntryCnt++) {
                pPDOEntry = (UINT32 *)(((UINT16 *)pPDO->pVarPtr) + (OBJ_GetEntryOffset((PDOEntryCnt+1), pPDO)>>4));    /* goto PDO entry */
                /* we increment the expected output size depending on the mapped Entry */
                OutputSize += (UINT16) ((*pPDOEntry) & 0xFF);
            }
        } else {
            /*assigned PDO was not found in object dictionary. return invalid mapping*/
            OutputSize = 0;
            result = ALSTATUSCODE_INVALIDOUTPUTMAPPING;
            break;
        }
    }

    OutputSize = (OutputSize + 7) >> 3;
#endif

#if MAX_PD_INPUT_SIZE > 0
    if (result == 0) {
        /*Scan Object 0x1C13 TXPDO assign*/
        for (PDOAssignEntryCnt = 0; PDOAssignEntryCnt < sTxPDOassign.u16SubIndex0; PDOAssignEntryCnt++) {
            pPDO = OBJ_GetObjectHandle(sTxPDOassign.aEntries[PDOAssignEntryCnt]);
            if (pPDO != NULL) {
                PDOSubindex0 = *((UINT16 *)pPDO->pVarPtr);
                for (PDOEntryCnt = 0; PDOEntryCnt < PDOSubindex0; PDOEntryCnt++) {
                    pPDOEntry = (UINT32 *)(((UINT16 *)pPDO->pVarPtr) + (OBJ_GetEntryOffset((PDOEntryCnt+1), pPDO)>>4));    /* goto PDO entry */
                    /* we increment the expected output size depending on the mapped Entry */
                    InputSize += (UINT16) ((*pPDOEntry) & 0xFF);
                }
            } else {
                /*assigned PDO was not found in object dictionary. return invalid mapping*/
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

/**
\param      pData  pointer to input process data
*/
void APPL_InputMapping(UINT16 *pData)
{
    uint16_t size1 = sizeof(TxPDO_Status_Slave10x6000) - 2;
    uint16_t size2 = sizeof(TxPDO_Status_Slave20x6010) - 2;
    
    MEMCPY(pData, &TxPDO_Status_Slave10x6000.Motor_Alarm_Code, size1);
    MEMCPY(pData + (size1 / 2), &TxPDO_Status_Slave20x6010.Motor_Alarm_Code, size2);
}

/**
\param      pData  pointer to output process data
*/
void APPL_OutputMapping(UINT16 *pData)
{
    uint16_t size1 = sizeof(RxPDO_Control_Slave10x7000) - 2;
    uint16_t size2 = sizeof(RxPDO_Control_Slave20x7010) - 2;
    
    MEMCPY(&RxPDO_Control_Slave10x7000.Control_Command, pData, size1);
    MEMCPY(&RxPDO_Control_Slave20x7010.Control_Command, pData + (size1 / 2), size2);
}

/* =========================================================================
   Modbus 多轴轮询状态机与影子字典 
   ========================================================================= */
#define AXIS_COUNT 2

// 状态机变量
static uint8_t  s_modbus_poll_state = 0; 
static uint8_t  s_current_axis = 0; // 当前正在轮询的轴: 0=Slave1, 1=Slave2
static uint16_t s_timeout_cnt = 0;
static uint8_t  s_pending_write = 0; 
static uint16_t s_sdo_write_reg = 0;
static uint16_t s_sdo_write_val = 0;

// 记录各个轴上一次的控制命令和速度，防止重复发送
static uint16_t s_last_control_cmd[AXIS_COUNT] = {0xFFFF, 0xFFFF};
static uint16_t s_last_target_speed[AXIS_COUNT] = {0xFFFF, 0xFFFF};
static uint16_t s_last_save_param[AXIS_COUNT] = {0, 0};

// SDO 影子字典数组
static TOBJ2000 s_last_sdo_1; 
static TOBJ2010 s_last_sdo_2; 
static uint8_t  s_sdo_init = 0;

/* 宏定义：专门处理轴 1 的 SDO 拦截 */
#define CHECK_SDO_1(field_name, reg_addr) \
    if (SDO_Config_RW_Slave10x2000.field_name != s_last_sdo_1.field_name) { \
        s_sdo_write_reg = reg_addr; \
        s_sdo_write_val = SDO_Config_RW_Slave10x2000.field_name; \
        s_last_sdo_1.field_name = SDO_Config_RW_Slave10x2000.field_name; \
        s_pending_write = 3; \
        goto SEND_PACKET; \
    }

/* 宏定义：专门处理轴 2 的 SDO 拦截 */
#define CHECK_SDO_2(field_name, reg_addr) \
    if (SDO_Config_RW_Slave20x2010.field_name != s_last_sdo_2.field_name) { \
        s_sdo_write_reg = reg_addr; \
        s_sdo_write_val = SDO_Config_RW_Slave20x2010.field_name; \
        s_last_sdo_2.field_name = SDO_Config_RW_Slave20x2010.field_name; \
        s_pending_write = 3; \
        goto SEND_PACKET; \
    }

void APPL_Application(void)
{
    uint8_t tx_buf[32];
    uint8_t rx_buf[128];
    uint16_t rx_len = 0;
    
    // 获取当前轮询的从站 ID
    uint8_t slave_id = (s_current_axis == 0) ? (uint8_t)Modbus_Config_Slave10x8000.Station_ID : 
                                               (uint8_t)Modbus_Config_Slave20x8010.Station_ID; 

    switch (s_modbus_poll_state) {
        
        case 0: /* 状态 0：扫描变化并发送请求 */
            s_timeout_cnt = 0; 
            s_pending_write = 0;
            
            if (s_sdo_init == 0) {
                s_last_sdo_1 = SDO_Config_RW_Slave10x2000;
                s_last_sdo_2 = SDO_Config_RW_Slave20x2010;
                s_last_save_param[0] = Modbus_Config_Slave10x8000.Save_Parameters;
                s_last_save_param[1] = Modbus_Config_Slave20x8010.Save_Parameters;
                s_sdo_init = 1;
            }

            /* ===================================================================
               处理轴 1 (Slave 1)
               =================================================================== */
            if (s_current_axis == 0) {
                // 1. 拦截保存参数功能 (0x8000)
                if (Modbus_Config_Slave10x8000.Save_Parameters != s_last_save_param[0]) {
                    s_last_save_param[0] = Modbus_Config_Slave10x8000.Save_Parameters;
                    if (s_last_save_param[0] == 0xFFFF) {
                        s_sdo_write_reg = 0x81FF;
                        s_sdo_write_val = 0xFFFF;
                        s_pending_write = 3;
                        goto SEND_PACKET;
                    }
                }
                
                // 2. 检查实时 PDO
                if (RxPDO_Control_Slave10x7000.Control_Command != s_last_control_cmd[0]) {
                    s_pending_write = 1;
                    s_last_control_cmd[0] = RxPDO_Control_Slave10x7000.Control_Command;
                    uint16_t combined_8106 = ((SDO_Config_RW_Slave10x2000.Work_Mode & 0xFF) << 8) | (s_last_control_cmd[0] & 0xFF);
                    uint16_t tx_len = Modbus_BuildWritePacket(tx_buf, slave_id, 0x8106, combined_8106);
                    RS485_SendData(tx_buf, tx_len);
                    s_modbus_poll_state = 1;
                    break;
                }
                if (RxPDO_Control_Slave10x7000.Target_Speed_RPM != s_last_target_speed[0]) {
                    s_pending_write = 2;
                    s_last_target_speed[0] = RxPDO_Control_Slave10x7000.Target_Speed_RPM;
                    uint16_t tx_len = Modbus_BuildWritePacket(tx_buf, slave_id, 0x8110, s_last_target_speed[0]);
                    RS485_SendData(tx_buf, tx_len);
                    s_modbus_poll_state = 1;
                    break;
                }
                
                // 3. 扫描特殊拼装的 SDO
                if (SDO_Config_RW_Slave10x2000.Work_Mode != s_last_sdo_1.Work_Mode) {
                    s_sdo_write_reg = 0x8106;
                    s_sdo_write_val = ((SDO_Config_RW_Slave10x2000.Work_Mode & 0xFF) << 8) | (RxPDO_Control_Slave10x7000.Control_Command & 0xFF);
                    s_last_sdo_1.Work_Mode = SDO_Config_RW_Slave10x2000.Work_Mode;
                    s_pending_write = 3;
                    goto SEND_PACKET;
                }
                if (SDO_Config_RW_Slave10x2000.Modbus_Baudrate != s_last_sdo_1.Modbus_Baudrate || 
                    SDO_Config_RW_Slave10x2000.Motor_Pole_Pairs != s_last_sdo_1.Motor_Pole_Pairs) {
                    s_sdo_write_reg = 0x8107;
                    s_sdo_write_val = ((SDO_Config_RW_Slave10x2000.Modbus_Baudrate & 0xFF) << 8) | (SDO_Config_RW_Slave10x2000.Motor_Pole_Pairs & 0xFF);
                    s_last_sdo_1.Modbus_Baudrate = SDO_Config_RW_Slave10x2000.Modbus_Baudrate;
                    s_last_sdo_1.Motor_Pole_Pairs = SDO_Config_RW_Slave10x2000.Motor_Pole_Pairs;
                    s_pending_write = 3;
                    goto SEND_PACKET;
                }
                if (SDO_Config_RW_Slave10x2000.Deceleration_Time != s_last_sdo_1.Deceleration_Time || 
                    SDO_Config_RW_Slave10x2000.Acceleration_Time != s_last_sdo_1.Acceleration_Time) {
                    s_sdo_write_reg = 0x810B;
                    s_sdo_write_val = ((SDO_Config_RW_Slave10x2000.Deceleration_Time & 0xFF) << 8) | (SDO_Config_RW_Slave10x2000.Acceleration_Time & 0xFF);
                    s_last_sdo_1.Deceleration_Time = SDO_Config_RW_Slave10x2000.Deceleration_Time;
                    s_last_sdo_1.Acceleration_Time = SDO_Config_RW_Slave10x2000.Acceleration_Time;
                    s_pending_write = 3;
                    goto SEND_PACKET;
                }

                // 4. 扫描独立 SDO
                CHECK_SDO_1(Drive_Station_Addr,   0x8102)
                CHECK_SDO_1(Comm_Address_High,    0x8103)
                CHECK_SDO_1(CAN_Comm_Freq,        0x8104)
                CHECK_SDO_1(CAN_Heartbeat_Time,   0x8105)
                CHECK_SDO_1(Start_Torque,         0x8109)
                CHECK_SDO_1(Sensorless_Start_Spd, 0x810A)
                CHECK_SDO_1(Current_Protect,      0x810C)
                CHECK_SDO_1(Brake_Torque,         0x810D)
                CHECK_SDO_1(Brake_Lock_Torque,    0x8129) 
                CHECK_SDO_1(High_Voltage_Alarm,   0x810E)
                CHECK_SDO_1(Low_Voltage_Alarm,    0x810F)
                CHECK_SDO_1(Speed_Loop_P,         0x8111)
                CHECK_SDO_1(Speed_Loop_I,         0x8112)
                CHECK_SDO_1(Speed_Loop_D,         0x8113)
                CHECK_SDO_1(Over_Limit_Ratio_C,   0x8114)
                CHECK_SDO_1(PWM_Output_Min,       0x8115)
                CHECK_SDO_1(PWM_Output_Max,       0x8116)
                CHECK_SDO_1(Current_Loop_P,       0x8117)
                CHECK_SDO_1(Current_Loop_I,       0x8118)
                CHECK_SDO_1(Current_Loop_D,       0x8119)
                CHECK_SDO_1(Current_Loop_C,       0x811A)
                CHECK_SDO_1(Temp_Alarm_Point,     0x811B)
            }
            
            /* ===================================================================
               处理轴 2 (Slave 2)
               =================================================================== */
            else if (s_current_axis == 1) {
                // 1. 拦截保存参数功能 (0x8010)
                if (Modbus_Config_Slave20x8010.Save_Parameters != s_last_save_param[1]) {
                    s_last_save_param[1] = Modbus_Config_Slave20x8010.Save_Parameters;
                    if (s_last_save_param[1] == 0xFFFF) {
                        s_sdo_write_reg = 0x81FF;
                        s_sdo_write_val = 0xFFFF;
                        s_pending_write = 3;
                        goto SEND_PACKET;
                    }
                }
                
                // 2. 检查实时 PDO
                if (RxPDO_Control_Slave20x7010.Control_Command != s_last_control_cmd[1]) {
                    s_pending_write = 1;
                    s_last_control_cmd[1] = RxPDO_Control_Slave20x7010.Control_Command;
                    uint16_t combined_8106 = ((SDO_Config_RW_Slave20x2010.Work_Mode & 0xFF) << 8) | (s_last_control_cmd[1] & 0xFF);
                    uint16_t tx_len = Modbus_BuildWritePacket(tx_buf, slave_id, 0x8106, combined_8106);
                    RS485_SendData(tx_buf, tx_len);
                    s_modbus_poll_state = 1;
                    break;
                }
                if (RxPDO_Control_Slave20x7010.Target_Speed_RPM != s_last_target_speed[1]) {
                    s_pending_write = 2;
                    s_last_target_speed[1] = RxPDO_Control_Slave20x7010.Target_Speed_RPM;
                    uint16_t tx_len = Modbus_BuildWritePacket(tx_buf, slave_id, 0x8110, s_last_target_speed[1]);
                    RS485_SendData(tx_buf, tx_len);
                    s_modbus_poll_state = 1;
                    break;
                }
                
                // 3. 扫描特殊拼装的 SDO
                if (SDO_Config_RW_Slave20x2010.Work_Mode != s_last_sdo_2.Work_Mode) {
                    s_sdo_write_reg = 0x8106;
                    s_sdo_write_val = ((SDO_Config_RW_Slave20x2010.Work_Mode & 0xFF) << 8) | (RxPDO_Control_Slave20x7010.Control_Command & 0xFF);
                    s_last_sdo_2.Work_Mode = SDO_Config_RW_Slave20x2010.Work_Mode;
                    s_pending_write = 3;
                    goto SEND_PACKET;
                }
                if (SDO_Config_RW_Slave20x2010.Modbus_Baudrate != s_last_sdo_2.Modbus_Baudrate || 
                    SDO_Config_RW_Slave20x2010.Motor_Pole_Pairs != s_last_sdo_2.Motor_Pole_Pairs) {
                    s_sdo_write_reg = 0x8107;
                    s_sdo_write_val = ((SDO_Config_RW_Slave20x2010.Modbus_Baudrate & 0xFF) << 8) | (SDO_Config_RW_Slave20x2010.Motor_Pole_Pairs & 0xFF);
                    s_last_sdo_2.Modbus_Baudrate = SDO_Config_RW_Slave20x2010.Modbus_Baudrate;
                    s_last_sdo_2.Motor_Pole_Pairs = SDO_Config_RW_Slave20x2010.Motor_Pole_Pairs;
                    s_pending_write = 3;
                    goto SEND_PACKET;
                }
                if (SDO_Config_RW_Slave20x2010.Deceleration_Time != s_last_sdo_2.Deceleration_Time || 
                    SDO_Config_RW_Slave20x2010.Acceleration_Time != s_last_sdo_2.Acceleration_Time) {
                    s_sdo_write_reg = 0x810B;
                    s_sdo_write_val = ((SDO_Config_RW_Slave20x2010.Deceleration_Time & 0xFF) << 8) | (SDO_Config_RW_Slave20x2010.Acceleration_Time & 0xFF);
                    s_last_sdo_2.Deceleration_Time = SDO_Config_RW_Slave20x2010.Deceleration_Time;
                    s_last_sdo_2.Acceleration_Time = SDO_Config_RW_Slave20x2010.Acceleration_Time;
                    s_pending_write = 3;
                    goto SEND_PACKET;
                }

                // 4. 扫描独立 SDO
                CHECK_SDO_2(Drive_Station_Addr,   0x8102)
                CHECK_SDO_2(Comm_Address_High,    0x8103)
                CHECK_SDO_2(CAN_Comm_Freq,        0x8104)
                CHECK_SDO_2(CAN_Heartbeat_Time,   0x8105)
                CHECK_SDO_2(Start_Torque,         0x8109)
                CHECK_SDO_2(Sensorless_Start_Spd, 0x810A)
                CHECK_SDO_2(Current_Protect,      0x810C)
                CHECK_SDO_2(Brake_Torque,         0x810D)
                CHECK_SDO_2(Brake_Lock_Torque,    0x8129) 
                CHECK_SDO_2(High_Voltage_Alarm,   0x810E)
                CHECK_SDO_2(Low_Voltage_Alarm,    0x810F)
                CHECK_SDO_2(Speed_Loop_P,         0x8111)
                CHECK_SDO_2(Speed_Loop_I,         0x8112)
                CHECK_SDO_2(Speed_Loop_D,         0x8113)
                CHECK_SDO_2(Over_Limit_Ratio_C,   0x8114)
                CHECK_SDO_2(PWM_Output_Min,       0x8115)
                CHECK_SDO_2(PWM_Output_Max,       0x8116)
                CHECK_SDO_2(Current_Loop_P,       0x8117)
                CHECK_SDO_2(Current_Loop_I,       0x8118)
                CHECK_SDO_2(Current_Loop_D,       0x8119)
                CHECK_SDO_2(Current_Loop_C,       0x811A)
                CHECK_SDO_2(Temp_Alarm_Point,     0x811B)
            }

SEND_PACKET:
            if (s_pending_write == 3) {
                // 执行 SDO 单字写入指令
                uint16_t tx_len = Modbus_BuildWritePacket(tx_buf, slave_id, s_sdo_write_reg, s_sdo_write_val);
                RS485_SendData(tx_buf, tx_len);
            }
            else {
                // 如果没有新指令下发，就去读当前轴的实时状态
                s_pending_write = 0;
                uint16_t tx_len = Modbus_BuildReadPacket(tx_buf, slave_id, 0x8200, 16);
                RS485_SendData(tx_buf, tx_len);
            }
            
            s_modbus_poll_state = 1; 
            break;
            
        case 1: /* 状态 1：等待接收并解析，随后切换下一个轴 */
            rx_len = RS485_ReadData(rx_buf); 
            
            if (rx_len > 0) {
                if (rx_len >= 5 && Modbus_CRC16(rx_buf, rx_len) == 0) {
                    // 读取状态返回包处理
                    if (rx_buf[1] == MODBUS_FC_READ_HOLDING_REG && s_pending_write == 0 && rx_len == 37) {
                        
                        if (s_current_axis == 0) {
                            TxPDO_Status_Slave10x6000.Motor_Actual_Speed = (rx_buf[13] << 24) | (rx_buf[14] << 16) | (rx_buf[15] << 8) | rx_buf[16];
                            TxPDO_Status_Slave10x6000.Actual_Temp = (rx_buf[21] << 8) | rx_buf[22];
                            TxPDO_Status_Slave10x6000.Bus_Voltage = (rx_buf[25] << 8) | rx_buf[26];
                            TxPDO_Status_Slave10x6000.Actual_Current = (rx_buf[31] << 8) | rx_buf[32];
                            TxPDO_Status_Slave10x6000.Motor_Alarm_Code = (rx_buf[33] << 8) | rx_buf[34];
                        } 
                        else if (s_current_axis == 1) {
                            TxPDO_Status_Slave20x6010.Motor_Actual_Speed = (rx_buf[13] << 24) | (rx_buf[14] << 16) | (rx_buf[15] << 8) | rx_buf[16];
                            TxPDO_Status_Slave20x6010.Actual_Temp = (rx_buf[21] << 8) | rx_buf[22];
                            TxPDO_Status_Slave20x6010.Bus_Voltage = (rx_buf[25] << 8) | rx_buf[26];
                            TxPDO_Status_Slave20x6010.Actual_Current = (rx_buf[31] << 8) | rx_buf[32];
                            TxPDO_Status_Slave20x6010.Motor_Alarm_Code = (rx_buf[33] << 8) | rx_buf[34];
                        }
                    }
                }
                
                // 收到响应后切换下一个轴
                if (s_pending_write == 0) {
                    s_current_axis++;
                    if (s_current_axis >= AXIS_COUNT) s_current_axis = 0;
                }
                
                s_modbus_poll_state = 0; 
            } 
            else {
                s_timeout_cnt++;
                if (s_timeout_cnt > 20) {  
                    // 超时强制切换到下一个轴
                    if (s_pending_write == 0) {
                        s_current_axis++;
                        if (s_current_axis >= AXIS_COUNT) s_current_axis = 0;
                    }
                    s_modbus_poll_state = 0; 
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