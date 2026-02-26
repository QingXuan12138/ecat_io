	.file	"hpm_ecat_phy.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\port\\hpm_ecat_phy.c"
	.section	.text.gpio_write_pin,"ax",@progbits
	.align	1
	.type	gpio_write_pin, @function
gpio_write_pin:
.LFB204:
	.file 2 "../../../../../drivers/inc/hpm_gpio_drv.h"
	.loc 2 95 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,12(sp)
	sw	a1,8(sp)
	mv	a5,a2
	mv	a4,a3
	sb	a5,7(sp)
	mv	a5,a4
	sb	a5,6(sp)
	.loc 2 96 8
	lbu	a5,6(sp)
	beq	a5,zero,.L2
	.loc 2 97 31
	lbu	a5,7(sp)
	li	a4,1
	sll	a5,a4,a5
	mv	a3,a5
	.loc 2 97 27
	lw	a4,12(sp)
	lw	a5,8(sp)
	addi	a5,a5,16
	slli	a5,a5,4
	add	a5,a4,a5
	sw	a3,4(a5)
	.loc 2 101 1
	j	.L4
.L2:
	.loc 2 99 33
	lbu	a5,7(sp)
	li	a4,1
	sll	a5,a4,a5
	mv	a3,a5
	.loc 2 99 29
	lw	a4,12(sp)
	lw	a5,8(sp)
	addi	a5,a5,16
	slli	a5,a5,4
	add	a5,a4,a5
	sw	a3,8(a5)
.L4:
	.loc 2 101 1
	nop
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE204:
	.size	gpio_write_pin, .-gpio_write_pin
	.section	.text.ecat_phy_reset,"ax",@progbits
	.align	1
	.globl	ecat_phy_reset
	.type	ecat_phy_reset, @function
ecat_phy_reset:
.LFB228:
	.loc 1 13 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 14 5
	li	a3,0
	li	a2,24
	li	a1,1
	li	a0,-267583488
	call	gpio_write_pin
	.loc 1 16 5
	li	a3,0
	li	a2,24
	li	a1,1
	li	a0,-267583488
	call	gpio_write_pin
	.loc 1 19 5
	li	a3,0
	li	a2,24
	li	a1,1
	li	a0,-267583488
	call	gpio_write_pin
	.loc 1 21 5
	li	a0,1
	call	board_delay_ms
	.loc 1 22 5
	li	a3,1
	li	a2,24
	li	a1,1
	li	a0,-267583488
	call	gpio_write_pin
	.loc 1 24 5
	li	a3,1
	li	a2,24
	li	a1,1
	li	a0,-267583488
	call	gpio_write_pin
	.loc 1 27 5
	li	a3,1
	li	a2,24
	li	a1,1
	li	a0,-267583488
	call	gpio_write_pin
	.loc 1 29 5
	li	a0,5
	call	board_delay_ms
	.loc 1 30 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE228:
	.size	ecat_phy_reset, .-ecat_phy_reset
	.section	.text.ecat_phy_keep_reset,"ax",@progbits
	.align	1
	.globl	ecat_phy_keep_reset
	.type	ecat_phy_keep_reset, @function
ecat_phy_keep_reset:
.LFB229:
	.loc 1 33 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 34 5
	li	a3,0
	li	a2,24
	li	a1,1
	li	a0,-267583488
	call	gpio_write_pin
	.loc 1 36 5
	li	a3,0
	li	a2,24
	li	a1,1
	li	a0,-267583488
	call	gpio_write_pin
	.loc 1 39 5
	li	a3,0
	li	a2,24
	li	a1,1
	li	a0,-267583488
	call	gpio_write_pin
	.loc 1 41 5
	li	a0,1
	call	board_delay_ms
	.loc 1 42 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE229:
	.size	ecat_phy_keep_reset, .-ecat_phy_keep_reset
	.section	.text.ecat_jl1111_phy_config_led_mode,"ax",@progbits
	.align	1
	.type	ecat_jl1111_phy_config_led_mode, @function
ecat_jl1111_phy_config_led_mode:
.LFB230:
	.loc 1 46 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	mv	a5,a1
	sb	a5,11(sp)
	.loc 1 50 12
	lbu	a5,11(sp)
	li	a3,7
	li	a2,31
	mv	a1,a5
	lw	a0,12(sp)
	call	esc_mdio_write
	sw	a0,28(sp)
	.loc 1 51 8
	lw	a5,28(sp)
	beq	a5,zero,.L8
	.loc 1 52 16
	lw	a5,28(sp)
	j	.L9
.L8:
	.loc 1 55 12
	lbu	a5,11(sp)
	li	a3,0
	li	a2,19
	mv	a1,a5
	lw	a0,12(sp)
	call	esc_mdio_write
	sw	a0,28(sp)
	.loc 1 56 8
	lw	a5,28(sp)
	beq	a5,zero,.L10
	.loc 1 57 16
	lw	a5,28(sp)
	j	.L9
.L10:
	.loc 1 60 12
	lbu	a5,11(sp)
	li	a3,0
	li	a2,31
	mv	a1,a5
	lw	a0,12(sp)
	call	esc_mdio_write
	sw	a0,28(sp)
	.loc 1 61 8
	lw	a5,28(sp)
	beq	a5,zero,.L11
	.loc 1 62 16
	lw	a5,28(sp)
	j	.L9
.L11:
	.loc 1 65 12
	li	a5,0
.L9:
	.loc 1 66 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE230:
	.size	ecat_jl1111_phy_config_led_mode, .-ecat_jl1111_phy_config_led_mode
	.section	.text.ecat_jl1111_phy_disable_broadcast_response,"ax",@progbits
	.align	1
	.type	ecat_jl1111_phy_disable_broadcast_response, @function
ecat_jl1111_phy_disable