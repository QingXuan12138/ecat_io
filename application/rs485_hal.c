#include "rs485_hal.h"
#include "hpm_clock_drv.h"
#include "hpm_interrupt.h"
#include <string.h>
#include "board.h"

/* =========================================================================
   全局流式缓冲区 (Ring Buffer 思路简化版)
   ========================================================================= */
static uint8_t  sg_rs485_rx_buf[RS485_RX_BUF_SIZE];
static volatile uint16_t sg_rs485_rx_len = 0; // 当前缓冲区的有效数据长度

/* 内部函数：控制 485 芯片方向为发送 (TX) */
static void RS485_SetMode_TX(void)
{
    gpio_write_pin(RS485_CTRL_GPIO_CTRL, RS485_CTRL_GPIO_INDEX, RS485_CTRL_GPIO_PIN, 1);
}

/* 内部函数：控制 485 芯片方向为接收 (RX) */
static void RS485_SetMode_RX(void)
{
    gpio_write_pin(RS485_CTRL_GPIO_CTRL, RS485_CTRL_GPIO_INDEX, RS485_CTRL_GPIO_PIN, 0);
}

/* 初始化函数 */
void RS485_Init(uint32_t baudrate)
{
    board_init_uart(RS485_UART); 

    /* 配置 485 方向控制引脚 (PA22) 为输出并默认拉低 (接收) */
    HPM_IOC->PAD[IOC_PAD_PA22].FUNC_CTL = IOC_PA22_FUNC_CTL_GPIO_A_22; 
    gpio_set_pin_output(RS485_CTRL_GPIO_CTRL, RS485_CTRL_GPIO_INDEX, RS485_CTRL_GPIO_PIN); 
    RS485_SetMode_RX(); 

    uint32_t freq = clock_get_frequency(RS485_UART_CLK_NAME);

    uart_config_t config;
    uart_default_config(RS485_UART, &config);
    config.baudrate = baudrate;
    config.src_freq_in_hz = freq; 
    config.fifo_enable = true;
    
    // 【优化点】：设置触发接收中断的 FIFO 阈值。这里设置为有数据就触发，保证实时性
    config.rx_fifo_level = uart_rx_fifo_trg_not_empty; 
    
    uart_init(RS485_UART, &config);

    // 【优化点】：只使能接收数据就绪中断，不需要管空闲中断了，因为上层状态机会负责判断报文完整性
    uart_enable_irq(RS485_UART, uart_intr_rx_data_avail_or_timeout); 
    intc_m_enable_irq_with_priority(RS485_UART_IRQ, 2); 
}

/* 动态修改波特率 */
void RS485_SetBaudrate(uint32_t baudrate)
{
    uart_set_baudrate(RS485_UART, baudrate, clock_get_frequency(RS485_UART_CLK_NAME));
}

/* 阻塞式发送数据 (485 核心逻辑) */
void RS485_SendData(uint8_t *data, uint16_t len)
{
    if (len == 0 || data == NULL) return;

    /* 1. 发送前，关中断，清空底层缓冲区和硬件 FIFO */
    intc_m_disable_irq(RS485_UART_IRQ);
    sg_rs485_rx_len = 0; // 丢弃上一轮没处理完的脏数据
    uart_reset_rx_fifo(RS485_UART); 
    intc_m_enable_irq(RS485_UART_IRQ);

    /* 2. 切换为发送模式 */
    RS485_SetMode_TX();
    board_delay_us(10); // 给 485 芯片一点反应时间

    /* 3. 压入数据 */
    for (uint16_t i = 0; i < len; i++) {
        uart_write_byte(RS485_UART, data[i]);
    }

    /* 4. 等待 UART 硬件移位寄存器彻底空了，才能切模式！ */
    uart_flush(RS485_UART);
    board_delay_us(50); // 确保最后一个停止位完全走完 485 总线

    /* 5. 切换回接收模式 */
    RS485_SetMode_RX();
    
}

/* 读取缓存数据 (有多少读多少，交由上层去拼装) */
uint16_t RS485_ReadData(uint8_t *out_buf)
{
    uint16_t len = 0;
    
    intc_m_disable_irq(RS485_UART_IRQ);
    
    // 只要有数据，就全部搬运给上层
    if (sg_rs485_rx_len > 0) {
        memcpy(out_buf, sg_rs485_rx_buf, sg_rs485_rx_len);
        len = sg_rs485_rx_len;
        
        // 读完后清空底层长度计数
        sg_rs485_rx_len = 0; 
    }
    
    intc_m_enable_irq(RS485_UART_IRQ);
    return len;
}

/* UART4 中断服务函数 */
void isr_uart4(void)
{
    uint8_t c;
    
    // 【优化点】：只要有数据准备好，或者触发了硬件超时，都把数据读出来
    if (uart_check_status(RS485_UART, uart_stat_data_ready) || 
        (uart_get_irq_id(RS485_UART) == uart_intr_id_rx_timeout)) 
    {
        while (uart_check_status(RS485_UART, uart_stat_data_ready)) {
            c = uart_read_byte(RS485_UART);
            // 存入软缓冲，防止溢出
            if (sg_rs485_rx_len < RS485_RX_BUF_SIZE) {
                sg_rs485_rx_buf[sg_rs485_rx_len++] = c;
            }
        }
    }
}
SDK_DECLARE_EXT_ISR_M(RS485_UART_IRQ, isr_uart4)