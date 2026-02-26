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

// 添加下面这一行
#include <stdio.h>

#include "rs485_hal.h"


UINT32 APPL_GetDipSw(void);
void APPL_SetLed(UINT32 value);
/*--------------------------------------------------------------------------------------
------
------    local types and defines
------
--------------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------------------
------
------    local variables and constants
------
-----------------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------------------
------
------    application specific functions
------
-----------------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------------------
------
------    generic functions
------
-----------------------------------------------------------------------------------------*/


/**
 \brief    The function is called when an error state was acknowledged by the master
*/

void    APPL_AckErrorInd(UINT16 stateTrans)
{

}


/**
 \return    AL Status Code (see ecatslv.h ALSTATUSCODE_....)

 \brief    The function is called in the state transition from INIT to PREOP when
             all general settings were checked to start the mailbox handler. This function
             informs the application about the state transition, the application can refuse
             the state transition when returning an AL Status error code.
            The return code NOERROR_INWORK can be used, if the application cannot confirm
            the state transition immediately, in that case this function will be called cyclically
            until a value unequal NOERROR_INWORK is returned

*/

UINT16 APPL_StartMailboxHandler(void)
{
    return ALSTATUSCODE_NOERROR;
}

/**
 \return     0, NOERROR_INWORK

 \brief    The function is called in the state transition from PREEOP to INIT
             to stop the mailbox handler. This functions informs the application
             about the state transition, the application cannot refuse
             the state transition.

*/

UINT16 APPL_StopMailboxHandler(void)
{
    return ALSTATUSCODE_NOERROR;
}

/**
 \param    pIntMask    pointer to the AL Event Mask which will be written to the AL event Mask
                       register (0x204) when this function is succeeded. The event mask can be adapted
                       in this function
 \return    AL Status Code (see ecatslv.h ALSTATUSCODE_....)

 \brief    The function is called in the state transition from PREOP to SAFEOP when
           all general settings were checked to start the input handler. This function
           informs the application about the state transition, the application can refuse
           the state transition when returning an AL Status error code.
           The return code NOERROR_INWORK can be used, if the application cannot confirm
           the state transition immediately, in that case the application need to be complete
           the transition by calling ECAT_StateChange.
*/

UINT16 APPL_StartInputHandler(UINT16 *pIntMask)
{
    return ALSTATUSCODE_NOERROR;
}

/**
 \return     0, NOERROR_INWORK

 \brief    The function is called in the state transition from SAFEOP to PREEOP
             to stop the input handler. This functions informs the application
             about the state transition, the application cannot refuse
             the state transition.

*/

UINT16 APPL_StopInputHandler(void)
{
    return ALSTATUSCODE_NOERROR;
}

/**
 \return    AL Status Code (see ecatslv.h ALSTATUSCODE_....)

 \brief    The function is called in the state transition from SAFEOP to OP when
             all general settings were checked to start the output handler. This function
             informs the application about the state transition, the application can refuse
             the state transition when returning an AL Status error code.
           The return code NOERROR_INWORK can be used, if the application cannot confirm
           the state transition immediately, in that case the application need to be complete
           the transition by calling ECAT_StateChange.
*/

UINT16 APPL_StartOutputHandler(void)
{
    return ALSTATUSCODE_NOERROR;
}

/**
 \return     0, NOERROR_INWORK

 \brief    The function is called in the state transition from OP to SAFEOP
             to stop the output handler. This functions informs the application
             about the state transition, the application cannot refuse
             the state transition.

*/

UINT16 APPL_StopOutputHandler(void)
{
    return ALSTATUSCODE_NOERROR;
}

/**
\return     0(ALSTATUSCODE_NOERROR), NOERROR_INWORK
\param      pInputSize  pointer to save the input process data length
\param      pOutputSize  pointer to save the output process data length

\brief    This function calculates the process data sizes from the actual SM-PDO-Assign
            and PDO mapping
*/

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

#else
#if _WIN32
    #pragma message ("Warning: Define 'InputSize' and 'OutputSize'.")
#else
    #warning "Define 'InputSize' and 'OutputSize'."
#endif
#endif

    *pInputSize = InputSize;
    *pOutputSize = OutputSize;
    return result;
}

/**
\param      pData  pointer to input process data

\brief      This function will copies the inputs from the local memory to the ESC memory
            to the hardware
*/
void APPL_InputMapping(UINT16 *pData)
{
    MEMCPY(pData, &NumOfEntries0x6000.InputCounter, SIZEOF(NumOfEntries0x6000.InputCounter));
}

/**
\param      pData  pointer to output process data

\brief    This function will copies the outputs from the ESC memory to the local memory
            to the hardware
*/
void APPL_OutputMapping(UINT16 *pData)
{
    /* 把 0x7010 改成 0x7000 20260226 */
    MEMCPY(&NumOfEntries0x7000.OutputCounter, pData, SIZEOF(NumOfEntries0x7000.OutputCounter));
}

/**
\brief    This function will called from the synchronisation ISR
            or from the mainloop if no synchronisation is supported
*/
/*
void APPL_Application(void)
{
    InputCounter0x6000 = APPL_GetDipSw();
    APPL_SetLed((UINT32)OutputCounter0x7010);
}
*/
/* 定义静态变量用于记录旧值，防止串口刷屏 */
static UINT32 u32LastOutput = 0xFFFFFFFF;
static UINT32 u32LastInput = 0xFFFFFFFF;

void APPL_Application(void)
{
    /* ---------------------- 处理输入 (Input) ---------------------- */
    /* 1. 读取硬件IO状态 */
    UINT32 currentInput = APPL_GetDipSw();
    
    /* 2. 赋值给 EtherCAT 变量 */
    NumOfEntries0x6000.InputCounter = (UINT32)currentInput; 

    /* 3. 串口打印 (仅当数据变化时) */
    if (currentInput != u32LastInput)
    {
        u32LastInput = currentInput;
        // 打印从板子上读到的输入值，也就是即将发给主站的值
        printf(">> Input Changed (0x6000): 0x%X\r\n", NumOfEntries0x6000.InputCounter);
    }

    /* ---------------------- 处理输出 (Output) ---------------------- */
    /* 1. 获取主站发来的数据 */
  /* 把 0x7010 改成 0x7000 */
    UINT32 currentOutput = (UINT32)NumOfEntries0x7000.OutputCounter;

    /* 2. 串口打印 (仅当数据变化时) */
    // 这里就是我们要验证的核心：主站改数，串口立马吐出来
    if (currentOutput != u32LastOutput) 
    {
        u32LastOutput = currentOutput;
        printf("<< Output Changed (0x7010): 0x%X\r\n", currentOutput);
        
        /* 3. 执行硬件动作 (点灯) - 保留原有逻辑 */
        APPL_SetLed(currentOutput);
    }

    /* ---------------------- 3. 新增的 RS485 回环测试逻辑 ---------------------- */
    uint8_t temp_buf[256];
    // 读取底层的接收缓存
    uint16_t rx_len = RS485_ReadData(temp_buf); 
    
    if (rx_len > 0) {
        // 收到数据，打印并原封不动地发回去
        printf("RS485 Received %d bytes\r\n", rx_len);
        RS485_SendData(temp_buf, rx_len); 
    }
}

#if EXPLICIT_DEVICE_ID

/**
 \return    The Explicit Device ID of the EtherCAT slave

 \brief     Read the Explicit Device ID (from an external ID switch)
*/
UINT16 APPL_GetDeviceID(void)
{
    /* Explicit Device 5 is expected by Explicit Device ID conformance tests*/
    return 0x5;
}
#endif

void APPL_SetLed(UINT32 value)
{
    UINT8 led0 = ((value & 1) ?  BOARD_ECAT_OUT_ON_LEVEL : !BOARD_ECAT_OUT_ON_LEVEL);
    UINT8 led1 = ((value & 2) ?  BOARD_ECAT_OUT_ON_LEVEL : !BOARD_ECAT_OUT_ON_LEVEL);

    gpio_write_pin(BOARD_ECAT_OUT1_GPIO, BOARD_ECAT_OUT1_GPIO_PORT_INDEX, BOARD_ECAT_OUT1_GPIO_PIN_INDEX, led0);
    gpio_write_pin(BOARD_ECAT_OUT2_GPIO, BOARD_ECAT_OUT2_GPIO_PORT_INDEX, BOARD_ECAT_OUT2_GPIO_PIN_INDEX, led1);
}

UINT32 APPL_GetDipSw(void)
{
    UINT8 pin0_level = gpio_read_pin(BOARD_ECAT_IN1_GPIO, BOARD_ECAT_IN1_GPIO_PORT_INDEX, BOARD_ECAT_IN1_GPIO_PIN_INDEX);
    UINT8 pin1_level = gpio_read_pin(BOARD_ECAT_IN2_GPIO, BOARD_ECAT_IN2_GPIO_PORT_INDEX, BOARD_ECAT_IN2_GPIO_PIN_INDEX);

    UINT32 val = pin0_level << 0 | pin1_level << 1;

    return val;
}

#if USE_DEFAULT_MAIN

/**

 \brief    This is the main function

*/
#if _PIC24 && EL9800_HW
int main(void)
#elif _WIN32
int main(int argc, char *argv[])
#else
void main(void)
#endif
{
    /* initialize the Hardware and the EtherCAT Slave Controller */
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

