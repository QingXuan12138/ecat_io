#include "rs485_hal.h"
#include "hpm_clock_drv.h"
#include "hpm_interrupt.h"
#include <string.h>

/* 本地接收缓存 */
static uint8_t  sg_rs485_rx_buf[RS485_RX_BUF_SIZE];
static uint16_t sg_rs485_rx_len = 0;

/* 内部函数：控制 485 芯片方向为发送 (TX) */
static void RS485_SetMode_TX(void)
{
    // 拉高 PA22 进入发送模式
    gpio_write_pin(RS485_CTRL_GPIO_CTRL, RS485_CTRL_GPIO_INDEX, RS485_CTRL_GPIO_PIN, 1);
}

/* 内部函数：控制 485 芯片方向为接收 (RX) */
static void RS485_SetMode_RX(void)
{
    // 拉低 PA22 进入接收模式
    gpio_write_pin(RS485_CTRL_GPIO_CTRL, RS485_CTRL_GPIO_INDEX, RS485_CTRL_GPIO_PIN, 0);
}

/* 初始化函数 */
void RS485_Init(uint32_t baudrate)
{
    /* 1. 配置 485 控制引脚 (PA22) 为输出 (ALT0: GPIO) */
    HPM_IOC->PAD[IOC_PAD_PA22].FUNC_CTL = IOC_PA22_FUNC_CTL_GPIO_A_22; 
    gpio_set_pin_output(RS485_CTRL_GPIO_CTRL, RS485_CTRL_GPIO_INDEX, RS485_CTRL_GPIO_PIN); // 修改为 SDK 新版 API
    RS485_SetMode_RX(); // 默认处于接收状态，防止总线冲突

    /* 2. 配置 UART 引脚复用 (PC16=TX, PC17=RX, 均为 ALT2) */
    HPM_IOC->PAD[IOC_PAD_PC16].FUNC_CTL = IOC_PC16_FUNC_CTL_UART4_TXD; 
    HPM_IOC->PAD[IOC_PAD_PC17].FUNC_CTL = IOC_PC17_FUNC_CTL_UART4_RXD;

    /* 3. 配置 UART4 时钟源 */
    clock_set_source_divider(RS485_UART_CLK_NAME, clk_src_osc24m, 1U); 
    clock_add_to_group(RS485_UART_CLK_NAME, 0);

    /* 4. 初始化 UART4 参数 */
    uart_config_t config;
    uart_default_config(RS485_UART, &config);
    config.baudrate = baudrate;
    config.fifo_enable = true;
    uart_init(RS485_UART, &config);

    /* 5. 使能接收中断 */
    uart_enable_irq(RS485_UART, uart_intr_rx_data_avail_or_timeout); // 修改为 SDK 新版 API
    intc_m_enable_irq_with_priority(RS485_UART_IRQ, 2); 
}

/* 动态修改波特率 */
void RS485_SetBaudrate(uint32_t baudrate)
{
    uart_set_baudrate(RS485_UART, baudrate, clock_get_frequency(RS485_UART_CLK_NAME));
}

/* 阻塞式发送数据 (485) */
void RS485_SendData(uint8_t *data, uint16_t len)
{
    if (len == 0 || data == NULL) return;

    /* 1. 切换为发送模式 */
    RS485_SetMode_TX();

    /* 2. 发送数据 */
    for (uint16_t i = 0; i < len; i++) {
        uart_write_byte(RS485_UART, data[i]);
    }

    /* 3. 等待 UART 移位寄存器完全为空 */
    uart_flush(RS485_UART);

    /* 4. 切换回接收模式 */
    RS485_SetMode_RX();
}

/* 读取缓存数据 */
uint16_t RS485_ReadData(uint8_t *out_buf)
{
    uint16_t len = 0;
    
    intc_m_disable_irq(RS485_UART_IRQ);
    
    if (sg_rs485_rx_len > 0) {
        memcpy(out_buf, sg_rs485_rx_buf, sg_rs485_rx_len);
        len = sg_rs485_rx_len;
        sg_rs485_rx_len = 0; 
    }
    
    intc_m_enable_irq(RS485_UART_IRQ);
    return len;
}

/* UART4 中断服务函数 */
void isr_uart4(void)
{
    uint8_t c;
    
    /* 检查是否是: 接收数据就绪 或 接收超时 */
    if (uart_check_status(RS485_UART, uart_stat_data_ready) || 
        (uart_get_irq_id(RS485_UART) == uart_intr_id_rx_timeout)) 
    {
        /* 把 FIFO 里的数据全部读出来 */
        while (uart_check_status(RS485_UART, uart_stat_data_ready)) {
            c = uart_read_byte(RS485_UART);
            if (sg_rs485_rx_len < RS485_RX_BUF_SIZE) {
                sg_rs485_rx_buf[sg_rs485_rx_len++] = c;
            } else {
                sg_rs485_rx_len = 0; 
            }
        }
    }
}
SDK_DECLARE_EXT_ISR_M(RS485_UART_IRQ, isr_uart4)