#include "rs485_hal.h"
#include "hpm_clock_drv.h"
#include "hpm_interrupt.h"
#include <string.h>
#include "board.h"       

/* 本地接收缓存 */
static uint8_t  sg_rs485_rx_buf[RS485_RX_BUF_SIZE];
static volatile uint16_t sg_rs485_rx_len = 0;
static volatile uint8_t  sg_rx_frame_ready = 0; // 帧接收完毕标志

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
    uart_init(RS485_UART, &config);

    /* 使能接收中断和空闲超时中断 */
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

    /* 1. 发送前，关中断，重置接收标志，清空硬件 FIFO */
    intc_m_disable_irq(RS485_UART_IRQ);
    sg_rs485_rx_len = 0;
    sg_rx_frame_ready = 0;
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
    
    /* 6. 切回接收后，再次清空 RX FIFO，彻底干掉自发自收残留！ */
    uart_reset_rx_fifo(RS485_UART);
}

/* 读取缓存数据 (必须等一整帧收完才给数据) */
uint16_t RS485_ReadData(uint8_t *out_buf)
{
    uint16_t len = 0;
    
    intc_m_disable_irq(RS485_UART_IRQ);
    
    if (sg_rx_frame_ready && sg_rs485_rx_len > 0) {
        memcpy(out_buf, sg_rs485_rx_buf, sg_rs485_rx_len);
        len = sg_rs485_rx_len;
        
        sg_rs485_rx_len = 0; 
        sg_rx_frame_ready = 0; 
    }
    
    intc_m_enable_irq(RS485_UART_IRQ);
    return len;
}

/* UART4 中断服务函数 */
void isr_uart4(void)
{
    uint8_t c;
    uint32_t irq_id = uart_get_irq_id(RS485_UART);
    
    if (uart_check_status(RS485_UART, uart_stat_data_ready) || 
        (irq_id == uart_intr_id_rx_timeout)) 
    {
        while (uart_check_status(RS485_UART, uart_stat_data_ready)) {
            c = uart_read_byte(RS485_UART);
            if (sg_rs485_rx_len < RS485_RX_BUF_SIZE) {
                sg_rs485_rx_buf[sg_rs485_rx_len++] = c;
            }
        }
        
        if (irq_id == uart_intr_id_rx_timeout) {
            sg_rx_frame_ready = 1;
        }
    }
}
SDK_DECLARE_EXT_ISR_M(RS485_UART_IRQ, isr_uart4)