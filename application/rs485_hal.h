#ifndef RS485_HAL_H
#define RS485_HAL_H

#include "hpm_common.h"
#include "hpm_uart_drv.h"
#include "hpm_gpio_drv.h"
#include "hpm_soc.h"

/* ---------------- 硬件引脚与资源宏定义 ---------------- */
/* 根据数据手册：PC16 = UART4_TXD, PC17 = UART4_RXD */
#define RS485_UART                  HPM_UART4
#define RS485_UART_CLK_NAME         clock_uart4
#define RS485_UART_IRQ              IRQn_UART4

/* 485 方向控制引脚 PA22 */
#define RS485_CTRL_GPIO_CTRL        HPM_GPIO0
#define RS485_CTRL_GPIO_INDEX       GPIO_DI_GPIOA
#define RS485_CTRL_GPIO_PIN         22

/* ---------------- 状态机与缓存宏定义 ---------------- */
#define RS485_RX_BUF_SIZE           256

/* ---------------- 外部接口函数 ---------------- */
void RS485_Init(uint32_t baudrate);
void RS485_SetBaudrate(uint32_t baudrate);
void RS485_SendData(uint8_t *data, uint16_t len);
uint16_t RS485_ReadData(uint8_t *out_buf);

#endif /* RS485_HAL_H */