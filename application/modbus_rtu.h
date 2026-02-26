#ifndef MODBUS_RTU_H
#define MODBUS_RTU_H

#include "hpm_common.h"

// Modbus 常用功能码
#define MODBUS_FC_READ_HOLDING_REG    0x03
#define MODBUS_FC_WRITE_SINGLE_REG    0x06

// 对应你 0x8000 字典里的配置结构（示例）
typedef struct {
    uint8_t  slave_id;
    uint32_t baudrate;
    uint8_t  enabled;
} gateway_config_t;

/* 计算 CRC16 校验码 */
uint16_t Modbus_CRC16(uint8_t *buf, uint16_t len);

/* 构造 03 功能码报文 (读寄存器) */
uint16_t Modbus_BuildReadPacket(uint8_t *buf, uint8_t slave_id, uint16_t start_addr, uint16_t reg_count);

/* 构造 06 功能码报文 (写单个寄存器) */
uint16_t Modbus_BuildWritePacket(uint8_t *buf, uint8_t slave_id, uint16_t reg_addr, uint16_t value);

#endif