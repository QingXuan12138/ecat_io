#ifndef RS485_HAL_H
#define RS485_HAL_H

#include "hpm_common.h"
#include "hpm_uart_drv.h"
#include "hpm_gpio_drv.h"
#include "hpm_soc.h"

/* ---------------- 硬件引脚与资源宏定义 ---------------- */
/* 【修改】换到了 PA0/PA1，使用 UART0 */
#define RS485_UART                  HPM_UART0
#define RS485_UART_CLK_NAME         clock_uart0
#define RS485_UART_IRQ              IRQn_UART0

/* 485 方向控制引脚，表格标注是 PA22，保持不变 */
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