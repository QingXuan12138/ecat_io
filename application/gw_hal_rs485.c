#include "gw_hal_rs485.h"
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

void RS485_SendData(uint8_t *data, uint16_t len)
{
    if (len == 0 || data == NULL) return;

    /* 1. 发送前，关中断，重置接收标志，清空硬件 RX FIFO */
    intc_m_disable_irq(RS485_UART_IRQ);
    sg_rs485_rx_len = 0;
    uart_reset_rx_fifo(RS485_UART); 
    intc_m_enable_irq(RS485_UART_IRQ);

    /* 2. 切换为发送模式 */
    RS485_SetMode_TX();
    board_delay_us(5); // 留 5us 让芯片引脚电平稳住

    /* 3. 阻塞压入数据 */
    for (uint16_t i = 0; i < len; i++) {
        while (!uart_check_status(RS485_UART, uart_stat_tx_slot_avail)) {}
        uart_write_byte(RS485_UART, data[i]);
    }

    /* 4. 死等硬件移位寄存器彻底为空！ */
    while (!uart_check_status(RS485_UART, uart_stat_transmitter_empty)) {}
    
    // 确保最后一个停止位完全走完总线电平
    board_delay_us(100); 

    /* 5. 切换回接收模式 */
    RS485_SetMode_RX();
    
    /* ⚠️ 极其关键：切换回 RX 后，绝对不能再调 reset_rx_fifo！
       否则会误杀某些极速回复的从机的第一字节！ */
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

/* UART0 中断服务函数 (从原来的 uart4 改成 0) */
void isr_uart0(void)
{
    uint8_t c;
    
    if (uart_check_status(RS485_UART, uart_stat_data_ready) || 
        (uart_get_irq_id(RS485_UART) == uart_intr_id_rx_timeout)) 
    {
        while (uart_check_status(RS485_UART, uart_stat_data_ready)) {
            c = uart_read_byte(RS485_UART);
            if (sg_rs485_rx_len < RS485_RX_BUF_SIZE) {
                sg_rs485_rx_buf[sg_rs485_rx_len++] = c;
            }
        }
    }
}
/* 这里的注册宏极其关键，它会自动和上面的 IRQn_UART0 绑定 */
SDK_DECLARE_EXT_ISR_M(RS485_UART_IRQ, isr_uart0)