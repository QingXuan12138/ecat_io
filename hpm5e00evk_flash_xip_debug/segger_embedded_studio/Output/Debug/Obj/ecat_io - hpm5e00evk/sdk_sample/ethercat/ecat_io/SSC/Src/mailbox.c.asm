	.file	"mailbox.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\ecat_io\\SSC\\Src\\mailbox.c"
	.globl	bReceiveMbxIsLocked
	.section	.sbss.bReceiveMbxIsLocked,"aw",@nobits
	.type	bReceiveMbxIsLocked, @object
	.size	bReceiveMbxIsLocked, 1
bReceiveMbxIsLocked:
	.zero	1
	.globl	bSendMbxIsFull
	.section	.sbss.bSendMbxIsFull,"aw",@nobits
	.type	bSendMbxIsFull, @object
	.size	bSendMbxIsFull, 1
bSendMbxIsFull:
	.zero	1
	.globl	bMbxRunning
	.section	.sbss.bMbxRunning,"aw",@nobits
	.type	bMbxRunning, @object
	.size	bMbxRunning, 1
bMbxRunning:
	.zero	1
	.globl	bMbxRepeatToggle
	.section	.sbss.bMbxRepeatToggle,"aw",@nobits
	.type	bMbxRepeatToggle, @object
	.size	bMbxRepeatToggle, 1
bMbxRepeatToggle:
	.zero	1
	.globl	u16SendMbxSize
	.section	.sbss.u16SendMbxSize,"aw",@nobits
	.align	1
	.type	u16SendMbxSize, @object
	.size	u16SendMbxSize, 2
u16SendMbxSize:
	.zero	2
	.globl	u16ReceiveMbxSize
	.section	.sbss.u16ReceiveMbxSize,"aw",@nobits
	.align	1
	.type	u16ReceiveMbxSize, @object
	.size	u16ReceiveMbxSize, 2
u16ReceiveMbxSize:
	.zero	2
	.globl	u16EscAddrReceiveMbx
	.section	.sbss.u16EscAddrReceiveMbx,"aw",@nobits
	.align	1
	.type	u16EscAddrReceiveMbx, @object
	.size	u16EscAddrReceiveMbx, 2
u16EscAddrReceiveMbx:
	.zero	2
	.globl	u16EscAddrSendMbx
	.section	.sbss.u16EscAddrSendMbx,"aw",@nobits
	.align	1
	.type	u16EscAddrSendMbx, @object
	.size	u16EscAddrSendMbx, 2
u16EscAddrSendMbx:
	.zero	2
	.globl	u8MbxWriteCounter
	.section	.sbss.u8MbxWriteCounter,"aw",@nobits
	.type	u8MbxWriteCounter, @object
	.size	u8MbxWriteCounter, 1
u8MbxWriteCounter:
	.zero	1
	.globl	u8MbxReadCounter
	.section	.sbss.u8MbxReadCounter,"aw",@nobits
	.type	u8MbxReadCounter, @object
	.size	u8MbxReadCounter, 1
u8MbxReadCounter:
	.zero	1
	.globl	u8MailboxSendReqStored
	.section	.sbss.u8MailboxSendReqStored,"aw",@nobits
	.type	u8MailboxSendReqStored, @object
	.size	u8MailboxSendReqStored, 1
u8MailboxSendReqStored:
	.zero	1
	.globl	psWriteMbx
	.section	.sbss.psWriteMbx,"aw",@nobits
	.align	2
	.type	psWriteMbx, @object
	.size	psWriteMbx, 4
psWriteMbx:
	.zero	4
	.globl	psReadMbx
	.section	.sbss.psReadMbx,"aw",@nobits
	.align	2
	.type	psReadMbx, @object
	.size	psReadMbx, 4
psReadMbx:
	.zero	4
	.globl	psRepeatMbx
	.section	.sbss.psRepeatMbx,"aw",@nobits
	.align	2
	.type	psRepeatMbx, @object
	.size	psRepeatMbx, 4
psRepeatMbx:
	.zero	4
	.globl	psStoreMbx
	.section	.sbss.psStoreMbx,"aw",@nobits
	.align	2
	.type	psStoreMbx, @object
	.size	psStoreMbx, 4
psStoreMbx:
	.zero	4
	.globl	sMbxSendQueue
	.section	.bss.sMbxSendQueue,"aw",@nobits
	.align	2
	.type	sMbxSendQueue, @object
	.size	sMbxSendQueue, 52
sMbxSendQueue:
	.zero	52
	.globl	sMbxReceiveQueue
	.section	.bss.sMbxReceiveQueue,"aw",@nobits
	.align	2
	.type	sMbxReceiveQueue, @object
	.size	sMbxReceiveQueue, 52
sMbxReceiveQueue:
	.zero	52
	.globl	bNoMbxMemoryAvailable
	.section	.sbss.bNoMbxMemoryAvailable,"aw",@nobits
	.type	bNoMbxMemoryAvailable, @object
	.size	bNoMbxMemoryAvailable, 1
bNoMbxMemoryAvailable:
	.zero	1
	.section	.text.PutInMbxQueue,"ax",@progbits
	.align	1
	.globl	PutInMbxQueue
	.type	PutInMbxQueue, @function
PutInMbxQueue:
.LFB232:
	.loc 1 189 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a0,12(sp)
	sw	a1,8(sp)
	.loc 1 194 25
	lw	a5,8(sp)
	lhu	a5,2(a5)
	.loc 1 194 17
	addi	a5,a5,1
	sh	a5,30(sp)
	.loc 1 195 30
	lw	a5,8(sp)
	lhu	a5,4(a5)
	.loc 1 195 8
	lhu	a4,30(sp)
	bne	a4,a5,.L2
	.loc 1 198 21
	sh	zero,30(sp)
.L2:
	.loc 1 201 15
	lw	a5,8(sp)
	lhu	a5,0(a5)
	.loc 1 201 8
	lhu	a4,30(sp)
	bne	a4,a5,.L3
	.loc 1 205 16
	li	a5,7
	j	.L4
.L3:
	.loc 1 208 25
	lw	a5,8(sp)
	lhu	a5,2(a5)
	.loc 1 208 40
	lw	a4,8(sp)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,12(sp)
	sw	a4,8(a5)
	.loc 1 209 25
	lw	a5,8(sp)
	lhu	a4,30(sp)
	sh	a4,2(a5)
	.loc 1 213 12
	li	a5,0
.L4:
	.loc 1 214 1
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE232:
	.size	PutInMbxQueue, .-PutInMbxQueue
	.section	.text.GetOutOfMbxQueue,"ax",@progbits
	.align	1
	.globl	GetOutOfMbxQueue
	.type	GetOutOfMbxQueue, @function
GetOutOfMbxQueue:
.LFB233:
	.loc 1 222 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a0,12(sp)
	.loc 1 226 15
	lw	a5,12(sp)
	lhu	a4,0(a5)
	.loc 1 226 39
	lw	a5,12(sp)
	lhu	a5,2(a5)
	.loc 1 226 8
	beq	a4,a5,.L6
.LBB2:
	.loc 1 229 16
	lw	a5,12(sp)
	lhu	a5,0(a5)
	sh	a5,26(sp)
	.loc 1 230 29
	lhu	a5,26(sp)
	.loc 1 230 14
	lw	a4,12(sp)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,8(a5)
	sw	a5,28(sp)
	.loc 1 231 21
	lhu	a5,26(sp)
	addi	a5,a5,1
	sh	a5,26(sp)
	.loc 1 232 30
	lw	a5,12(sp)
	lhu	a4,26(sp)
	sh	a4,0(a5)
	.loc 1 234 19
	lw	a5,12(sp)
	lhu	a4,0(a5)
	.loc 1 234 43
	lw	a5,12(sp)
	lhu	a5,4(a5)
	.loc 1 234 12
	bne	a4,a5,.L7
	.loc 1 237 34
	lw	a5,12(sp)
	sh	zero,0(a5)
	j	.L7
.L6:
.LBE2:
	.loc 1 242 14
	sw	zero,28(sp)
.L7:
	.loc 1 248 12
	lw	a5,28(sp)
	.loc 1 249 1
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE233:
	.size	GetOutOfMbxQueue, .-GetOutOfMbxQueue
	.section	.text.MBX_Init,"ax",@progbits
	.align	1
	.globl	MBX_Init
	.type	MBX_Init, @function
MBX_Init:
.LFB234:
	.loc 1 257 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 259 23
	lui	a5,%hi(u16ReceiveMbxSize)
	li	a4,36
	sh	a4,%lo(u16ReceiveMbxSize)(a5)
	.loc 1 260 20
	lui	a5,%hi(u16SendMbxSize)
	li	a4,128
	sh	a4,%lo(u16SendMbxSize)(a5)
	.loc 1 261 26
	lui	a5,%hi(u16EscAddrReceiveMbx)
	li	a4,4096
	sh	a4,%lo(u16EscAddrReceiveMbx)(a5)
	.loc 1 262 23
	lui	a5,%hi(u16EscAddrSendMbx)
	li	a4,4096
	sh	a4,%lo(u16EscAddrSendMbx)(a5)
	.loc 1 264 38
	lui	a5,%hi(sMbxReceiveQueue)
	addi	a5,a5,%lo(sMbxReceiveQueue)
	sh	zero,0(a5)
	.loc 1 265 38
	lui	a5,%hi(sMbxReceiveQueue)
	addi	a5,a5,%lo(sMbxReceiveQueue)
	sh	zero,2(a5)
	.loc 1 266 35
	lui	a5,%hi(sMbxReceiveQueue)
	addi	a5,a5,%lo(sMbxReceiveQueue)
	li	a4,10
	sh	a4,4(a5)
	.loc 1 267 39
	lui	a5,%hi(sMbxSendQueue)
	addi	a5,a5,%lo(sMbxSendQueue)
	sh	zero,0(a5)
	.loc 1 268 39
	lui	a5,%hi(sMbxSendQueue)
	addi	a5,a5,%lo(sMbxSendQueue)
	sh	zero,2(a5)
	.loc 1 269 36
	lui	a5,%hi(sMbxSendQueue)
	addi	a5,a5,%lo(sMbxSendQueue)
	li	a4,10
	sh	a4,4(a5)
	.loc 1 270 17
	lui	a5,%hi(psWriteMbx)
	sw	zero,%lo(psWriteMbx)(a5)
	.loc 1 273 17
	lui	a5,%hi(psRepeatMbx)
	sw	zero,%lo(psRepeatMbx)(a5)
	.loc 1 274 18
	lui	a5,%hi(psReadMbx)
	sw	zero,%lo(psReadMbx)(a5)
	.loc 1 275 19
	lui	a5,%hi(psStoreMbx)
	sw	zero,%lo(psStoreMbx)(a5)
	.loc 1 277 25
	lui	a5,%hi(bMbxRepeatToggle)
	sb	zero,%lo(bMbxRepeatToggle)(a5)
.LBB3:
	.loc 1 280 16
	sw	zero,12(sp)
	.loc 1 281 9
	lui	a5,%hi(pEsc)
	lw	a4,%lo(pEsc)(a5)
	li	a5,4096
	addi	a5,a5,-2036
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,12(sp)
	.loc 1 282 21
	lw	a4,12(sp)
	li	a5,-33554432
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,12(sp)
	.loc 1 283 9
	lui	a5,%hi(pEsc)
	lw	a4,%lo(pEsc)(a5)
	li	a5,4096
	addi	a5,a5,-2036
	add	a5,a4,a5
	lw	a4,12(sp)
	sw	a4,0(a5)
.LBE3:
	.loc 1 285 17
	lui	a5,%hi(bMbxRunning)
	sb	zero,%lo(bMbxRunning)(a5)
	.loc 1 286 20
	lui	a5,%hi(bSendMbxIsFull)
	sb	zero,%lo(bSendMbxIsFull)(a5)
	.loc 1 287 25
	lui	a5,%hi(bReceiveMbxIsLocked)
	sb	zero,%lo(bReceiveMbxIsLocked)(a5)
	.loc 1 288 31
	lui	a5,%hi(u8MailboxSendReqStored)
	sb	zero,%lo(u8MailboxSendReqStored)(a5)
	.loc 1 289 23
	lui	a5,%hi(u8MbxWriteCounter)
	sb	zero,%lo(u8MbxWriteCounter)(a5)
	.loc 1 290 25
	lui	a5,%hi(u8MbxReadCounter)
	sb	zero,%lo(u8MbxReadCounter)(a5)
	.loc 1 291 1
	nop
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE234:
	.size	MBX_Init, .-MBX_Init
	.section	.text.MBX_StartMailboxHandler,"ax",@progbits
	.align	1
	.globl	MBX_StartMailboxHandler
	.type	MBX_StartMailboxHandler, @function
MBX_StartMailboxHandler:
.LFB235:
	.loc 1 304 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 305 12
	sh	zero,14(sp)
	.loc 1 308 34
	li	a0,0
	call	GetSyncMan
	sw	a0,8(sp)
	.loc 1 311 48
	lw	a5,8(sp)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 311 82
	srli	a5,a5,16
	.loc 1 311 29
	zext.h	a4,a5
	.loc 1 311 27
	lui	a5,%hi(u16ReceiveMbxSize)
	sh	a4,%lo(u16ReceiveMbxSize)(a5)
	.loc 1 313 46
	lw	a5,8(sp)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 313 28
	zext.h	a4,a5
	.loc 1 313 26
	lui	a5,%hi(u16EscAddrReceiveMbx)
	sh	a4,%lo(u16EscAddrReceiveMbx)(a5)
	.loc 1 316 15
	li	a0,1
	call	GetSyncMan
	sw	a0,8(sp)
	.loc 1 319 41
	lw	a5,8(sp)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 319 75
	srli	a5,a5,16
	.loc 1 319 22
	zext.h	a4,a5
	.loc 1 319 20
	lui	a5,%hi(u16SendMbxSize)
	sh	a4,%lo(u16SendMbxSize)(a5)
	.loc 1 321 43
	lw	a5,8(sp)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 321 25
	zext.h	a4,a5
	.loc 1 321 23
	lui	a5,%hi(u16EscAddrSendMbx)
	sh	a4,%lo(u16EscAddrSendMbx)(a5)
	.loc 1 324 31
	lui	a5,%hi(u16EscAddrReceiveMbx)
	lhu	a5,%lo(u16EscAddrReceiveMbx)(a5)
	mv	a4,a5
	lui	a5,%hi(u16ReceiveMbxSize)
	lhu	a5,%lo(u16ReceiveMbxSize)(a5)
	add	a5,a4,a5
	.loc 1 324 52
	lui	a4,%hi(u16EscAddrSendMbx)
	lhu	a4,%lo(u16EscAddrSendMbx)(a4)
	.loc 1 324 8
	ble	a5,a4,.L11
	.loc 1 324 97 discriminator 1
	lui	a5,%hi(u16EscAddrReceiveMbx)
	lhu	a5,%lo(u16EscAddrReceiveMbx)(a5)
	mv	a4,a5
	.loc 1 324 118 discriminator 1
	lui	a5,%hi(u16EscAddrSendMbx)
	lhu	a5,%lo(u16EscAddrSendMbx)(a5)
	mv	a3,a5
	lui	a5,%hi(u16SendMbxSize)
	lhu	a5,%lo(u16SendMbxSize)(a5)
	add	a5,a3,a5
	.loc 1 324 72 discriminator 1
	bge	a4,a5,.L11
	.loc 1 326 16
	li	a5,22
	j	.L12
.L11:
	.loc 1 331 5
	li	a0,0
	call	EnableSyncManChannel
	.loc 1 333 5
	li	a0,1
	call	EnableSyncManChannel
	.loc 1 335 38
	lui	a5,%hi(u16ReceiveMbxSize)
	lhu	a5,%lo(u16ReceiveMbxSize)(a5)
	mv	a0,a5
	call	malloc
	mv	a4,a0
	.loc 1 335 20 discriminator 1
	lui	a5,%hi(psWriteMbx)
	sw	a4,%lo(psWriteMbx)(a5)
	.loc 1 336 23
	lui	a5,%hi(psWriteMbx)
	lw	a5,%lo(psWriteMbx)(a5)
	.loc 1 336 11
	bne	a5,zero,.L13
	.loc 1 338 35
	lui	a5,%hi(bNoMbxMemoryAvailable)
	li	a4,1
	sb	a4,%lo(bNoMbxMemoryAvailable)(a5)
	.loc 1 341 42
	li	a0,10
	call	malloc
	mv	a4,a0
	.loc 1 341 24 discriminator 1
	lui	a5,%hi(psWriteMbx)
	sw	a4,%lo(psWriteMbx)(a5)
	.loc 1 342 27
	lui	a5,%hi(psWriteMbx)
	lw	a5,%lo(psWriteMbx)(a5)
	.loc 1 342 15
	bne	a5,zero,.L14
	.loc 1 344 24
	li	a5,2
	sh	a5,14(sp)
.L14:
	.loc 1 347 13
	lui	a5,%hi(psWriteMbx)
	lw	a5,%lo(psWriteMbx)(a5)
	mv	a0,a5
	call	free
	.loc 1 348 24
	lui	a5,%hi(psWriteMbx)
	sw	zero,%lo(psWriteMbx)(a5)
	j	.L15
.L13:
	.loc 1 352 35
	lui	a5,%hi(bNoMbxMemoryAvailable)
	sb	zero,%lo(bNoMbxMemoryAvailable)(a5)
	.loc 1 353 13
	lui	a5,%hi(psWriteMbx)
	lw	a5,%lo(psWriteMbx)(a5)
	mv	a0,a5
	call	free
	.loc 1 354 24
	lui	a5,%hi(psWriteMbx)
	sw	zero,%lo(psWriteMbx)(a5)
.L15:
	.loc 1 357 12
	lhu	a5,14(sp)
.L12:
	.loc 1 358 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE235:
	.size	MBX_StartMailboxHandler, .-MBX_StartMailboxHandler
	.section	.text.MBX_StopMailboxHandler,"ax",@progbits
	.align	1
	.globl	MBX_StopMailboxHandler
	.type	MBX_StopMailboxHandler, @function
MBX_StopMailboxHandler:
.LFB236:
	.loc 1 370 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 374 17
	lui	a5,%hi(bMbxRunning)
	sb	zero,%lo(bMbxRunning)(a5)
	.loc 1 376 5
	li	a0,0
	call	DisableSyncManChannel
	.loc 1 378 5
	li	a0,1
	call	DisableSyncManChannel
	.loc 1 382 21
	lui	a5,%hi(psRepeatMbx)
	lw	a5,%lo(psRepeatMbx)(a5)
	.loc 1 382 8
	beq	a5,zero,.L17
	.loc 1 384 9
	lui	a5,%hi(psRepeatMbx)
	lw	a5,%lo(psRepeatMbx)(a5)
	mv	a0,a5
	call	free
.L17:
	.loc 1 387 20
	lui	a5,%hi(psStoreMbx)
	lw	a5,%lo(psStoreMbx)(a5)
	.loc 1 387 8
	beq	a5,zero,.L18
	.loc 1 387 42 discriminator 1
	lui	a5,%hi(psStoreMbx)
	lw	a4,%lo(psStoreMbx)(a5)
	lui	a5,%hi(psRepeatMbx)
	lw	a5,%lo(psRepeatMbx)(a5)
	.loc 1 387 28 discriminator 1
	beq	a4,a5,.L18
	.loc 1 389 9
	lui	a5,%hi(psStoreMbx)
	lw	a5,%lo(psStoreMbx)(a5)
	mv	a0,a5
	call	free
.L18:
	.loc 1 392 19
	lui	a5,%hi(psReadMbx)
	lw	a5,%lo(psReadMbx)(a5)
	.loc 1 392 8