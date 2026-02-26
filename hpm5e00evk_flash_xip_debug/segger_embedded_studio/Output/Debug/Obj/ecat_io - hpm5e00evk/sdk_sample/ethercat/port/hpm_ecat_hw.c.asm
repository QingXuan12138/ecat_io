	.file	"hpm_ecat_hw.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\port\\hpm_ecat_hw.c"
	.section	.text.gptmr_enable_irq,"ax",@progbits
	.align	1
	.type	gptmr_enable_irq, @function
gptmr_enable_irq:
.LFB146:
	.file 2 "../../../../../drivers/inc/hpm_gptmr_drv.h"
	.loc 2 304 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,12(sp)
	sw	a1,8(sp)
	.loc 2 305 8
	lw	a5,12(sp)
	lw	a4,516(a5)
	.loc 2 305 16
	lw	a5,8(sp)
	or	a4,a4,a5
	lw	a5,12(sp)
	sw	a4,516(a5)
	.loc 2 306 1
	nop
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE146:
	.size	gptmr_enable_irq, .-gptmr_enable_irq
	.section	.text.gptmr_check_status,"ax",@progbits
	.align	1
	.type	gptmr_check_status, @function
gptmr_check_status:
.LFB148:
	.loc 2 326 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,12(sp)
	sw	a1,8(sp)
	.loc 2 327 16
	lw	a5,12(sp)
	lw	a4,512(a5)
	.loc 2 327 21
	lw	a5,8(sp)
	and	a5,a4,a5
	.loc 2 327 29
	lw	a4,8(sp)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 328 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE148:
	.size	gptmr_check_status, .-gptmr_check_status
	.section	.text.gptmr_clear_status,"ax",@progbits
	.align	1
	.type	gptmr_clear_status, @function
gptmr_clear_status:
.LFB149:
	.loc 2 337 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,12(sp)
	sw	a1,8(sp)
	.loc 2 338 13
	lw	a5,12(sp)
	lw	a4,8(sp)
	sw	a4,512(a5)
	.loc 2 339 1
	nop
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE149:
	.size	gptmr_clear_status, .-gptmr_clear_status
	.section	.text.gptmr_channel_is_opmode,"ax",@progbits
	.align	1
	.type	gptmr_channel_is_opmode, @function
gptmr_channel_is_opmode:
.LFB164:
	.loc 2 553 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,12(sp)
	mv	a5,a1
	sb	a5,11(sp)
	.loc 2 554 36
	lbu	a5,11(sp)
	lw	a4,12(sp)
	slli	a5,a5,6
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 554 40
	li	a5,131072
	and	a4,a4,a5
	.loc 2 554 112
	li	a5,-131072
	add	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 555 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE164:
	.size	gptmr_channel_is_opmode, .-gptmr_channel_is_opmode
	.section	.text.gptmr_start_counter,"ax",@progbits
	.align	1
	.type	gptmr_start_counter, @function
gptmr_start_counter:
.LFB176:
	.loc 2 742 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	mv	a5,a1
	sb	a5,11(sp)
	.loc 2 745 10
	lbu	a5,11(sp)
	mv	a1,a5
	lw	a0,12(sp)
	call	gptmr_channel_is_opmode
	mv	a5,a0
	.loc 2 745 9 discriminator 1
	beq	a5,zero,.L8
	.loc 2 746 31
	lbu	a5,11(sp)
	lw	a4,12(sp)
	slli	a5,a5,6
	add	a5,a4,a5
	lw	a4,0(a5)
	lbu	a5,11(sp)
	.loc 2 746 35
	andi	a4,a4,-1025
	lw	a3,12(sp)
	slli	a5,a5,6
	add	a5,a3,a5
	sw	a4,0(a5)
.L8:
	.loc 2 749 27
	lbu	a5,11(sp)
	lw	a4,12(sp)
	slli	a5,a5,6
	add	a5,a4,a5
	lw	a4,0(a5)
	lbu	a5,11(sp)
	.loc 2 749 31
	ori	a4,a4,1024
	lw	a3,12(sp)
	slli	a5,a5,6
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 750 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE176:
	.size	gptmr_start_counter, .-gptmr_start_counter
	.section	.text.esc_core_enable_clock,"ax",@progbits
	.align	1
	.type	esc_core_enable_clock, @function
esc_core_enable_clock:
.LFB251:
	.file 3 "../../../../../drivers/inc/hpm_esc_drv.h"
	.loc 3 89 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,12(sp)
	mv	a5,a1
	sb	a5,11(sp)
	.loc 3 90 8
	lbu	a5,11(sp)
	beq	a5,zero,.L10
	.loc 3 91 12
	lw	a4,12(sp)
	li	a5,126976
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 91 23
	li	a5,8192
	or	a4,a4,a5
	lw	a3,12(sp)
	li	a5,126976
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 3 95 1
	j	.L12
.L10:
	.loc 3 93 12
	lw	a4,12(sp)
	li	a5,126976
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 93 23
	li	a5,-8192
	addi	a5,a5,-1
	and	a4,a4,a5
	lw	a3,12(sp)
	li	a5,126976
	add	a5,a3,a5
	sw	a4,0(a5)
.L12:
	.loc 3 95 1
	nop
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	