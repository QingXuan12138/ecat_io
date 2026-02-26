	.file	"modbus_rtu.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\ecat_io\\application\\modbus_rtu.c"
	.section	.text.Modbus_CRC16,"ax",@progbits
	.align	1
	.globl	Modbus_CRC16
	.type	Modbus_CRC16, @function
Modbus_CRC16:
.LFB5:
	.loc 1 4 51
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a0,12(sp)
	mv	a5,a1
	sh	a5,10(sp)
	.loc 1 5 14
	li	a5,-1
	sh	a5,30(sp)
.LBB2:
	.loc 1 6 14
	sw	zero,24(sp)
	.loc 1 6 5
	j	.L2
.L7:
	.loc 1 7 29
	lw	a5,24(sp)
	lw	a4,12(sp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 7 13
	lhu	a5,30(sp)
	xor	a5,a4,a5
	sh	a5,30(sp)
.LBB3:
	.loc 1 8 18
	li	a5,8
	sw	a5,20(sp)
	.loc 1 8 9
	j	.L3
.L6:
	.loc 1 9 22
	lhu	a5,30(sp)
	andi	a5,a5,1
	.loc 1 9 16
	beq	a5,zero,.L4
	.loc 1 10 21
	lhu	a5,30(sp)
	srli	a5,a5,1
	sh	a5,30(sp)
	.loc 1 11 21
	lhu	a5,30(sp)
	mv	a4,a5
	li	a5,-24576
	addi	a5,a5,1
	xor	a5,a4,a5
	sh	a5,30(sp)
	j	.L5
.L4:
	.loc 1 13 21
	lhu	a5,30(sp)
	srli	a5,a5,1
	sh	a5,30(sp)
.L5:
	.loc 1 8 34 discriminator 2
	lw	a5,20(sp)
	addi	a5,a5,-1
	sw	a5,20(sp)
.L3:
	.loc 1 8 27 discriminator 1
	lw	a5,20(sp)
	bne	a5,zero,.L6
.LBE3:
	.loc 1 6 37 discriminator 2
	lw	a5,24(sp)
	addi	a5,a5,1
	sw	a5,24(sp)
.L2:
	.loc 1 6 27 discriminator 1
	lhu	a5,10(sp)
	lw	a4,24(sp)
	blt	a4,a5,.L7
.LBE2:
	.loc 1 17 12
	lhu	a5,30(sp)
	.loc 1 18 1
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	Modbus_CRC16, .-Modbus_CRC16
	.section	.text.Modbus_BuildReadPacket,"ax",@progbits
	.align	1
	.globl	Modbus_BuildReadPacket
	.type	Modbus_BuildReadPacket, @function
Modbus_BuildReadPacket:
.LFB6:
	.loc 1 20 106
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	mv	a5,a1
	mv	a4,a3
	sb	a5,11(sp)
	mv	a5,a2
	sh	a5,8(sp)
	mv	a5,a4
	sh	a5,6(sp)
	.loc 1 21 12
	lw	a5,12(sp)
	lbu	a4,11(sp)
	sb	a4,0(a5)
	.loc 1 22 8
	lw	a5,12(sp)
	addi	a5,a5,1
	.loc 1 22 12
	li	a4,3
	sb	a4,0(a5)
	.loc 1 23 12
	lhu	a5,8(sp)
	srli	a5,a5,8
	zext.h	a4,a5
	.loc 1 23 8
	lw	a5,12(sp)
	addi	a5,a5,2
	.loc 1 23 12
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 24 8
	lw	a5,12(sp)
	addi	a5,a5,3
	.loc 1 24 12
	lhu	a4,8(sp)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 25 12
	lhu	a5,6(sp)
	srli	a5,a5,8
	zext.h	a4,a5
	.loc 1 25 8
	lw	a5,12(sp)
	addi	a5,a5,4
	.loc 1 25 12
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 26 8
	lw	a5,12(sp)
	addi	a5,a5,5
	.loc 1 26 12
	lhu	a4,6(sp)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 27 20
	li	a1,6
	lw	a0,12(sp)
	call	Modbus_CRC16
	mv	a5,a0
	sh	a5,30(sp)
	.loc 1 28 8
	lw	a5,12(sp)
	addi	a5,a5,6
	.loc 1 28 12
	lhu	a4,30(sp)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 29 12
	lhu	a5,30(sp)
	srli	a5,a5,8
	zext.h	a4,a5
	.loc 1 29 8
	lw	a5,12(sp)
	addi	a5,a5,7
	.loc 1 29 12
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 30 12
	li	a5,8
	.loc 1 31 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	Modbus_BuildReadPacket, .-Modbus_BuildReadPacket
	.section	.text.Modbus_BuildWritePacket,"ax",@progbits
	.align	1
	.globl	Modbus_BuildWritePacket
	.type	Modbus_BuildWritePacket, @function
Modbus_BuildWritePacket:
.LFB7:
	.loc 1 33 101
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	mv	a5,a1
	mv	a4,a3
	sb	a5,11(sp)
	mv	a5,a2
	sh	a5,8(sp)
	mv	a5,a4
	sh	a5,6(sp)
	.loc 1 34 12
	lw	a5,12(sp)
	lbu	a4,11(sp)
	sb	a4,0(a5)
	.loc 1 35 8
	lw	a5,12(sp)
	addi	a5,a5,1
	.loc 1 35 12
	li	a4,6
	sb	a4,0(a5)
	.loc 1 36 12
	lhu	a5,8(sp)
	srli	a5,a5,8
	zext.h	a4,a5
	.loc 1 36 8
	lw	a5,12(sp)
	addi	a5,a5,2
	.loc 1 36 12
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 37 8
	lw	a5,12(sp)
	addi	a5,a5,3
	.loc 1 37 12
	lhu	a4,8(sp)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 38 12
	lhu	a5,6(sp)
	srli	a5,a5,8
	zext.h	a4,a5
	.loc 1 38 8
	lw	a5,12(sp)
	addi	a5,a5,4
	.loc 1 38 12
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 39 8
	lw	a5,12(sp)
	addi	a5,a5,5
	.loc 1 39 12
	lhu	a4,6(sp)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 40 20
	li	a1,6
	lw	a0,12(sp)
	call	Modbus_CRC16
	mv	a5,a0
	sh	a5,30(sp)
	.loc 1 41 8
	lw	a5,12(sp)
	addi	a5,a5,6
	.loc 1 41 12
	lhu	a4,30(sp)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 42 12
	lhu	a5,30(sp)
	srli	a5,a5,8
	zext.h	a4,a5
	.loc 1 42 8
	lw	a5,12(sp)
	addi	a5,a5,7
	.loc 1 42 12
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 43 12
	li	a5,8
	.loc 1 44 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	Modbus_BuildWritePacket, .-Modbus_BuildWritePacket
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio 8.26b/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF937
	.byte	0xc
	.4byte	.LASF938
	.4byte	.LASF939
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF918
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF919
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF920
	.uleb128 0x3
	.4byte	.LASF923
	.byte	0x2
	.2byte	0x111
	.byte	0x29
	.4byte	0x4b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF921
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF922
	.uleb128 0x3
	.4byte	.LASF924
	.byte	0x2
	.2byte	0x113
	.byte	0x29
	.4byte	0x66
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF925
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF926
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF927
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF928
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF929
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF933
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.4byte	0x59
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6
	.uleb128 0x6
	.string	"buf"
	.byte	0x1
	.byte	0x21
	.byte	0x2b
	.4byte	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF930
	.byte	0x1
	.byte	0x21
	.byte	0x38
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x7
	.4byte	.LASF931
	.byte	0x1
	.byte	0x21
	.byte	0x4b
	.4byte	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF932
	.byte	0x1
	.byte	0x21
	.byte	0x5e
	.4byte	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x8
	.string	"crc"
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.4byte	.LASF934
	.byte	0x1
	.byte	0x14
	.byte	0xa
	.4byte	0x59
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162
	.uleb128 0x6
	.string	"buf"
	.byte	0x1
	.byte	0x14
	.byte	0x2a
	.4byte	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF930
	.byte	0x1
	.byte	0x14
	.byte	0x37
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x7
	.4byte	.LASF935
	.byte	0x1
	.byte	0x14
	.byte	0x4a
	.4byte	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF936
	.byte	0x1
	.byte	0x14
	.byte	0x5f
	.4byte	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x8
	.string	"crc"
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF940
	.byte	0x1
	.byte	0x4
	.byte	0xa
	.4byte	0x59
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"buf"
	.byte	0x1
	.byte	0x4
	.byte	0x20
	.4byte	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.byte	0x1
	.byte	0x4
	.byte	0x2e
	.4byte	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x8
	.string	"crc"
	.byte	0x1
	.byte	0x5
	.byte	0xe
	.4byte	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0xb
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x8
	.string	"pos"
	.byte	0x1
	.byte	0x6
	.byte	0xe
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xb
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x8
	.byte	0x12
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x56
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1d7
	.4byte	0x90
	.string	"Modbus_BuildWritePacket"
	.4byte	0xfc
	.string	"Modbus_BuildReadPacket"
	.4byte	0x162
	.string	"Modbus_CRC16"
	.4byte	0
	.section	.debug_pubtypes,"",@progbits
	.4byte	0xe0
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1d7
	.4byte	0x29
	.string	"char"
	.4byte	0x30
	.string	"unsigned int"
	.4byte	0x37
	.string	"signed char"
	.4byte	0x4b
	.string	"unsigned char"
	.4byte	0x3e
	.string	"uint8_t"
	.4byte	0x52
	.string	"short int"
	.4byte	0x66
	.string	"short unsigned int"
	.4byte	0x59
	.string	"uint16_t"
	.4byte	0x6d
	.string	"long int"
	.4byte	0x74
	.string	"long unsigned int"
	.4byte	0x7b
	.string	"long long int"
	.4byte	0x82
	.string	"long long unsigned int"
	.4byte	0x89
	.string	"int"
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 3 "C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\ecat_io\\application\\modbus_rtu.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF389
	.file 4 "../../../../../drivers/inc/hpm_common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF390
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio 8.26b/include/assert.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF391
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio 8.26b/include/__SEGGER_RTL.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x6
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF392
	.file 7 "C:/Program Files/SEGGER/SEGGER Embedded Studio 8.26b/include/__SEGGER_RTL_ConfDefaults.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro3
	.file 8 "C:/Program Files/SEGGER/SEGGER Embedded Studio 8.26b/include/__SEGGER_RTL_Conf.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x8
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF405
	.file 9 "C:/Program Files/SEGGER/SEGGER Embedded Studio 8.26b/include/__SEGGER_RTL_RISCV_Conf.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 10 "C:/Program Files/SEGGER/SEGGER Embedded Studio 8.26b/include/stdbool.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 11 "C:/Program Files/SEGGER/SEGGER Embedded Studio 8.26b/include/string.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.file 12 "C:/Program Files/SEGGER/SEGGER Embedded Studio 8.26b/include/stdlib.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xc
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.0.0b15dd8c110fc9aeec7c598b8fd93627,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.__SEGGER_RTL_ConfDefaults.h.11.37ef32ceb52ba65a5b7e8947ee56f76c,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF404
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.__SEGGER_RTL_RISCV_Conf.h.11.11d901b666d646fac5b795ef0469a9ab,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x17c
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x191
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x198
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x19f
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x1a6
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x265
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x26b
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x273
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x280
	.4byte	.LASF470
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.__SEGGER_RTL_ConfDefaults.h.76.f3273e301b835b77c7c94f5376a8bbab,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x176
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x1a7
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x1c8
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x1cb
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x1ce
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x1d2
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x1d5
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x1d8
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x1df
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x1e2
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x1e6
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x1e9
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x1ec
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x1ff
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x205
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x208
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x215
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x218
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x21f
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x225
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x228
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x22f
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x235
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x238
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x254
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x25a
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x25d
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x26a
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x26d
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x27a
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x27d
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x284
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x28a
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x2a9
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x2af
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x2b2
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x2bc
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x2c3
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x2c6
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x2cd
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x2e0
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x2e6
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x2ea
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x2f4
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x2fb
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x301
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x307
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x30c
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x312
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x318
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x31e
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x327
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x333
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x33a
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x341
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x348
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x34f
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x356
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x35d
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x364
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x36b
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x372
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x376
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x37d
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x384
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x38b
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x395
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x399
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x3a0
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x3a7
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x3ae
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x3b8
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x3bc
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x3c3
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x3ca
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x3d1
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x3db
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x3df
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x3e6
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x3ed
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x3f4
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x3fe
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x402
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x406
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x40a
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x40e
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x412
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x416
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x41a
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x41e
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x424
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x425
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x426
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x42b
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x42f
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x437
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x43d
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x443
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x449
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x44f
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x455
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x469
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x46f
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x475
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x478
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x47e
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x48e
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x492
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x496
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x49a
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x49e
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x4a2
	.4byte	.LASF652
	.byte	0x6
	.uleb128 0x4a6
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x4a7
	.4byte	.LASF648
	.byte	0x6
	.uleb128 0x4a8
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x4a9
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x4ad
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x4b1
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x4b5
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x4b9
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x4c1
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x4c5
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x4d1
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x4d5
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x4d9
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x4e3
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x5c5
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x5cd
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x5d5
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x5dd
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x637
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x63b
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x63f
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x643
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x650
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x651
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x655
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x659
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x65d
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x661
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x664
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x667
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x66a
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x66d
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x671
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x685
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x689
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x68d
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x691
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x695
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x6a5
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x6aa
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x6b1
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x6b2
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x6bd
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x6c1
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x6c5
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x6c9
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x6d4
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x6d5
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x6d6
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x6d7
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x6d8
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x6d9
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x6da
	.4byte	.LASF703
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.__SEGGER_RTL.h.26.50d00244a3a5a46ee8b37b4ffc66ead4,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF706
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.assert.h.15.28a750ca090271c541dcce7ee2f248c5,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF709
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdbool.h.11.63829d96d260d9a3af29b7ad3c6c191c,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF714
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.11.a90530b67bea3e3b875dbd9f20d72a3e,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF809
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.11.3ded87d0afb3062a44f34fa0d6f65e1d,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF812
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.11.ea6752df405655209daa7514e3585856,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF819
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.hpm_common.h.25.a6d118ab51998e66a6f578374123e06f,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF915
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.modbus_rtu.h.7.521b17edb3b72e10edded75f8cbbc12e,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF917
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF413:
	.string	"__SEGGER_RTL_RV_POS_NORMAL (1<<6)"
.LASF668:
	.string	"__SEGGER_RTL_BitcastToF64(X) __SEGGER_RTL_BitcastToF64_inline(X)"
.LASF778:
	.string	"UINT_FAST32_WIDTH __SEGGER_RTL_UINT_FAST32_WIDTH"
.LASF851:
	.string	"BIT4_MASK (0x00000010UL)"
.LASF830:
	.string	"HPM_ALIGN_UP(a,n) (((uint32_t)(a) + (n-1U)) & ~(n-1U))"
.LASF316:
	.string	"__riscv 1"
.LASF391:
	.string	"__SEGGER_RTL_ASSERT_H "
.LASF304:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF296:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF627:
	.string	"__SEGGER_RTL_PTRDIFF_WIDTH __PTRDIFF_WIDTH__"
.LASF804:
	.string	"UINTMAX_C(x) __SEGGER_RTL_UINTMAX_C(x)"
.LASF371:
	.string	"HPMSOC_HAS_HPMSDK_PLB y"
.LASF383:
	.string	"HPMSOC_HAS_HPMSDK_PDGO y"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF521:
	.string	"__SEGGER_RTL_UINT_FAST16_T __UINT_FAST16_TYPE__"
.LASF635:
	.string	"__SEGGER_RTL_UINT8_C(X) __UINT8_C(X)"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.1"
.LASF903:
	.string	"ATTR_PLACE_AT_FAST_RAM ATTR_PLACE_AT(\".fast_ram\")"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF665:
	.string	"__SEGGER_RTL_BitcastToU32(X) __SEGGER_RTL_BitcastToU32_inline(X)"
.LASF678:
	.string	"__SEGGER_RTL_U64_H(X) ((__SEGGER_RTL_U32)((__SEGGER_RTL_U64)(X) >> 32))"
.LASF599:
	.string	"__SEGGER_RTL_UINT16_WIDTH 16"
.LASF759:
	.string	"UINT_LEAST64_MAX __SEGGER_RTL_UINT_LEAST64_MAX"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF398:
	.string	"__SEGGER_RTL_STDC_VERSION_C11 201112L"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF716:
	.string	"INT8_MIN __SEGGER_RTL_INT8_MIN"
.LASF907:
	.string	"ATTR_PLACE_AT_FAST_RAM_INIT ATTR_PLACE_AT(\".fast_ram.init\")"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF786:
	.string	"INTPTR_MIN __SEGGER_RTL_INTPTR_MIN"
.LASF377:
	.string	"HPMSOC_HAS_HPMSDK_OTP y"
.LASF872:
	.string	"BIT25_MASK (0x02000000UL)"
.LASF658:
	.string	"__SEGGER_RTL_STDOUT_BUFFER_LEN 64"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF561:
	.string	"__SEGGER_RTL_INT_FAST8_MIN (-__SEGGER_RTL_INT_FAST8_MAX - 1)"
.LASF617:
	.string	"__SEGGER_RTL_INT_FAST128_WIDTH __SEGGER_RTL_INT128_WIDTH"
.LASF506:
	.string	"__SEGGER_RTL_I64_C(X) __SEGGER_RTL_INT64_C(X)"
.LASF935:
	.string	"start_addr"
.LASF920:
	.string	"signed char"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF583:
	.string	"__SEGGER_RTL_INTPTR_MIN (-__SEGGER_RTL_INTPTR_MAX - 1)"
.LASF367:
	.string	"HPMSOC_HAS_HPMSDK_QEIV2 y"
.LASF587:
	.string	"__SEGGER_RTL_FLT_MAX __FLT_MAX__"
.LASF855:
	.string	"BIT8_MASK (0x00000100UL)"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF414:
	.string	"__SEGGER_RTL_RV_POS_INF (1<<7)"
.LASF34:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF847:
	.string	"BIT0_MASK (0x00000001UL)"
.LASF478:
	.string	"__WIDTH_FLOAT 1"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF783:
	.string	"PTRDIFF_WIDTH __SEGGER_RTL_PTRDIFF_WIDTH"
.LASF546:
	.string	"__SEGGER_RTL_INT64_MIN (-__SEGGER_RTL_INT64_MAX - 1)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF446:
	.string	"__SEGGER_RTL_ATOMIC_IS_LOCK_FREE(S,P) __SEGGER_RTL_atomic_is_lock_free(S, P)"
.LASF626:
	.string	"__SEGGER_RTL_UINTMAX_WIDTH __INTMAX_WIDTH__"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF568:
	.string	"__SEGGER_RTL_UINT_FAST32_MAX __UINT_FAST32_MAX__"
.LASF476:
	.string	"__WIDTH_LONG_LONG 2"
.LASF722:
	.string	"INT32_MIN __SEGGER_RTL_INT32_MIN"
.LASF538:
	.string	"__SEGGER_RTL_UINT8_MAX __UINT8_MAX__"
.LASF811:
	.string	"NULL 0"
.LASF297:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF185:
	.string	"__DECIMAL_DIG__ 36"
.LASF562:
	.string	"__SEGGER_RTL_UINT_FAST8_MAX __UINT_FAST8_MAX__"
.LASF912:
	.string	"ATTR_RAMFUNC_WITH_ALIGNMENT(alignment) ATTR_RAMFUNC ATTR_ALIGN(alignment)"
.LASF483:
	.string	"__SEGGER_RTL_INCLUDE_SEGGER_API 0"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF369:
	.string	"HPMSOC_HAS_HPMSDK_PWMV2 y"
.LASF833:
	.string	"IS_HPM_BIT_SET(val,offset) (((uint32_t)(val) & (1UL << (offset))) != 0U)"
.LASF467:
	.string	"__SEGGER_RTL_FLOAT64_C_COMPLEX double _Complex"
.LASF452:
	.string	"__SEGGER_RTL_UMULL_X(x0,x1) ({ unsigned __thi, __tlo; __SEGGER_RTL_UMULL(__tlo, __thi, x0, x1); (__SEGGER_RTL_U64)(((__SEGGER_RTL_U64)__thi << 32) + __tlo); })"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF456:
	.ascii	"__SEGGER_RTL_UMLAL(lo,hi,x0,x1) do { unsigned __tmp; __asm__"
	.ascii	"(\"mul   %0, %1, %2\" : \"=r\"(__tmp) : \"r\"((unsigned)(x0)"
	.ascii	"), \"r\"((unsigned)(x1)) ); __asm__(\"add   %0, %0, %1\" : \""
	.ascii	"+r\"(lo) : \"r\"(__tmp) ); __asm__(\"sltu  %0, %1, %2\" : \""
	.ascii	"=r\"(__tmp) : \"r"
	.string	"\"((unsigned)lo), \"r\"((unsigned)__tmp)); __asm__(\"add   %0, %0, %1\" : \"+r\"(hi) : \"r\"(__tmp) ); __asm__(\"mulhu %0, %1, %2\" : \"=r\"(__tmp) : \"r\"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); __asm__(\"add   %0, %0, %1\" : \"+r\"(hi) : \"r\"((unsigned)__tmp) ); } while (0)"
.LASF706:
	.string	"__SEGGER_RTL_FILE_IMPL_DEFINED "
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF616:
	.string	"__SEGGER_RTL_INT_FAST64_WIDTH __INT_FAST64_WIDTH__"
.LASF451:
	.string	"__SEGGER_RTL_SMULL_X(x0,x1) ({ unsigned __thi, __tlo; __SEGGER_RTL_SMULL(__tlo, __thi, x0, x1); (__SEGGER_RTL_I64)(((__SEGGER_RTL_U64)__thi << 32) + __tlo); })"
.LASF758:
	.string	"UINT_LEAST32_WIDTH __SEGGER_RTL_UINT_LEAST32_WIDTH"
.LASF632:
	.string	"__CONCAT1(X,S) __CONCAT(X, S)"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF692:
	.string	"__SEGGER_RTL_SUBNORMALS_FLUSH_TO_ZERO 1"
.LASF535:
	.string	"__SEGGER_RTL_SIG_ATOMIC_T __SIG_ATOMIC_TYPE__"
.LASF629:
	.string	"__SEGGER_RTL_WCHAR_WIDTH __WCHAR_WIDTH__"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF334:
	.string	"__riscv_zbb 1000000"
.LASF579:
	.string	"__SEGGER_RTL_WCHAR_MIN __WCHAR_MIN__"
.LASF717:
	.string	"INT8_MAX __SEGGER_RTL_INT8_MAX"
.LASF897:
	.string	"ATTR_PLACE_AT_NONCACHEABLE_BSS ATTR_PLACE_AT(\".noncacheable.bss\")"
.LASF556:
	.string	"__SEGGER_RTL_UINT_LEAST32_MAX __UINT_LEAST32_MAX__"
.LASF600:
	.string	"__SEGGER_RTL_UINT32_WIDTH 32"
.LASF735:
	.string	"UINT64_WIDTH __SEGGER_RTL_UINT64_WIDTH"
.LASF565:
	.string	"__SEGGER_RTL_UINT_FAST16_MAX __UINT_FAST16_MAX__"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF841:
	.string	"HPM_NUM_TO_EVEN_FLOOR(x) ((x) & 0xFFFFFFFEUL)"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF909:
	.string	"ATTR_PLACE_AT_FAST_RAM_NON_INIT ATTR_PLACE_AT(\".fast_ram.non_init\")"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF679:
	.string	"__SEGGER_RTL_U64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_RTL_U64)(X))"
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF831:
	.string	"HPM_BITSMASK(val,offset) ((uint32_t)(val) << (offset))"
.LASF914:
	.string	"NOP() __asm volatile(\"nop\")"
.LASF592:
	.string	"__SEGGER_RTL_LDBL_MIN __LDBL_MIN__"
.LASF437:
	.string	"__SEGGER_RTL_FLOAT16 _Float16"
.LASF113:
	.string	"__INT32_C(c) c ## L"
.LASF837:
	.string	"HPM_CONTINUE_IF(cond) if (cond) { continue; }"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF332:
	.string	"__riscv_zifencei 2000000"
.LASF529:
	.string	"__SEGGER_RTL_WINT_T __WINT_TYPE__"
.LASF368:
	.string	"HPMSOC_HAS_HPMSDK_QEOV2 y"
.LASF564:
	.string	"__SEGGER_RTL_INT_FAST16_MIN (-__SEGGER_RTL_INT_FAST16_MAX - 1)"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF729:
	.string	"UINT8_WIDTH __SEGGER_RTL_UINT8_WIDTH"
.LASF710:
	.string	"__SEGGER_RTL_STDBOOL_H "
.LASF574:
	.string	"__SEGGER_RTL_UINTMAX_MAX __UINTMAX_MAX__"
.LASF416:
	.string	"__SEGGER_RTL_RV_QNAN (1<<9)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF270:
	.string	"__FLT32X_EPSILON__ 1.1"
.LASF700:
	.string	"__SEGGER_RTL_SIGNAL_SIGINT 3"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF586:
	.string	"__SEGGER_RTL_SIG_ATOMIC_MIN 0"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF388:
	.string	"DEBUG 1"
.LASF154:
	.string	"__FLT_MAX__ 1.1"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF560:
	.string	"__SEGGER_RTL_INT_FAST8_MAX __INT_FAST8_MAX__"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF508:
	.string	"__SEGGER_RTL_U64 __SEGGER_RTL_UINT64_T"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF838:
	.string	"HPM_DIV_ROUND_CLOSEST(x,div) (((x) + (div) / 2) / (div))"
.LASF502:
	.string	"__SEGGER_RTL_U32 __SEGGER_RTL_UINT32_T"
.LASF405:
	.string	"__SEGGER_RTL_CONF_H "
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF67:
	.string	"__INTPTR_TYPE__ int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF513:
	.string	"__SEGGER_RTL_UINT_LEAST16_T __UINT_LEAST16_TYPE__"
.LASF582:
	.string	"__SEGGER_RTL_INTPTR_MAX __INTPTR_MAX__"
.LASF390:
	.string	"_HPM_COMMON_H "
.LASF503:
	.string	"__SEGGER_RTL_U32_C(X) __SEGGER_RTL_UINT32_C(X)"
.LASF420:
	.string	"__SEGGER_RTL_CORE_HAS_ISA_RVE 0"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF498:
	.string	"__SEGGER_RTL_INT32_T __INT32_TYPE__"
.LASF685:
	.string	"__SEGGER_RTL_NAN __builtin_nanf(\"0x7fc00000\")"
.LASF321:
	.string	"__riscv_muldiv 1"
.LASF926:
	.string	"long int"
.LASF889:
	.string	"HPM_ATTR_SUPERVISOR_INTERRUPT __attribute__ ((section(\".isr_s_vector\"), interrupt(\"supervisor\"), aligned(4)))"
.LASF269:
	.string	"__FLT32X_MIN__ 1.1"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF346:
	.string	"HPMSOC_HAS_HPMSDK_MCHTMR y"
.LASF853:
	.string	"BIT6_MASK (0x00000040UL)"
.LASF575:
	.string	"__SEGGER_RTL_SIZE_MAX __SIZE_MAX__"
.LASF59:
	.string	"__INT_FAST8_TYPE__ int"
.LASF495:
	.string	"__SEGGER_RTL_I16 __SEGGER_RTL_INT16_T"
.LASF689:
	.string	"__SEGGER_RTL_HIDE(X) __c_ ##X"
.LASF500:
	.string	"__SEGGER_RTL_I32_C(X) __SEGGER_RTL_INT32_C(X)"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF344:
	.string	"HPMSOC_HAS_HPMSDK_TFA y"
.LASF93:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF31:
	.string	"__SIZEOF_POINTER__ 4"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF436:
	.string	"__SEGGER_RTL_TYPESET __riscv_xlen"
.LASF300:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF352:
	.string	"HPMSOC_HAS_HPMSDK_I2C y"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF697:
	.string	"__SEGGER_RTL_SIGNAL_SIGABRT 0"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF581:
	.string	"__SEGGER_RTL_PTRDIFF_MIN (-__SEGGER_RTL_PTRDIFF_MAX - 1)"
.LASF39:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF901:
	.string	"ATTR_PLACE_AT_NONCACHEABLE_NON_INIT ATTR_PLACE_AT(\".noncacheable.non_init\")"
.LASF605:
	.string	"__SEGGER_RTL_INT_LEAST32_WIDTH __INT_LEAST32_WIDTH__"
.LASF746:
	.string	"INT_LEAST16_WIDTH __SEGGER_RTL_INT_LEAST16_WIDTH"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF511:
	.string	"__SEGGER_RTL_UINT_LEAST8_T __UINT_LEAST8_TYPE__"
.LASF643:
	.string	"__SEGGER_RTL_UINTMAX_C(X) __UINTMAX_C(X)"
.LASF41:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF558:
	.string	"__SEGGER_RTL_INT_LEAST64_MIN (-__SEGGER_RTL_INT_LEAST64_MAX - 1)"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF49:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF17:
	.string	"__SIZEOF_LONG__ 4"
.LASF859:
	.string	"BIT12_MASK (0x00001000UL)"
.LASF829:
	.string	"HPM_ALIGN_DOWN(a,n) ((uint32_t)(a) & ~(n-1U))"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.1"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF361:
	.string	"HPMSOC_HAS_HPMSDK_GPIOM y"
.LASF799:
	.string	"UINT8_C(x) __SEGGER_RTL_UINT8_C(x)"
.LASF656:
	.string	"__SEGGER_RTL_MAX_HEAP_SIZE (8*1024*1024u)"
.LASF596:
	.string	"__SEGGER_RTL_INT64_WIDTH 64"
.LASF440:
	.string	"__SEGGER_RTL_FP_ABI 0"
.LASF491:
	.string	"__SEGGER_RTL_I8 __SEGGER_RTL_INT8_T"
.LASF782:
	.string	"PTRDIFF_MAX __SEGGER_RTL_PTRDIFF_MAX"
.LASF868:
	.string	"BIT21_MASK (0x00200000UL)"
.LASF320:
	.string	"__riscv_div 1"
.LASF424:
	.string	"__SEGGER_RTL_CORE_HAS_DIV 1"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF505:
	.string	"__SEGGER_RTL_I64 __SEGGER_RTL_INT64_T"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF359:
	.string	"HPMSOC_HAS_HPMSDK_DMAV2 y"
.LASF464:
	.string	"__SEGGER_RTL_DIVMOD_U32(Q,R,N,D) do { Q = (N) / (D); __SEGGER_RTL_KILL(Q); R = (N) - (Q)*(D); } while (0)"
.LASF50:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF923:
	.string	"uint8_t"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.1"
.LASF294:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF460:
	.string	"__SEGGER_RTL_REQUEST_INLINE __inline__"
.LASF116:
	.string	"__INT64_C(c) c ## LL"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF392:
	.string	"__SEGGER_RTL_H "
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF303:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF878:
	.string	"BIT31_MASK (0x80000000UL)"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF775:
	.string	"UINT_FAST16_MAX __SEGGER_RTL_UINT_FAST16_MAX"
.LASF590:
	.string	"__SEGGER_RTL_DBL_MIN __DBL_MIN__"
.LASF691:
	.string	"__SEGGER_RTL_SUBNORMALS_READ_AS_ZERO 1"
.LASF1:
	.string	"__STDC_VERSION__ 201710L"
.LASF610:
	.string	"__SEGGER_RTL_UINT_LEAST32_WIDTH __INT_LEAST32_WIDTH__"
.LASF809:
	.string	"SIG_ATOMIC_MAX __SEGGER_RTL_SIG_ATOMIC_MAX"
.LASF323:
	.string	"__riscv_float_abi_soft 1"
.LASF382:
	.string	"HPMSOC_HAS_HPMSDK_PCFG y"
.LASF744:
	.string	"INT_LEAST16_MIN __SEGGER_RTL_INT_LEAST16_MIN"
.LASF663:
	.string	"__SEGGER_RTL_ATOMIC_SYNCHRONIZE() __SEGGER_RTL_X_atomic_synchronize()"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF921:
	.string	"unsigned char"
.LASF631:
	.string	"__CONCAT(X,S) X ## S"
.LASF790:
	.string	"UINTPTR_WIDTH __SEGGER_RTL_UINTPTR_WIDTH"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF205:
	.string	"__FLT16_MIN__ 1.1"
.LASF444:
	.string	"__SEGGER_RTL_FLT_SELECT(HEX,DEC) HEX"
.LASF141:
	.string	"__GCC_IEC_559 0"
.LASF567:
	.string	"__SEGGER_RTL_INT_FAST32_MIN (-__SEGGER_RTL_INT_FAST32_MAX - 1)"
.LASF752:
	.string	"INT_LEAST64_WIDTH __SEGGER_RTL_INT_LEAST64_WIDTH"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF739:
	.string	"UINTMAX_MAX __SEGGER_RTL_UINTMAX_MAX"
.LASF660:
	.string	"__SEGGER_RTL_LOCALE_THREAD __SEGGER_RTL_THREAD"
.LASF742:
	.string	"INT_LEAST8_MAX __SEGGER_RTL_INT_LEAST8_MAX"
.LASF577:
	.string	"__SEGGER_RTL_WINT_MIN __WINT_MIN__"
.LASF751:
	.string	"INT_LEAST64_MAX __SEGGER_RTL_INT_LEAST64_MAX"
.LASF839:
	.string	"HPM_DIV_ROUND_UP(x,div) (((x) + (div) - 1) / (div))"
.LASF403:
	.string	"__SEGGER_RTL_STDC_VERSION_CPP17 201703L"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF866:
	.string	"BIT19_MASK (0x00080000UL)"
.LASF510:
	.string	"__SEGGER_RTL_INT_LEAST8_T __INT_LEAST8_TYPE__"
.LASF645:
	.string	"__SEGGER_RTL_ATOMIC_U16 __SEGGER_RTL_U16"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF528:
	.string	"__SEGGER_RTL_SIZE_T __SIZE_TYPE__"
.LASF402:
	.string	"__SEGGER_RTL_STDC_VERSION_CPP14 201402L"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)1.1)"
.LASF702:
	.string	"__SEGGER_RTL_SIGNAL_SIGTERM 5"
.LASF539:
	.string	"__SEGGER_RTL_INT16_MAX __INT16_MAX__"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF482:
	.string	"__SEGGER_RTL_INCLUDE_AEABI_API 0"
.LASF419:
	.string	"__SEGGER_RTL_UNREACHABLE() __builtin_unreachable()"
.LASF642:
	.string	"__SEGGER_RTL_INTMAX_C(X) __INTMAX_C(X)"
.LASF757:
	.string	"UINT_LEAST32_MAX __SEGGER_RTL_UINT_LEAST32_MAX"
.LASF911:
	.string	"ATTR_RAMFUNC ATTR_PLACE_AT(\".fast\")"
.LASF824:
	.string	"__IO __RW"
.LASF932:
	.string	"value"
.LASF883:
	.string	"HPM_HALF_PI (1.57079632679489661923)"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF726:
	.string	"INT64_MAX __SEGGER_RTL_INT64_MAX"
.LASF312:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF543:
	.string	"__SEGGER_RTL_INT32_MIN (-__SEGGER_RTL_INT32_MAX - 1)"
.LASF918:
	.string	"char"
.LASF772:
	.string	"INT_FAST64_WIDTH __SEGGER_RTL_INT_FAST64_WIDTH"
.LASF298:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF745:
	.string	"INT_LEAST16_MAX __SEGGER_RTL_INT_LEAST16_MAX"
.LASF512:
	.string	"__SEGGER_RTL_INT_LEAST16_T __INT_LEAST16_TYPE__"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF465:
	.string	"__SEGGER_RTL_DIVMOD_U64(Q,R,N,D) do { Q = (N) / (D); __SEGGER_RTL_KILL(Q); R = (N) - (Q)*(D); } while (0)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF653:
	.string	"__SEGGER_RTL_FORMAT_INT_WIDTH"
.LASF516:
	.string	"__SEGGER_RTL_INT_LEAST64_T __INT_LEAST64_TYPE__"
.LASF792:
	.string	"WINT_MIN __SEGGER_RTL_WINT_MIN"
.LASF877:
	.string	"BIT30_MASK (0x40000000UL)"
.LASF540:
	.string	"__SEGGER_RTL_INT16_MIN (-__SEGGER_RTL_INT16_MAX - 1)"
.LASF715:
	.string	"__SEGGER_RTL_STDINT_H "
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF614:
	.string	"__SEGGER_RTL_INT_FAST16_WIDTH __INT_FAST16_WIDTH__"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 1.1"
.LASF936:
	.string	"reg_count"
.LASF373:
	.string	"HPMSOC_HAS_HPMSDK_TRGM y"
.LASF843:
	.string	"_HPM_STRINGIFY(x) #x"
.LASF661:
	.string	"__SEGGER_RTL_ATOMIC_LOCK() __SEGGER_RTL_X_atomic_lock()"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF844:
	.string	"HPM_STRINGIFY(x) _HPM_STRINGIFY(x)"
.LASF589:
	.string	"__SEGGER_RTL_DBL_MAX __DBL_MAX__"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF848:
	.string	"BIT1_MASK (0x00000002UL)"
.LASF442:
	.string	"__SEGGER_RTL_SIZEOF_LDOUBLE 16"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF794:
	.string	"WINT_WIDTH __SEGGER_RTL_WINT_WIDTH"
.LASF603:
	.string	"__SEGGER_RTL_INT_LEAST8_WIDTH __INT_LEAST8_WIDTH__"
.LASF687:
	.string	"__SEGGER_RTL_HUGE_VALF __builtin_huge_valf()"
.LASF69:
	.string	"__GXX_ABI_VERSION 1019"
.LASF696:
	.string	"__SEGGER_RTL_CORE_HAS_IDIVM_X 0"
.LASF335:
	.string	"__riscv_zbc 1000000"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF676:
	.string	"__SEGGER_RTL_SCALED_INTEGER 0"
.LASF305:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF443:
	.string	"__SEGGER_RTL_NAN_FORMAT __SEGGER_RTL_NAN_FORMAT_IEEE"
.LASF123:
	.string	"__UINT32_C(c) c ## UL"
.LASF622:
	.string	"__SEGGER_RTL_UINT_FAST128_WIDTH __SEGGER_RTL_UINT128_WIDTH"
.LASF237:
	.string	"__FLT64_MIN__ 1.1"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.1"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF812:
	.string	"__SEGGER_RTL_SIZE_T_DEFINED "
.LASF566:
	.string	"__SEGGER_RTL_INT_FAST32_MAX __INT_FAST32_MAX__"
.LASF431:
	.string	"__SEGGER_RTL_PREFER_BRANCH_FREE_CODE 0"
.LASF724:
	.string	"INT32_WIDTH __SEGGER_RTL_INT32_WIDTH"
.LASF454:
	.string	"__SEGGER_RTL_UMULL_HI(x0,x1) ({ unsigned __product; __asm__(\"mulhu %0, %1, %2\" : \"=r\"(__product) : \"r\"((unsigned)(x0)), \"r\"((unsigned)(x1))); __product; })"
.LASF646:
	.string	"__SEGGER_RTL_ATOMIC_U64 __SEGGER_RTL_U64"
.LASF713:
	.string	"false 0"
.LASF756:
	.string	"UINT_LEAST16_WIDTH __SEGGER_RTL_UINT_LEAST16_WIDTH"
.LASF309:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF544:
	.string	"__SEGGER_RTL_UINT32_MAX __UINT32_MAX__"
.LASF337:
	.string	"__ELF__ 1"
.LASF386:
	.string	"HPMSOC_HAS_HPMSDK_PMP y"
.LASF393:
	.string	"__SEGGER_RTL_LIBC_CONF_DEFAULTS_H "
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF747:
	.string	"INT_LEAST32_MIN __SEGGER_RTL_INT_LEAST32_MIN"
.LASF591:
	.string	"__SEGGER_RTL_LDBL_MAX __LDBL_MAX__"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF415:
	.string	"__SEGGER_RTL_RV_SNAN (1<<8)"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF363:
	.string	"HPMSOC_HAS_HPMSDK_ADC16 y"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF473:
	.string	"__SEGGER_RTL_NAN_FORMAT_COMPACT 2"
.LASF672:
	.string	"__SEGGER_RTL_SPECIALIZE_COMPARES 1"
.LASF711:
	.string	"bool _Bool"
.LASF895:
	.string	"ATTR_PLACE_AT_NONCACHEABLE ATTR_PLACE_AT(\".noncacheable\")"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF667:
	.string	"__SEGGER_RTL_BitcastToU64(X) __SEGGER_RTL_BitcastToU64_inline(X)"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF638:
	.string	"__SEGGER_RTL_INT32_C(X) __INT32_C(X)"
.LASF693:
	.string	"__SEGGER_RTL_CORE_HAS_UDIV_X 0"
.LASF307:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF594:
	.string	"__SEGGER_RTL_INT16_WIDTH 16"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF835:
	.string	"IS_HPM_BIT_CLR(val,offset) (((uint32_t)(val) & (1UL << (offset))) == 0U)"
.LASF818:
	.string	"RAND_MAX 32767"
.LASF469:
	.string	"__SEGGER_RTL_PUBLIC_API __attribute__((__weak__))"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF497:
	.string	"__SEGGER_RTL_U16 __SEGGER_RTL_UINT16_T"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)1.1)"
.LASF356:
	.string	"HPMSOC_HAS_HPMSDK_MBX y"
.LASF472:
	.string	"__SEGGER_RTL_NAN_FORMAT_FAST 1"
.LASF357:
	.string	"HPMSOC_HAS_HPMSDK_EWDG y"
.LASF494:
	.string	"__SEGGER_RTL_INT16_T __INT16_TYPE__"
.LASF481:
	.string	"__SEGGER_RTL_FORCE_SOFT_FLOAT 0"
.LASF852:
	.string	"BIT5_MASK (0x00000020UL)"
.LASF913:
	.string	"ATTR_SHARE_MEM ATTR_PLACE_AT(\".sh_mem\")"
.LASF293:
	.string	"__USER_LABEL_PREFIX__ "
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF604:
	.string	"__SEGGER_RTL_INT_LEAST16_WIDTH __INT_LEAST16_WIDTH__"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF651:
	.string	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION 1"
.LASF409:
	.string	"__SEGGER_RTL_RV_NEG_SUBNORMAL (1<<2)"
.LASF518:
	.string	"__SEGGER_RTL_INT_FAST8_T __INT_FAST8_TYPE__"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF519:
	.string	"__SEGGER_RTL_UINT_FAST8_T __UINT_FAST8_TYPE__"
.LASF310:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF777:
	.string	"UINT_FAST32_MAX __SEGGER_RTL_UINT_FAST32_MAX"
.LASF295:
	.string	"__NO_INLINE__ 1"
.LASF527:
	.string	"__SEGGER_RTL_UINTMAX_T __UINTMAX_TYPE__"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF593:
	.string	"__SEGGER_RTL_INT8_WIDTH 8"
.LASF736:
	.string	"INTMAX_MIN __SEGGER_RTL_INTMAX_MIN"
.LASF387:
	.string	"HPM_SES_USE_SEGGER_LD 1"
.LASF549:
	.string	"__SEGGER_RTL_INT_LEAST8_MIN (-__SEGGER_RTL_INT_LEAST8_MAX - 1)"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF484:
	.string	"__SEGGER_RTL_INCLUDE_C_API 1"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF649:
	.string	"__SEGGER_RTL_FORMAT_FLOAT_WIDTH __WIDTH_DOUBLE"
.LASF776:
	.string	"UINT_FAST16_WIDTH __SEGGER_RTL_UINT_FAST16_WIDTH"
.LASF896:
	.string	"ATTR_PLACE_AT_NONCACHEABLE_WITH_ALIGNMENT(alignment) ATTR_PLACE_AT_NONCACHEABLE ATTR_ALIGN(alignment)"
.LASF801:
	.string	"UINT32_C(x) __SEGGER_RTL_UINT32_C(x)"
.LASF253:
	.string	"__FLT128_MIN__ 1.1"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF559:
	.string	"__SEGGER_RTL_UINT_LEAST64_MAX __UINT_LEAST64_MAX__"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF311:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF810:
	.string	"__SEGGER_RTL_STRING_H "
.LASF927:
	.string	"long unsigned int"
.LASF474:
	.string	"__WIDTH_INT 0"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF846:
	.string	"SIZE_1MB (1048576UL)"
.LASF771:
	.string	"INT_FAST64_MAX __SEGGER_RTL_INT_FAST64_MAX"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF378:
	.string	"HPMSOC_HAS_HPMSDK_SYSCTL y"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.1"
.LASF345:
	.string	"HPMSOC_HAS_HPMSDK_PLIC y"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF860:
	.string	"BIT13_MASK (0x00002000UL)"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF784:
	.string	"SIZE_MAX __SEGGER_RTL_SIZE_MAX"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF613:
	.string	"__SEGGER_RTL_INT_FAST8_WIDTH __INT_FAST8_WIDTH__"
.LASF768:
	.string	"INT_FAST32_MAX __SEGGER_RTL_INT_FAST32_MAX"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF572:
	.string	"__SEGGER_RTL_INTMAX_MAX __INTMAX_MAX__"
.LASF633:
	.string	"__XINTX_C(X,S) __CONCAT1(X, S)"
.LASF888:
	.string	"HPM_ATTR_MACHINE_INTERRUPT __attribute__ ((section(\".isr_vector\"), interrupt(\"machine\"), aligned(4)))"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF619:
	.string	"__SEGGER_RTL_UINT_FAST16_WIDTH __INT_FAST16_WIDTH__"
.LASF732:
	.string	"UINT32_MAX __SEGGER_RTL_UINT32_MAX"
.LASF880:
	.string	"HPM_PI_FLOAT (3.14159265358979323846f)"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.1"
.LASF588:
	.string	"__SEGGER_RTL_FLT_MIN __FLT_MIN__"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF520:
	.string	"__SEGGER_RTL_INT_FAST16_T __INT_FAST16_TYPE__"
.LASF360:
	.string	"HPMSOC_HAS_HPMSDK_PPI y"
.LASF887:
	.string	"ATTR_WEAK __attribute__((weak))"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF322:
	.string	"__riscv_xlen 32"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF302:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF670:
	.string	"__SEGGER_RTL_USE_PARA(Para) (void)Para"
.LASF380:
	.string	"HPMSOC_HAS_HPMSDK_PLLCTLV2 y"
.LASF854:
	.string	"BIT7_MASK (0x00000080UL)"
.LASF374:
	.string	"HPMSOC_HAS_HPMSDK_ENET y"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF376:
	.string	"HPMSOC_HAS_HPMSDK_ESC y"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF845:
	.string	"SIZE_1KB (1024UL)"
.LASF608:
	.string	"__SEGGER_RTL_UINT_LEAST8_WIDTH __INT_LEAST8_WIDTH__"
.LASF557:
	.string	"__SEGGER_RTL_INT_LEAST64_MAX __INT_LEAST64_MAX__"
.LASF917:
	.string	"MODBUS_FC_WRITE_SINGLE_REG 0x06"
.LASF340:
	.string	"__HEAP_SIZE__ 0x4000"
.LASF765:
	.string	"INT_FAST16_MAX __SEGGER_RTL_INT_FAST16_MAX"
.LASF910:
	.string	"ATTR_PLACE_AT_FAST_RAM_NON_INIT_WITH_ALIGNMENT(alignment) ATTR_PLACE_AT_FAST_RAM_NON_INIT ATTR_ALIGN(alignment)"
.LASF822:
	.string	"__W volatile"
.LASF531:
	.string	"__SEGGER_RTL_SIZEOF_WCHAR_T __SIZEOF_WCHAR_T__"
.LASF330:
	.string	"__riscv_c 2000000"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF339:
	.string	"__SEGGER_LINKER 1"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF601:
	.string	"__SEGGER_RTL_UINT64_WIDTH 64"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF662:
	.string	"__SEGGER_RTL_ATOMIC_UNLOCK(X) __SEGGER_RTL_X_atomic_unlock(X)"
.LASF522:
	.string	"__SEGGER_RTL_INT_FAST32_T __INT_FAST32_TYPE__"
.LASF858:
	.string	"BIT11_MASK (0x00000800UL)"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 1.1"
.LASF5:
	.string	"__GNUC__ 14"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF580:
	.string	"__SEGGER_RTL_PTRDIFF_MAX __PTRDIFF_MAX__"
.LASF84:
	.string	"__LONG_WIDTH__ 32"
.LASF694:
	.string	"__SEGGER_RTL_CORE_HAS_IDIV_X 0"
.LASF421:
	.string	"__SEGGER_RTL_CORE_HAS_ISA_SIMD 0"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 1.1"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF466:
	.string	"__SEGGER_RTL_FLOAT32_C_COMPLEX float _Complex"
.LASF341:
	.string	"__SES_VERSION 82602"
.LASF326:
	.string	"__riscv_arch_test 1"
.LASF898:
	.string	"ATTR_PLACE_AT_NONCACHEABLE_BSS_WITH_ALIGNMENT(alignment) ATTR_PLACE_AT_NONCACHEABLE_BSS ATTR_ALIGN(alignment)"
.LASF931:
	.string	"reg_addr"
.LASF699:
	.string	"__SEGGER_RTL_SIGNAL_SIGILL 2"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF928:
	.string	"long long int"
.LASF930:
	.string	"slave_id"
.LASF397:
	.string	"__SEGGER_RTL_STDC_VERSION_C99 199901L"
.LASF647:
	.string	"__SEGGER_RTL_OPTIMIZE 0"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 1.1"
.LASF450:
	.ascii	"__SEGGER_RTL_SMULL(lo,h"
	.string	"i,x0,x1) do { unsigned __tmphi, __tmplo; __asm__(\"mulh %0, %1, %2\" : \"=r\"(__tmphi) : \"r\"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); __asm__(\"mul  %0, %1, %2\" : \"=r\"(__tmplo) : \"r\"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); hi = __tmphi; lo = __tmplo; } while (0)"
.LASF578:
	.string	"__SEGGER_RTL_WCHAR_MAX __WCHAR_MAX__"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF563:
	.string	"__SEGGER_RTL_INT_FAST16_MAX __INT_FAST16_MAX__"
.LASF324:
	.string	"__riscv_cmodel_medlow 1"
.LASF139:
	.string	"__INTPTR_WIDTH__ 32"
.LASF308:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF618:
	.string	"__SEGGER_RTL_UINT_FAST8_WIDTH __INT_FAST8_WIDTH__"
.LASF530:
	.string	"__SEGGER_RTL_WCHAR_T __WCHAR_TYPE__"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF938:
	.string	"C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\ecat_io\\application\\modbus_rtu.c"
.LASF644:
	.string	"__SEGGER_RTL_ATOMIC_U8 __SEGGER_RTL_U8"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 1.1"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.1)"
.LASF555:
	.string	"__SEGGER_RTL_INT_LEAST32_MIN (-__SEGGER_RTL_INT_LEAST32_MAX - 1)"
.LASF91:
	.string	"__INTMAX_C(c) c ## LL"
.LASF532:
	.string	"__SEGGER_RTL_PTRDIFF_T __PTRDIFF_TYPE__"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF46:
	.string	"__INT64_TYPE__ long long int"
.LASF189:
	.string	"__LDBL_MIN__ 1.1"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF313:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF707:
	.string	"assert"
.LASF749:
	.string	"INT_LEAST32_WIDTH __SEGGER_RTL_INT_LEAST32_WIDTH"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.1"
.LASF372:
	.string	"HPMSOC_HAS_HPMSDK_SYNT y"
.LASF755:
	.string	"UINT_LEAST16_MAX __SEGGER_RTL_UINT_LEAST16_MAX"
.LASF770:
	.string	"INT_FAST64_MIN __SEGGER_RTL_INT_FAST64_MIN"
.LASF615:
	.string	"__SEGGER_RTL_INT_FAST32_WIDTH __INT_FAST32_WIDTH__"
.LASF463:
	.string	"__SEGGER_RTL_KILL(X) __asm__(\"# %0\" : \"+r\"(X))"
.LASF621:
	.string	"__SEGGER_RTL_UINT_FAST64_WIDTH __INT_FAST64_WIDTH__"
.LASF399:
	.string	"__SEGGER_RTL_STDC_VERSION_C18 201710L"
.LASF834:
	.string	"IS_HPM_BITMASK_CLR(val,mask) (((uint32_t)(val) & (uint32_t)(mask)) == 0U)"
.LASF703:
	.string	"__SEGGER_RTL_SIGNAL_MAX 6"
.LASF934:
	.string	"Modbus_BuildReadPacket"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF623:
	.string	"__SEGGER_RTL_INTPTR_WIDTH __INTPTR_WIDTH__"
.LASF585:
	.string	"__SEGGER_RTL_SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__"
.LASF805:
	.string	"WCHAR_MIN __SEGGER_RTL_WCHAR_MIN"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF277:
	.string	"__FLT64X_DIG__ 33"
.LASF172:
	.string	"__DBL_MIN__ ((double)1.1)"
.LASF899:
	.string	"ATTR_PLACE_AT_NONCACHEABLE_INIT ATTR_PLACE_AT(\".noncacheable.init\")"
.LASF740:
	.string	"UINTMAX_WIDTH __SEGGER_RTL_UINTMAX_WIDTH"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF487:
	.string	"__SEGGER_RTL_SIZEOF_INT __SIZEOF_INT__"
.LASF550:
	.string	"__SEGGER_RTL_UINT_LEAST8_MAX __UINT_LEAST8_MAX__"
.LASF785:
	.string	"SIZE_WIDTH __SEGGER_RTL_SIZE_WIDTH"
.LASF203:
	.string	"__FLT16_MAX__ 1.1"
.LASF820:
	.string	"__R volatile const"
.LASF61:
	.string	"__INT_FAST32_TYPE__ int"
.LASF267:
	.string	"__FLT32X_MAX__ 1.1"
.LASF471:
	.string	"__SEGGER_RTL_NAN_FORMAT_IEEE 0"
.LASF919:
	.string	"unsigned int"
.LASF767:
	.string	"INT_FAST32_MIN __SEGGER_RTL_INT_FAST32_MIN"
.LASF447:
	.string	"__SEGGER_RTL_WORKAROUND_CLANG_AS_SYMBOL_BUG 0"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF698:
	.string	"__SEGGER_RTL_SIGNAL_SIGFPE 1"
.LASF791:
	.string	"RSIZE_MAX (SIZE_MAX / 2)"
.LASF730:
	.string	"UINT16_MAX __SEGGER_RTL_UINT16_MAX"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF427:
	.string	"__SEGGER_RTL_CORE_HAS_ANDN_ORN_XORN 1"
.LASF418:
	.string	"__SEGGER_RTL_NO_RETURN _Noreturn"
.LASF781:
	.string	"PTRDIFF_MIN __SEGGER_RTL_PTRDIFF_MIN"
.LASF720:
	.string	"INT16_MAX __SEGGER_RTL_INT16_MAX"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF526:
	.string	"__SEGGER_RTL_INTMAX_T __INTMAX_TYPE__"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF449:
	.string	"__SEGGER_RTL_SMULL_HI(x0,x1) ({ int __p; __asm__(\"mulh %0, %1, %2\" : \"=r\"(__p) : \"r\"((unsigned)(x0)), \"r\"((unsigned)(x1))); __p; })"
.LASF721:
	.string	"INT16_WIDTH __SEGGER_RTL_INT16_WIDTH"
.LASF407:
	.string	"__SEGGER_RTL_RV_NEG_INF (1<<0)"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF477:
	.string	"__WIDTH_NONE 0"
.LASF485:
	.string	"__SEGGER_RTL_INCLUDE_BENCHMARKING 0"
.LASF800:
	.string	"UINT16_C(x) __SEGGER_RTL_UINT16_C(x)"
.LASF865:
	.string	"BIT18_MASK (0x00040000UL)"
.LASF315:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF0:
	.string	"__STDC__ 1"
.LASF753:
	.string	"UINT_LEAST8_MAX __SEGGER_RTL_UINT_LEAST8_MAX"
.LASF705:
	.string	"__SEGGER_RTL_MAX_CATEGORY 5"
.LASF285:
	.string	"__FLT64X_MIN__ 1.1"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF445:
	.string	"__SEGGER_RTL_ATOMIC_U32 unsigned"
.LASF327:
	.string	"__riscv_i 2001000"
.LASF342:
	.string	"FLASH_XIP 1"
.LASF648:
	.string	"__SEGGER_RTL_FORMAT_INT_WIDTH __WIDTH_LONG_LONG"
.LASF718:
	.string	"INT8_WIDTH __SEGGER_RTL_INT8_WIDTH"
.LASF524:
	.string	"__SEGGER_RTL_INT_FAST64_T __INT_FAST64_TYPE__"
.LASF533:
	.string	"__SEGGER_RTL_INTPTR_T __INTPTR_TYPE__"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF832:
	.string	"IS_HPM_BITMASK_SET(val,mask) (((uint32_t)(val) & (uint32_t)(mask)) != 0U)"
.LASF515:
	.string	"__SEGGER_RTL_UINT_LEAST32_T __UINT_LEAST32_TYPE__"
.LASF712:
	.string	"true 1"
.LASF404:
	.string	"__SEGGER_RTL_STDC_VERSION __STDC_VERSION__"
.LASF364:
	.string	"HPMSOC_HAS_HPMSDK_ACMP y"
.LASF501:
	.string	"__SEGGER_RTL_UINT32_T __UINT32_TYPE__"
.LASF815:
	.string	"__SEGGER_RTL_LOCALE_T_DEFINED "
.LASF254:
	.string	"__FLT128_EPSILON__ 1.1"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF640:
	.string	"__SEGGER_RTL_INT64_C(X) __INT64_C(X)"
.LASF301:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF461:
	.string	"__SEGGER_RTL_UNLIKELY(X) __builtin_expect((X), 0)"
.LASF881:
	.string	"HPM_2_PI (6.28318530717958647692)"
.LASF554:
	.string	"__SEGGER_RTL_INT_LEAST32_MAX __INT_LEAST32_MAX__"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.1)"
.LASF821:
	.string	"__RW volatile"
.LASF411:
	.string	"__SEGGER_RTL_RV_POS_ZERO (1<<4)"
.LASF458:
	.string	"__SEGGER_RTL_NEVER_INLINE __attribute__((__noinline__, __noclone__))"
.LASF894:
	.string	"ATTR_PLACE_AT_WITH_ALIGNMENT(section_name,alignment) ATTR_PLACE_AT(section_name) ATTR_ALIGN(alignment)"
.LASF628:
	.string	"__SEGGER_RTL_SIZE_WIDTH __SIZE_WIDTH__"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF331:
	.string	"__riscv_zicsr 2000000"
.LASF537:
	.string	"__SEGGER_RTL_INT8_MIN (-__SEGGER_RTL_INT8_MAX - 1)"
.LASF423:
	.string	"__SEGGER_RTL_CORE_HAS_MUL_MULH 1"
.LASF882:
	.string	"HPM_2_PI_FLOAT (6.28318530717958647692f)"
.LASF723:
	.string	"INT32_MAX __SEGGER_RTL_INT32_MAX"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF884:
	.string	"HPM_HALF_PI_FLOAT (1.57079632679489661923f)"
.LASF733:
	.string	"UINT32_WIDTH __SEGGER_RTL_UINT32_WIDTH"
.LASF816:
	.string	"EXIT_SUCCESS 0"
.LASF432:
	.string	"__SEGGER_RTL_CLZ_U32(X) __builtin_clz(X)"
.LASF688:
	.string	"__SEGGER_RTL_HUGE_VALL __builtin_huge_vall()"
.LASF385:
	.string	"HPMSOC_HAS_HPMSDK_HYBRID_XPI y"
.LASF480:
	.string	"__SEGGER_RTL_SIDE_BY_SIDE 0"
.LASF630:
	.string	"__SEGGER_RTL_WINT_WIDTH __WINT_WIDTH__"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF325:
	.string	"__riscv_misaligned_slow 1"
.LASF551:
	.string	"__SEGGER_RTL_INT_LEAST16_MAX __INT_LEAST16_MAX__"
.LASF684:
	.string	"__SEGGER_RTL_INFINITY __builtin_inff()"
.LASF836:
	.string	"HPM_BREAK_IF(cond) if (cond) { break; }"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF459:
	.string	"__SEGGER_RTL_ALWAYS_INLINE __inline__ __attribute__((__always_inline__))"
.LASF523:
	.string	"__SEGGER_RTL_UINT_FAST32_T __UINT_FAST32_TYPE__"
.LASF873:
	.string	"BIT26_MASK (0x04000000UL)"
.LASF425:
	.string	"__SEGGER_RTL_CORE_HAS_CLZ32 0"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF428:
	.string	"__SEGGER_RTL_CORE_HAS_BSET_BCLR_BINV_BEXT 1"
.LASF655:
	.string	"__SEGGER_RTL_MINIMAL_LOCALE 0"
.LASF806:
	.string	"WCHAR_MAX __SEGGER_RTL_WCHAR_MAX"
.LASF674:
	.string	"__SEGGER_RTL_CLZ_U64_SYNTHESIZED "
.LASF496:
	.string	"__SEGGER_RTL_UINT16_T __UINT16_TYPE__"
.LASF598:
	.string	"__SEGGER_RTL_UINT8_WIDTH 8"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF669:
	.string	"__SEGGER_RTL_RODATA_IS_RW 0"
.LASF915:
	.string	"WFI() __asm volatile(\"wfi\")"
.LASF666:
	.string	"__SEGGER_RTL_BitcastToF32(X) __SEGGER_RTL_BitcastToF32_inline(X)"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF625:
	.string	"__SEGGER_RTL_INTMAX_WIDTH __INTMAX_WIDTH__"
.LASF612:
	.string	"__SEGGER_RTL_UINT_LEAST128_WIDTH __SEGGER_RTL_UINT128_WIDTH"
.LASF867:
	.string	"BIT20_MASK (0x00100000UL)"
.LASF675:
	.string	"__SEGGER_RTL_FAST_CODE_SECTION(X) "
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF430:
	.string	"__SEGGER_RTL_CORE_HAS_FUSED_DIVREM 0"
.LASF299:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF441:
	.string	"__SEGGER_RTL_FP_HW 0"
.LASF607:
	.string	"__SEGGER_RTL_INT_LEAST128_WIDTH __SEGGER_RTL_INT128_WIDTH"
.LASF350:
	.string	"HPMSOC_HAS_HPMSDK_EUI y"
.LASF125:
	.string	"__UINT64_C(c) c ## ULL"
.LASF283:
	.string	"__FLT64X_MAX__ 1.1"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF892:
	.string	"ATTR_PACKED __attribute__((packed, aligned(1)))"
.LASF760:
	.string	"UINT_LEAST64_WIDTH __SEGGER_RTL_UINT_LEAST64_WIDTH"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF680:
	.string	"__SEGGER_RTL_U64_MK(H,L) (((__SEGGER_RTL_U64)(__SEGGER_RTL_U32)(H) << 32) + (__SEGGER_RTL_U32)(L))"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF652:
	.string	"__SEGGER_RTL_FORMAT_CHAR_CLASS 1"
.LASF741:
	.string	"INT_LEAST8_MIN __SEGGER_RTL_INT_LEAST8_MIN"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF389:
	.string	"MODBUS_RTU_H "
.LASF396:
	.string	"__SEGGER_RTL_STDC_VERSION_C94 199409L"
.LASF620:
	.string	"__SEGGER_RTL_UINT_FAST32_WIDTH __INT_FAST32_WIDTH__"
.LASF929:
	.string	"long long unsigned int"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF542:
	.string	"__SEGGER_RTL_INT32_MAX __INT32_MAX__"
.LASF35:
	.string	"__PTRDIFF_TYPE__ int"
.LASF727:
	.string	"INT64_WIDTH __SEGGER_RTL_INT64_WIDTH"
.LASF924:
	.string	"uint16_t"
.LASF60:
	.string	"__INT_FAST16_TYPE__ int"
.LASF606:
	.string	"__SEGGER_RTL_INT_LEAST64_WIDTH __INT_LEAST64_WIDTH__"
.LASF807:
	.string	"WCHAR_WIDTH __SEGGER_RTL_WCHAR_WIDTH"
.LASF486:
	.string	"__SEGGER_RTL_SELECT_TYPESET(T16,T32,T64) T32"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF157:
	.string	"__FLT_EPSILON__ 1.1"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF343:
	.string	"HPMSOC_HAS_HPMSDK_GPIO y"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF708:
	.string	"assert(e) ((e) ? (void)0 : __SEGGER_RTL_X_assert(#e, __FILE__, __LINE__))"
.LASF156:
	.string	"__FLT_MIN__ 1.1"
.LASF719:
	.string	"INT16_MIN __SEGGER_RTL_INT16_MIN"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 1.1"
.LASF597:
	.string	"__SEGGER_RTL_INT128_WIDTH 128"
.LASF15:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF657:
	.string	"__SEGGER_RTL_ATEXIT_COUNT 1"
.LASF366:
	.string	"HPMSOC_HAS_HPMSDK_PTPC y"
.LASF904:
	.string	"ATTR_PLACE_AT_FAST_RAM_WITH_ALIGNMENT(alignment) ATTR_PLACE_AT_FAST_RAM ATTR_ALIGN(alignment)"
.LASF761:
	.string	"INT_FAST8_MIN __SEGGER_RTL_INT_FAST8_MIN"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 1.1"
.LASF370:
	.string	"HPMSOC_HAS_HPMSDK_SDM y"
.LASF492:
	.string	"__SEGGER_RTL_UINT8_T __UINT8_TYPE__"
.LASF8:
	.string	"__VERSION__ \"14.3.0\""
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF939:
	.string	"C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\ecat_io\\hpm5e00evk_flash_xip_debug\\segger_embedded_studio"
.LASF704:
	.string	"__SEGGER_RTL_VERSION 42808"
.LASF639:
	.string	"__SEGGER_RTL_UINT32_C(X) __UINT32_C(X)"
.LASF329:
	.string	"__riscv_a 2001000"
.LASF624:
	.string	"__SEGGER_RTL_UINTPTR_WIDTH __INTPTR_WIDTH__"
.LASF439:
	.string	"__SEGGER_RTL_MAX_ALIGN 16"
.LASF509:
	.string	"__SEGGER_RTL_U64_C(X) __SEGGER_RTL_UINT64_C(X)"
.LASF850:
	.string	"BIT3_MASK (0x00000008UL)"
.LASF701:
	.string	"__SEGGER_RTL_SIGNAL_SIGSEGV 4"
.LASF504:
	.string	"__SEGGER_RTL_INT64_T __INT64_TYPE__"
.LASF429:
	.string	"__SEGGER_RTL_CORE_HAS_SHxADD 1"
.LASF905:
	.string	"ATTR_PLACE_AT_FAST_RAM_BSS ATTR_PLACE_AT(\".fast_ram.bss\")"
.LASF869:
	.string	"BIT22_MASK (0x00400000UL)"
.LASF637:
	.string	"__SEGGER_RTL_UINT16_C(X) __UINT16_C(X)"
.LASF683:
	.string	"__SEGGER_RTL_UNALIGNED_ATTR "
.LASF738:
	.string	"INTMAX_WIDTH __SEGGER_RTL_INTMAX_WIDTH"
.LASF849:
	.string	"BIT2_MASK (0x00000004UL)"
.LASF611:
	.string	"__SEGGER_RTL_UINT_LEAST64_WIDTH __INT_LEAST64_WIDTH__"
.LASF536:
	.string	"__SEGGER_RTL_INT8_MAX __INT8_MAX__"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF671:
	.string	"__SEGGER_RTL_SIDE_BY_SIZE 0"
.LASF475:
	.string	"__WIDTH_LONG 1"
.LASF780:
	.string	"UINT_FAST64_WIDTH __SEGGER_RTL_UINT_FAST64_WIDTH"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF384:
	.string	"HPMSOC_HAS_HPMSDK_PGPR y"
.LASF394:
	.string	"__SEGGER_RTL_BOOL _Bool"
.LASF318:
	.string	"__riscv_atomic 1"
.LASF507:
	.string	"__SEGGER_RTL_UINT64_T __UINT64_TYPE__"
.LASF731:
	.string	"UINT16_WIDTH __SEGGER_RTL_UINT16_WIDTH"
.LASF709:
	.string	"static_assert _Static_assert"
.LASF401:
	.string	"__SEGGER_RTL_STDC_VERSION_CPP11 201103L"
.LASF221:
	.string	"__FLT32_MIN__ 1.1"
.LASF448:
	.string	"__SEGGER_RTL_STACK_ALIGN 16"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.1"
.LASF641:
	.string	"__SEGGER_RTL_UINT64_C(X) __UINT64_C(X)"
.LASF6:
	.string	"__GNUC_MINOR__ 3"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF595:
	.string	"__SEGGER_RTL_INT32_WIDTH 32"
.LASF375:
	.string	"HPMSOC_HAS_HPMSDK_USB y"
.LASF38:
	.string	"__INTMAX_TYPE__ long long int"
.LASF875:
	.string	"BIT28_MASK (0x10000000UL)"
.LASF306:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF517:
	.string	"__SEGGER_RTL_UINT_LEAST64_T __UINT_LEAST64_TYPE__"
.LASF654:
	.string	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION"
.LASF871:
	.string	"BIT24_MASK (0x01000000UL)"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF840:
	.string	"HPM_NUM_TO_EVEN_CEILING(x) ((x + 1) & 0xFFFFFFFEUL)"
.LASF864:
	.string	"BIT17_MASK (0x00020000UL)"
.LASF489:
	.string	"__SEGGER_RTL_SIZEOF_PTR __SIZEOF_POINTER__"
.LASF900:
	.string	"ATTR_PLACE_AT_NONCACHEABLE_INIT_WITH_ALIGNMENT(alignment) ATTR_PLACE_AT_NONCACHEABLE_INIT ATTR_ALIGN(alignment)"
.LASF940:
	.string	"Modbus_CRC16"
.LASF514:
	.string	"__SEGGER_RTL_INT_LEAST32_T __INT_LEAST32_TYPE__"
.LASF417:
	.string	"__SEGGER_RTL_NO_BUILTIN __attribute__((__optimize__(\"-fno-tree-loop-distribute-patterns\")))"
.LASF68:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF292:
	.string	"__REGISTER_PREFIX__ "
.LASF886:
	.string	"MAKE_STATUS(group,code) ((uint32_t)(group)*1000U + (uint32_t)(code))"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF468:
	.string	"__SEGGER_RTL_LDOUBLE_C_COMPLEX long double _Complex"
.LASF155:
	.string	"__FLT_NORM_MAX__ 1.1"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF552:
	.string	"__SEGGER_RTL_INT_LEAST16_MIN (-__SEGGER_RTL_INT_LEAST16_MAX - 1)"
.LASF823:
	.string	"__I __R"
.LASF434:
	.string	"__SEGGER_RTL_INCLUDE_GNU_API 2"
.LASF488:
	.string	"__SEGGER_RTL_SIZEOF_LONG __SIZEOF_LONG__"
.LASF773:
	.string	"UINT_FAST8_MAX __SEGGER_RTL_UINT_FAST8_MAX"
.LASF779:
	.string	"UINT_FAST64_MAX __SEGGER_RTL_UINT_FAST64_MAX"
.LASF395:
	.string	"__SEGGER_RTL_STDC_VERSION_C90 199000L"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF937:
	.string	"GNU C17 14.3.0 -fmessage-length=0 -march=rv32imac_zicsr_zifencei_zba_zbb_zbc_zbs -mabi=ilp32 -mrelax -gdwarf-4 -g3 -gpubnames -fshort-enums -fno-signed-char -fno-common -fomit-frame-pointer -fno-builtin -ffunction-sections -fdata-sections -g"
.LASF795:
	.string	"INT8_C(x) (x)"
.LASF677:
	.string	"__SEGGER_RTL_FILE_IMPL __SEGGER_RTL_FILE_impl"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.1"
.LASF813:
	.string	"__SEGGER_RTL_STDLIB_H "
.LASF379:
	.string	"HPMSOC_HAS_HPMSDK_IOC y"
.LASF251:
	.string	"__FLT128_MAX__ 1.1"
.LASF862:
	.string	"BIT15_MASK (0x00008000UL)"
.LASF922:
	.string	"short int"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF412:
	.string	"__SEGGER_RTL_RV_POS_SUBNORMAL (1<<5)"
.LASF885:
	.string	"HPM_NAN (0.0 / 0.0)"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF453:
	.ascii	"__SEGGER_RTL_SMLAL(lo,hi,x0,x1) do { unsigned __tmp; __asm__"
	.ascii	"(\"mul  %0, %1, %2\" : \"=r\"(__tmp) : \"r\"((unsigned)(x0))"
	.ascii	", \"r\"((unsigned)(x1)) ); __asm__(\"add  %0, %0, %1\" : \"+"
	.ascii	"r\"(lo) : \"r\"(__tmp) ); __asm__(\"sltu %0, %1, %2\" : \"=r"
	.ascii	"\"(_"
	.string	"_tmp) : \"r\"((unsigned)(lo)), \"r\"((unsigned)__tmp) ); __asm__(\"add  %0, %0, %1\" : \"+r\"(hi) : \"r\"(__tmp) ); __asm__(\"mulh %0, %1, %2\" : \"=r\"(__tmp) : \"r\"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); __asm__(\"add  %0, %0, %1\" : \"+r\"(hi) : \"r\"(__tmp) ); } while (0)"
.LASF541:
	.string	"__SEGGER_RTL_UINT16_MAX __UINT16_MAX__"
.LASF365:
	.string	"HPMSOC_HAS_HPMSDK_MCAN y"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF798:
	.string	"INT64_C(x) __SEGGER_RTL_INT64_C(x)"
.LASF827:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF828:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF863:
	.string	"BIT16_MASK (0x00010000UL)"
.LASF408:
	.string	"__SEGGER_RTL_RV_NEG_NORMAL (1<<1)"
.LASF788:
	.string	"INTPTR_WIDTH __SEGGER_RTL_INTPTR_WIDTH"
.LASF573:
	.string	"__SEGGER_RTL_INTMAX_MIN (-__SEGGER_RTL_INTMAX_MAX - 1)"
.LASF609:
	.string	"__SEGGER_RTL_UINT_LEAST16_WIDTH __INT_LEAST16_WIDTH__"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF602:
	.string	"__SEGGER_RTL_UINT128_WIDTH 128"
.LASF754:
	.string	"UINT_LEAST8_WIDTH __SEGGER_RTL_UINT_LEAST8_WIDTH"
.LASF673:
	.string	"__SEGGER_RTL_CLZ_U64(X) __SEGGER_RTL_CLZ_U64_inline(X)"
.LASF351:
	.string	"HPMSOC_HAS_HPMSDK_UART y"
.LASF870:
	.string	"BIT23_MASK (0x00800000UL)"
.LASF338:
	.string	"__SES_RISCV 1"
.LASF762:
	.string	"INT_FAST8_MAX __SEGGER_RTL_INT_FAST8_MAX"
.LASF803:
	.string	"INTMAX_C(x) __SEGGER_RTL_INTMAX_C(x)"
.LASF547:
	.string	"__SEGGER_RTL_UINT64_MAX __UINT64_MAX__"
.LASF336:
	.string	"__riscv_zbs 1000000"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF319:
	.string	"__riscv_mul 1"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF219:
	.string	"__FLT32_MAX__ 1.1"
.LASF842:
	.string	"HPM_CHECK_RET(x) do { stat = (x); if (status_success != stat) { return stat; } } while (false)"
.LASF774:
	.string	"UINT_FAST8_WIDTH __SEGGER_RTL_UINT_FAST8_WIDTH"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF819:
	.string	"MB_CUR_MAX __SEGGER_RTL_mb_cur_max()"
.LASF422:
	.string	"__SEGGER_RTL_CORE_HAS_ISA_ANDES_V5 0"
.LASF381:
	.string	"HPMSOC_HAS_HPMSDK_PPOR y"
.LASF455:
	.string	"__SEGGER_RTL_UMULL(lo,hi,x0,x1) do { __asm__(\"mulhu %0, %1, %2\" : \"=r\"(hi) : \"r\"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); __asm__(\"mul   %0, %1, %2\" : \"=r\"(lo) : \"r\"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); } while (0)"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF362:
	.string	"HPMSOC_HAS_HPMSDK_LOBS y"
.LASF814:
	.string	"__SEGGER_RTL_WCHAR_T_DEFINED "
.LASF410:
	.string	"__SEGGER_RTL_RV_NEG_ZERO (1<<3)"
.LASF856:
	.string	"BIT9_MASK (0x00000200UL)"
.LASF650:
	.string	"__SEGGER_RTL_FORMAT_WCHAR 1"
.LASF333:
	.string	"__riscv_zba 1000000"
.LASF534:
	.string	"__SEGGER_RTL_UINTPTR_T __UINTPTR_TYPE__"
.LASF314:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF426:
	.string	"__SEGGER_RTL_CORE_HAS_CLZ 1"
.LASF793:
	.string	"WINT_MAX __SEGGER_RTL_WINT_MAX"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF493:
	.string	"__SEGGER_RTL_U8 __SEGGER_RTL_UINT8_T"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF690:
	.string	"__SEGGER_RTL_RODATA const"
.LASF906:
	.string	"ATTR_PLACE_AT_FAST_RAM_BSS_WITH_ALIGNMENT(alignment) ATTR_PLACE_AT_FAST_RAM_BSS ATTR_ALIGN(alignment)"
.LASF857:
	.string	"BIT10_MASK (0x00000400UL)"
.LASF825:
	.string	"__O __W"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF355:
	.string	"HPMSOC_HAS_HPMSDK_TSNS y"
.LASF348:
	.string	"HPMSOC_HAS_HPMSDK_GPTMR y"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF874:
	.string	"BIT27_MASK (0x08000000UL)"
.LASF902:
	.string	"ATTR_PLACE_AT_NONCACHEABLE_NON_INIT_WITH_ALIGNMENT(alignment) ATTR_PLACE_AT_NONCACHEABLE_NON_INIT ATTR_ALIGN(alignment)"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF499:
	.string	"__SEGGER_RTL_I32 __SEGGER_RTL_INT32_T"
.LASF328:
	.string	"__riscv_m 2000000"
.LASF548:
	.string	"__SEGGER_RTL_INT_LEAST8_MAX __INT_LEAST8_MAX__"
.LASF879:
	.string	"HPM_PI (3.14159265358979323846)"
.LASF664:
	.string	"__SEGGER_RTL_OFFSETOF(s,m) __builtin_offsetof(s, m)"
.LASF725:
	.string	"INT64_MIN __SEGGER_RTL_INT64_MIN"
.LASF570:
	.string	"__SEGGER_RTL_INT_FAST64_MIN (-__SEGGER_RTL_INT_FAST64_MAX - 1)"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF525:
	.string	"__SEGGER_RTL_UINT_FAST64_T __UINT_FAST64_TYPE__"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF802:
	.string	"UINT64_C(x) __SEGGER_RTL_UINT64_C(x)"
.LASF893:
	.string	"ATTR_PLACE_AT(section_name) __attribute__((section(section_name)))"
.LASF470:
	.string	"__SEGGER_RTL_STRING_ASM 1"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF682:
	.string	"__SEGGER_RTL_I64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_RTL_U64)(X))"
.LASF789:
	.string	"UINTPTR_MAX __SEGGER_RTL_UINTPTR_MAX"
.LASF891:
	.string	"ATTR_ALIGN(alignment) __attribute__((aligned(alignment)))"
.LASF916:
	.string	"MODBUS_FC_READ_HOLDING_REG 0x03"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF435:
	.string	"__SEGGER_RTL_BYTE_ORDER (-1)"
.LASF750:
	.string	"INT_LEAST64_MIN __SEGGER_RTL_INT_LEAST64_MIN"
.LASF681:
	.string	"__SEGGER_RTL_I64_H(X) ((__SEGGER_RTL_I32)((__SEGGER_RTL_I64)(X) >> 32))"
.LASF908:
	.string	"ATTR_PLACE_AT_FAST_RAM_INIT_WITH_ALIGNMENT(alignment) ATTR_PLACE_AT_FAST_RAM_INIT ATTR_ALIGN(alignment)"
.LASF354:
	.string	"HPMSOC_HAS_HPMSDK_CRC y"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.1"
.LASF89:
	.string	"__SIZE_WIDTH__ 32"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF571:
	.string	"__SEGGER_RTL_UINT_FAST64_MAX __UINT_FAST64_MAX__"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF545:
	.string	"__SEGGER_RTL_INT64_MAX __INT64_MAX__"
.LASF457:
	.string	"__SEGGER_RTL_THREAD __thread"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF797:
	.string	"INT32_C(x) (x)"
.LASF890:
	.string	"ATTR_ALWAYS_INLINE __attribute__((always_inline))"
.LASF187:
	.string	"__LDBL_MAX__ 1.1"
.LASF925:
	.string	"short unsigned int"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF206:
	.string	"__FLT16_EPSILON__ 1.1"
.LASF734:
	.string	"UINT64_MAX __SEGGER_RTL_UINT64_MAX"
.LASF728:
	.string	"UINT8_MAX __SEGGER_RTL_UINT8_MAX"
.LASF686:
	.string	"__SEGGER_RTL_HUGE_VAL __builtin_huge_val()"
.LASF317:
	.string	"__riscv_compressed 1"
.LASF479:
	.string	"__WIDTH_DOUBLE 2"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF462:
	.string	"__SEGGER_RTL_LIKELY(X) __builtin_expect((X), 1)"
.LASF400:
	.string	"__SEGGER_RTL_STDC_VERSION_CPP98 199711L"
.LASF714:
	.string	"__bool_true_false_are_defined 1"
.LASF433:
	.string	"__SEGGER_RTL_VA_LIST __builtin_va_list"
.LASF737:
	.string	"INTMAX_MAX __SEGGER_RTL_INTMAX_MAX"
.LASF826:
	.string	"ARRAY_SIZE(a) (sizeof(a) / sizeof((a)[0]))"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF808:
	.string	"SIG_ATOMIC_MIN __SEGGER_RTL_SIG_ATOMIC_MIN"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF634:
	.string	"__SEGGER_RTL_INT8_C(X) __INT8_C(X)"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 1.1"
.LASF349:
	.string	"HPMSOC_HAS_HPMSDK_OWR y"
.LASF763:
	.string	"INT_FAST8_WIDTH __SEGGER_RTL_INT_FAST8_WIDTH"
.LASF817:
	.string	"EXIT_FAILURE 1"
.LASF766:
	.string	"INT_FAST16_WIDTH __SEGGER_RTL_INT_FAST16_WIDTH"
.LASF769:
	.string	"INT_FAST32_WIDTH __SEGGER_RTL_INT_FAST32_WIDTH"
.LASF438:
	.string	"__SEGGER_RTL_INCLUDE_GNU_FP16_API 1"
.LASF569:
	.string	"__SEGGER_RTL_INT_FAST64_MAX __INT_FAST64_MAX__"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF695:
	.string	"__SEGGER_RTL_CORE_HAS_UDIVM_X 0"
.LASF876:
	.string	"BIT29_MASK (0x20000000UL)"
.LASF347:
	.string	"HPMSOC_HAS_HPMSDK_PLICSW y"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF933:
	.string	"Modbus_BuildWritePacket"
.LASF748:
	.string	"INT_LEAST32_MAX __SEGGER_RTL_INT_LEAST32_MAX"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF659:
	.string	"__SEGGER_RTL_STATE_THREAD __SEGGER_RTL_THREAD"
.LASF787:
	.string	"INTPTR_MAX __SEGGER_RTL_INTPTR_MAX"
.LASF235:
	.string	"__FLT64_MAX__ 1.1"
.LASF45:
	.string	"__INT32_TYPE__ long int"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF584:
	.string	"__SEGGER_RTL_UINTPTR_MAX __UINTPTR_MAX__"
.LASF353:
	.string	"HPMSOC_HAS_HPMSDK_SPI y"
.LASF490:
	.string	"__SEGGER_RTL_INT8_T __INT8_TYPE__"
.LASF358:
	.string	"HPMSOC_HAS_HPMSDK_DMAMUX y"
.LASF180:
	.string	"__LDBL_DIG__ 33"
.LASF238:
	.string	"__FLT64_EPSILON__ 1.1"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF406:
	.string	"__SEGGER_RTL_RISCV_CONF_H "
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF576:
	.string	"__SEGGER_RTL_WINT_MAX __WINT_MAX__"
.LASF743:
	.string	"INT_LEAST8_WIDTH __SEGGER_RTL_INT_LEAST8_WIDTH"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF636:
	.string	"__SEGGER_RTL_INT16_C(X) __INT16_C(X)"
.LASF764:
	.string	"INT_FAST16_MIN __SEGGER_RTL_INT_FAST16_MIN"
.LASF796:
	.string	"INT16_C(x) (x)"
.LASF861:
	.string	"BIT14_MASK (0x00004000UL)"
.LASF553:
	.string	"__SEGGER_RTL_UINT_LEAST16_MAX __UINT_LEAST16_MAX__"
	.ident	"GCC: (based on GCC 14.3.0/Binutils 2.44 source release) 14.3.0"
	.section	.note.GNU-stack,"",@progbits
