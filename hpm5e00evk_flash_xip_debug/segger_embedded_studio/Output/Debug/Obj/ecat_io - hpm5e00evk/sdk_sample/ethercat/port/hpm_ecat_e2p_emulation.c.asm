	.file	"hpm_ecat_e2p_emulation.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\port\\hpm_ecat_e2p_emulation.c"
	.section	.fast,"ax",@progbits
	.align	1
	.type	rom_xpi_nor_erase_sector, @function
rom_xpi_nor_erase_sector:
.LFB9:
	.file 2 "../../../../../soc/HPM5E00/HPM5E31/hpm_romapi.h"
	.loc 2 265 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	mv	a5,a1
	sw	a2,4(sp)
	sw	a3,0(sp)
	sb	a5,11(sp)
	.loc 2 266 43
	li	a5,537001984
	addi	a5,a5,-256
	lw	a5,20(a5)
	.loc 2 266 62
	lw	a5,32(a5)
	.loc 2 266 25
	lbu	a4,11(sp)
	lw	a3,0(sp)
	lw	a2,4(sp)
	mv	a1,a4
	lw	a0,12(sp)
	jalr	a5
.LVL0:
	sw	a0,28(sp)
	.loc 2 267 5
 #APP
# 267 "../../../../../soc/HPM5E00/HPM5E31/hpm_romapi.h" 1
	fence.i
# 0 "" 2
	.loc 2 268 12
 #NO_APP
	lw	a5,28(sp)
	.loc 2 269 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	rom_xpi_nor_erase_sector, .-rom_xpi_nor_erase_sector
	.globl	ecat_e2p_emulation
	.section	.bss.ecat_e2p_emulation,"aw",@nobits
	.align	2
	.type	ecat_e2p_emulation, @object
	.size	ecat_e2p_emulation, 320
ecat_e2p_emulation:
	.zero	320
	.section	.text.flash_read,"ax",@progbits
	.align	1
	.type	flash_read, @function
flash_read:
.LFB234:
	.loc 1 18 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	sw	a1,8(sp)
	sw	a2,4(sp)
	.loc 1 19 12
	lw	a3,4(sp)
	lw	a2,8(sp)
	lw	a1,12(sp)
	lui	a5,%hi(ecat_e2p_emulation+28)
	addi	a0,a5,%lo(ecat_e2p_emulation+28)
	call	nor_flash_read
	mv	a5,a0
	.loc 1 20 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE234:
	.size	flash_read, .-flash_read
	.section	.text.flash_write,"ax",@progbits
	.align	1
	.type	flash_write, @function
flash_write:
.LFB235:
	.loc 1 23 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	sw	a1,8(sp)
	sw	a2,4(sp)
	.loc 1 24 12
	lw	a3,4(sp)
	lw	a2,8(sp)
	lw	a1,12(sp)
	lui	a5,%hi(ecat_e2p_emulation+28)
	addi	a0,a5,%lo(ecat_e2p_emulation+28)
	call	nor_flash_write
	mv	a5,a0
	.loc 1 25 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE235:
	.size	flash_write, .-flash_write
	.section	.text.flash_erase,"ax",@progbits
	.align	1
	.type	flash_erase, @function
flash_erase:
.LFB236:
	.loc 1 28 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	sw	a1,8(sp)
	.loc 1 29 5
	lw	a2,8(sp)
	lw	a1,12(sp)
	lui	a5,%hi(ecat_e2p_emulation+28)
	addi	a0,a5,%lo(ecat_e2p_emulation+28)
	call	nor_flash_erase
	.loc 1 30 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE236:
	.size	flash_erase, .-flash_erase
	.section	.text.flash_erase_sector,"ax",@progbits
	.align	1
	.globl	flash_erase_sector
	.type	flash_erase_sector, @function
flash_erase_sector:
.LFB237:
	.loc 1 33 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	.loc 1 34 25
	lui	a5,%hi(ecat_e2p_emulation+28)
	addi	a5,a5,%lo(ecat_e2p_emulation+28)
	sw	a5,28(sp)
	.loc 1 35 21
	lw	a5,28(sp)
	lw	a5,4(a5)
	.loc 1 35 66
	lw	a4,12(sp)
	bleu	a4,a5,.L10
	.loc 1 35 53 discriminator 1
	lw	a5,28(sp)
	lw	a5,4(a5)
	.loc 1 35 47 discriminator 1
	lw	a4,12(sp)
	sub	a5,a4,a5
	sw	a5,12(sp)
.L10:
	.loc 1 36 25
	lw	a5,28(sp)
	lw	a4,0(a5)
	.loc 1 36 88
	lw	a5,28(sp)
	addi	a5,a5,24
	.loc 1 36 25
	lw	a3,12(sp)
	mv	a2,a5
	li	a1,4
	mv	a0,a4
	call	rom_xpi_nor_erase_sector
	sw	a0,24(sp)
	.loc 1 38 12
	lw	a5,24(sp)
	.loc 1 39 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE237:
	.size	flash_erase_sector, .-flash_erase_sector
	.section	.text.ecat_flash_eeprom_check_configuration_area,"ax",@progbits
	.align	1
	.type	ecat_flash_eeprom_check_configuration_area, @function
ecat_flash_eeprom_check_configuration_area:
.LFB238:
	.loc 1 43 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LBB41:
	.loc 1 47 18
	sb	zero,31(sp)
	.loc 1 47 5
	j	.L13
.L16:
	.loc 1 49 16
	lbu	a3,31(sp)
	.loc 1 49 70
	lbu	a5,31(sp)
	.loc 1 49 58
	addi	a4,sp,8
	slli	a5,a5,1
	add	a5,a4,a5
	.loc 1 49 16
	mv	a2,a5
	li	a1,2
	mv	a0,a3
	call	e2p_read
	sw	a0,24(sp)
	.loc 1 50 12
	lw	a5,24(sp)
	beq	a5,zero,.L14
	.loc 1 51 20
	li	a5,1
	j	.L18
.L14:
	.loc 1 47 33 discriminator 2
	lbu	a5,31(sp)
	addi	a5,a5,1
	sb	a5,31(sp)
.L13:
	.loc 1 47 27 discriminator 1
	lbu	a4,31(sp)
	li	a5,7
	bleu	a4,a5,.L16
.LBE41:
	.loc 1 55 16
	addi	a5,sp,8
	li	a1,14
	mv	a0,a5
	call	ecat_calculate_eeprom_config_data_checksum
	mv	a5,a0
	sb	a5,30(sp)
	.loc 1 58 18
	lbu	a5,30(sp)
	zext.h	a4,a5
	.loc 1 58 32
	lhu	a5,22(sp)
	.loc 1 58 8
	beq	a4,a5,.L17
	.loc 1 59 16
	li	a5,2
	j	.L18
.L17:
	.loc 1 62 12
	li	a5,0
.L18:
	.loc 1 63 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE238:
	.size	ecat_flash_eeprom_check_configuration_area, .-ecat_flash_eeprom_check_configuration_area
	.section	.rodata
	.align	2
.LC0:
	.string	"No EEPROM content in PROGRAM.\n"
	.align	2
.LC1:
	.string	"Read Product Code in EEPROM failed.\n"
	.align	2
.LC2:
	.string	"Read Revision Number in EEPROM failed.\n"
	.align	2
.LC3:
	.string	"Init EEPROM content.\n"
	.align	2
.LC4:
	.string	"Init EEPROM content failed.\n"
	.align	2
.LC5:
	.string	"Init EEPROM content successful.\n"
	.align	2
.LC6:
	.string	"No need to init EEPROM content.\n"
	.section	.text.ecat_flash_eeprom_init,"ax",@progbits
	.align	1
	.globl	ecat_flash_eeprom_init
	.type	ecat_flash_eeprom_init, @function
ecat_flash_eeprom_init:
.LFB239:
	.loc 1 66 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	.cfi_offset 1, -4
	.loc 1 69 20
	li	a5,-1
	sh	a5,36(sp)
	.loc 1 70 44
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	li	a4,-218103808
	sw	a4,28(a5)
	.loc 1 71 45
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	li	a4,-2147483648
	sw	a4,32(a5)
	.loc 1 72 73
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	lw	a4,32(a5)
	.loc 1 72 84
	li	a5,524288
	add	a4,a4,a5
	.loc 1 72 42
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	sw	a4,0(a5)
	.loc 1 73 42
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	li	a4,4096
	sh	a4,8(a5)
	.loc 1 74 42
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	li	a4,16
	sw	a4,4(a5)
	.loc 1 75 39
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	li	a4,16384
	addi	a4,a4,1363
	sw	a4,12(a5)
	.loc 1 76 46
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	li	a4,-50790400
	addi	a4,a4,2
	sw	a4,40(a5)
	.loc 1 77 40
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	li	a4,6
	sw	a4,44(a5)
	.loc 1 78 40
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	li	a4,4096
	sw	a4,48(a5)
	.loc 1 79 42
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	lui	a4,%hi(flash_read)
	addi	a4,a4,%lo(flash_read)
	sw	a4,16(a5)
	.loc 1 80 43
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	lui	a4,%hi(flash_write)
	addi	a4,a4,%lo(flash_write)
	sw	a4,20(a5)
	.loc 1 81 43
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a5,a5,%lo(ecat_e2p_emulation)
	lui	a4,%hi(flash_erase)
	addi	a4,a4,%lo(flash_erase)
	sw	a4,24(a5)
	li	a5,8
	sw	a5,68(sp)
.LBB42:
.LBB43:
.LBB44:
	.file 3 "../../../../../arch/riscv/intc/hpm_interrupt.h"
	.loc 3 48 12
	sw	zero,24(sp)
	lw	a5,68(sp)
 #APP
# 48 "../../../../../arch/riscv/intc/hpm_interrupt.h" 1
	csrrc a5, 768, a5
# 0 "" 2
 #NO_APP
	sw	a5,24(sp)
	.loc 3 48 5
	lw	a5,24(sp)
.LBE44:
	.loc 3 48 12
	nop
.LBE43:
.LBE42:
	.loc 1 84 12
	lui	a5,%hi(ecat_e2p_emulation+28)
	addi	a0,a5,%lo(ecat_e2p_emulation+28)
	call	nor_flash_init
	sw	a0,92(sp)
	li	a5,8
	sw	a5,64(sp)
.LBB45:
.LBB46:
	.loc 3 37 5
	lw	a5,64(sp)
 #APP
# 37 "../../../../../arch/riscv/intc/hpm_interrupt.h" 1
	csrs 768, a5
# 0 "" 2
	.loc 3 38 1
 #NO_APP
	nop
.LBE46:
.LBE45:
	.loc 1 86 8
	lw	a5,92(sp)
	beq	a5,zero,.L21
	.loc 1 87 16
	li	a5,1
	j	.L47
.L21:
	li	a5,8
	sw	a5,56(sp)
.LBB47:
.LBB48:
.LBB49:
	.loc 3 48 12
	sw	zero,28(sp)
	lw	a5,56(sp)
 #APP
# 48 "../../../../../arch/riscv/intc/hpm_interrupt.h" 1
	csrrc a5, 768, a5
# 0 "" 2
 #NO_APP
	sw	a5,28(sp)
	.loc 3 48 5
	lw	a5,28(sp)
.LBE49:
	.loc 3 48 12
	nop
.LBE48:
.LBE47:
	.loc 1 91 12
	lui	a5,%hi(ecat_e2p_emulation)
	addi	a0,a5,%lo(ecat_e2p_emulation)
	call	e2p_config
	sw	a0,92(sp)
	li	a5,8
	sw	a5,60(sp)
.LBB50:
.LBB51:
	.loc 3 37 5
	lw	a5,60(sp)
 #APP
# 37 "../../../../../arch/riscv/intc/hpm_interrupt.h" 1
	csrs 768, a5
# 0 "" 2
	.loc 3 38 1
 #NO_APP
	nop
.LBE51:
.LBE50:
	.loc 1 93 8
	lw	a5,92(sp)
	beq	a5,zero,.L24
	.loc 1 94 16
	li	a5,1
	j	.L47
.L24:
	.loc 1 99 21
	lui	a5,%hi(aEepromData)
	addi	a5,a5,%lo(aEepromData)
	lbu	a4,0(a5)
	.loc 1 99 8
	li	a5,165
	bne	a4,a5,.L25
	.loc 1 99 49 discriminator 1
	lui	a5,%hi(aEepromData)
	addi	a5,a5,%lo(aEepromData)
	lbu	a4,1(a5)
	.loc 1 99 34 discriminator 1
	li	a5,165
	bne	a4,a5,.L25
	.loc 1 99 77 discriminator 2
	lui	a5,%hi(aEepromData)
	addi	a5,a5,%lo(aEepromData)
	lbu	a4,2(a5)
	.loc 1 99 62 discriminator 2
	li	a5,165
	bne	a4,a5,.L25
	.loc 1 99 105 discriminator 3
	lui	a5,%hi(aEepromData)
	addi	a5,a5,%lo(aEepromData)
	lbu	a4,3(a5)
	.loc 1 99 90 discriminator 3
	li	a5,165
	bne	a4,a5,.L25
	.loc 1 100 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	j	.L26
.L25:
.LBB52:
	.loc 1 102 14
	sb	zero,91(sp)
	.loc 1 103 16
	call	ecat_flash_eeprom_check_configuration_area
	sw	a0,92(sp)
	.loc 1 104 12
	lw	a5,92(sp)
	bne	a5,zero,.L27
.LBB53:
	.loc 1 109 20
	addi	a5,sp,18
	mv	a2,a5
	li	a1,2
	li	a0,10
	call	e2p_read
	sw	a0,92(sp)
	.loc 1 110 16
	lw	a5,92(sp)
	beq	a5,zero,.L28
	.loc 1 111 17
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 112 24
	li	a5,1
	j	.L47
.L28:
	.loc 1 115 20
	addi	a5,sp,16
	mv	a2,a5
	li	a1,2
	li	a0,11
	call	e2p_read
	sw	a0,92(sp)
	.loc 1 116 16
	lw	a5,92(sp)
	beq	a5,zero,.L30
	.loc 1 117 17
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 118 24
	li	a5,1
	j	.L47
.L30:
	.loc 1 120 28
	lhu	a5,16(sp)
	.loc 1 120 56
	slli	a5,a5,16
	.loc 1 120 62
	lhu	a4,18(sp)
	.loc 1 120 26
	or	a5,a5,a4
	sw	a5,76(sp)
	.loc 1 122 20
	addi	a5,sp,14
	mv	a2,a5
	li	a1,2
	li	a0,12
	call	e2p_read
	sw	a0,92(sp)
	.loc 1 123 16
	lw	a5,92(sp)
	beq	a5,zero,.L31
	.loc 1 124 17
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 1 125 24
	li	a5,1
	j	.L47
.L31:
	.loc 1 128 20
	addi	a5,sp,12
	mv	a2,a5
	li	a1,2
	li	a0,13
	call	e2p_read
	sw	a0,92(sp)
	.loc 1 129 16
	lw	a5,92(sp)
	beq	a5,zero,.L32
	.loc 1 130 17
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 1 131 24
	li	a5,1
	j	.L47
.L32:
	.loc 1 133 28
	lhu	a5,12(sp)
	.loc 1 133 56
	slli	a5,a5,16
	.loc 1 133 62
	lhu	a4,14(sp)
	.loc 1 133 26
	or	a5,a5,a4
	sw	a5,72(sp)
	.loc 1 136 59
	lui	a5,%hi(aEepromData+20)
	addi	a5,a5,%lo(aEepromData+20)
	lw	a5,0(a5)
	.loc 1 136 16
	lw	a4,76(sp)
	bne	a4,a5,.L33
	.loc 1 136 145 discriminator 1
	lui	a5,%hi(aEepromData+24)
	addi	a5,a5,%lo(aEepromData+24)
	lw	a5,0(a5)
	.loc 1 136 101 discriminator 1
	lw	a4,72(sp)
	bgeu	a4,a5,.L35
.L33:
	.loc 1 137 37
	li	a5,1
	sb	a5,91(sp)
	j	.L35
.L27:
.LBE53:
	.loc 1 141 33
	li	a5,1
	sb	a5,91(sp)
.L35:
	.loc 1 144 12
	lbu	a5,91(sp)
	beq	a5,zero,.L36
	.loc 1 145 13
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	li	a5,8
	sw	a5,52(sp)
.LBB54:
.LBB55:
.LBB56:
	.loc 3 48 12
	sw	zero,20(sp)
	lw	a5,52(sp)
 #APP
# 48 "../../../../../arch/riscv/intc/hpm_interrupt.h" 1
	csrrc a5, 768, a5
# 0 "" 2
 #NO_APP
	sw	a5,20(sp)
	.loc 3 48 5
	lw	a5,20(sp)
.LBE56:
	.loc 3 48 12
	nop
.LBE55:
.LBE54:
.LBB57:
	.loc 1 148 27
	sw	zero,84(sp)
	.loc 1 148 13
	j	.L38
.L40:
	.loc 1 149 70
	lw	a5,84(sp)
	slli	a4,a5,1
	.loc 1 149 56
	lui	a5,%hi(aEepromData)
	addi	a5,a5,%lo(aEepromData)
	add	a5,a4,a5
	.loc 1 149 24
	mv	a2,a5
	li	a1,2
	lw	a0,84(sp)
	call	e2p_write
	sw	a0,92(sp)
	.loc 1 150 20
	lw	a5,92(sp)
	beq	a5,zero,.L39
	.loc 1 151 21
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	.loc 1 152