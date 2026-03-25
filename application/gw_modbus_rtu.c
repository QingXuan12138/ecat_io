#include "gw_modbus_rtu.h"

// 标准 Modbus CRC16 计算函数
uint16_t Modbus_CRC16(uint8_t *buf, uint16_t len) {
    uint16_t crc = 0xFFFF;
    for (int pos = 0; pos < len; pos++) {
        crc ^= (uint16_t)buf[pos];
        for (int i = 8; i != 0; i--) {
            if ((crc & 0x0001) != 0) {
                crc >>= 1;
                crc ^= 0xA001;
            } else {
                crc >>= 1;
            }
        }
    }
    return crc;
}

uint16_t Modbus_BuildReadPacket(uint8_t *buf, uint8_t slave_id, uint16_t start_addr, uint16_t reg_count) {
    buf[0] = slave_id;
    buf[1] = MODBUS_FC_READ_HOLDING_REG;
    buf[2] = (start_addr >> 8) & 0xFF;
    buf[3] = start_addr & 0xFF;
    buf[4] = (reg_count >> 8) & 0xFF;
    buf[5] = reg_count & 0xFF;
    uint16_t crc = Modbus_CRC16(buf, 6);
    buf[6] = crc & 0xFF;        // CRC 低位在前
    buf[7] = (crc >> 8) & 0xFF; // CRC 高位在后
    return 8; // 总长度
}

uint16_t Modbus_BuildWritePacket(uint8_t *buf, uint8_t slave_id, uint16_t reg_addr, uint16_t value) {
    buf[0] = slave_id;
    buf[1] = MODBUS_FC_WRITE_SINGLE_REG;
    buf[2] = (reg_addr >> 8) & 0xFF;
    buf[3] = reg_addr & 0xFF;
    buf[4] = (value >> 8) & 0xFF;
    buf[5] = value & 0xFF;
    uint16_t crc = Modbus_CRC16(buf, 6);
    buf[6] = crc & 0xFF;
    buf[7] = (crc >> 8) & 0xFF;
    return 8;
}