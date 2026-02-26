	.file	"sdoserv.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\ecat_io\\SSC\\Src\\sdoserv.c"
	.globl	u8PendingSdo
	.section	.sbss.u8PendingSdo,"aw",@nobits
	.type	u8PendingSdo, @object
	.size	u8PendingSdo, 1
u8PendingSdo:
	.zero	1
	.globl	bStoreCompleteAccess
	.section	.sbss.bStoreCompleteAccess,"aw",@nobits
	.type	bStoreCompleteAccess, @object
	.size	bStoreCompleteAccess, 1
bStoreCompleteAccess:
	.zero	1
	.globl	u8StoreSubindex
	.section	.sbss.u8StoreSubindex,"aw",@nobits
	.type	u8StoreSubindex, @object
	.size	u8StoreSubindex, 1
u8StoreSubindex:
	.zero	1
	.globl	u16StoreIndex
	.section	.sbss.u16StoreIndex,"aw",@nobits
	.align	1
	.type	u16StoreIndex, @object
	.size	u16StoreIndex, 2
u16StoreIndex:
	.zero	2
	.globl	u32StoreDataSize
	.section	.sbss.u32StoreDataSize,"aw",@nobits
	.align	2
	.type	u32StoreDataSize, @object
	.size	u32StoreDataSize, 4
u32StoreDataSize:
	.zero	4
	.globl	pStoreData
	.section	.sbss.pStoreData,"aw",@nobits
	.align	2
	.type	pStoreData, @object
	.size	pStoreData, 4
pStoreData:
	.zero	4
	.globl	pSdoPendFunc
	.section	.sbss.pSdoPendFunc,"aw",@nobits
	.align	2
	.type	pSdoPendFunc, @object
	.size	pSdoPendFunc, 4
pSdoPendFunc:
	.zero	4
	.globl	aSdoInfoHeader
	.section	.bss.aSdoInfoHeader,"aw",@nobits
	.align	2
	.type	aSdoInfoHeader, @object
	.size	aSdoInfoHeader, 16
aSdoInfoHeader:
	.zero	16
	.globl	pSdoSegData
	.section	.sbss.pSdoSegData,"aw",@nobits
	.align	2
	.type	pSdoSegData, @object
	.size	pSdoSegData, 4
pSdoSegData:
	.zero	4
	.globl	nSdoInfoFragmentsLeft
	.section	.sbss.nSdoInfoFragmentsLeft,"aw",@nobits
	.align	1
	.type	nSdoInfoFragmentsLeft, @object
	.size	nSdoInfoFragmentsLeft, 2
nSdoInfoFragmentsLeft:
	.zero	2
	.globl	cAbortCode
	.section	.rodata.cAbortCode,"a"
	.align	2
	.type	cAbortCode, @object
	.size	cAbortCode, 120
cAbortCode:
	.word	0
	.word	84082688
	.word	84148224
	.word	84148225
	.word	84148229
	.word	100728832
	.word	100728833
	.word	100728834
	.word	100794368
	.word	100925505
	.word	100925506
	.word	100925507
	.word	100925511
	.word	101056512
	.word	101122064
	.word	101122066
	.word	101122067
	.word	101253137
	.word	101253168
	.word	101253169
	.word	101253170
	.word	101253171
	.word	101253174
	.word	134217728
	.word	134217760
	.word	134217761
	.word	134217762
	.word	134217763
	.word	100728835
	.word	100728836
	.globl	nSdoInfoIndex
	.section	.sbss.nSdoInfoIndex,"aw",@nobits
	.align	1
	.type	nSdoInfoIndex, @object
	.size	nSdoInfoIndex, 2
nSdoInfoIndex:
	.zero	2
	.globl	pSdoInfoObjEntry
	.section	.sbss.pSdoInfoObjEntry,"aw",@nobits
	.align	2
	.type	pSdoInfoObjEntry, @object
	.size	pSdoInfoObjEntry, 4
pSdoInfoObjEntry:
	.zero	4
	.globl	pSdoResStored
	.section	.sbss.pSdoResStored,"aw",@nobits
	.align	2
	.type	pSdoResStored, @object
	.size	pSdoResStored, 4
pSdoResStored:
	.zero	4
	.globl	bSdoInWork
	.section	.sbss.bSdoInWork,"aw",@nobits
	.type	bSdoInWork, @object
	.size	bSdoInWork, 1
bSdoInWork:
	.zero	1
	.globl	nSdoSegService
	.section	.sbss.nSdoSegService,"aw",@nobits
	.type	nSdoSegService, @object
	.size	nSdoSegService, 1
nSdoSegService:
	.zero	1
	.globl	bSdoSegFollows
	.section	.sbss.bSdoSegFollows,"aw",@nobits
	.type	bSdoSegFollows, @object
	.size	bSdoSegFollows, 1
bSdoSegFollows:
	.zero	1
	.globl	bSdoSegAccess
	.section	.sbss.bSdoSegAccess,"aw",@nobits
	.type	bSdoSegAccess, @object
	.size	bSdoSegAccess, 1
bSdoSegAccess:
	.zero	1
	.globl	nSdoSegIndex
	.section	.sbss.nSdoSegIndex,"aw",@nobits
	.align	1
	.type	nSdoSegIndex, @object
	.size	nSdoSegIndex, 2
nSdoSegIndex:
	.zero	2
	.globl	nSdoSegSubindex
	.section	.sbss.nSdoSegSubindex,"aw",@nobits
	.type	nSdoSegSubindex, @object
	.size	nSdoSegSubindex, 1
nSdoSegSubindex:
	.zero	1
	.globl	nSdoSegBytesToHandle
	.section	.sbss.nSdoSegBytesToHandle,"aw",@nobits
	.align	2
	.type	nSdoSegBytesToHandle, @object
	.size	nSdoSegBytesToHandle, 4
nSdoSegBytesToHandle:
	.zero	4
	.globl	bSdoSegLastToggle
	.section	.sbss.bSdoSegLastToggle,"aw",@nobits
	.type	bSdoSegLastToggle, @object
	.size	bSdoSegLastToggle, 1
bSdoSegLastToggle:
	.zero	1
	.globl	nSdoSegCompleteSize
	.section	.sbss.nSdoSegCompleteSize,"aw",@nobits
	.align	2
	.type	nSdoSegCompleteSize, @object
	.size	nSdoSegCompleteSize, 4
nSdoSegCompleteSize:
	.zero	4
	.globl	pSdoSegObjEntry
	.section	.sbss.pSdoSegObjEntry,"aw",@nobits
	.align	2
	.type	pSdoSegObjEntry, @object
	.size	pSdoSegObjEntry, 4
pSdoSegObjEntry:
	.zero	4
	.section	.text.SdoDownloadSegmentInd,"ax",@progbits
	.align	1
	.type	SdoDownloadSegmentInd, @function
SdoDownloadSegmentInd:
.LFB232:
	.loc 1 212 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	.loc 1 213 8
	sb	zero,31(sp)
	.loc 1 214 9
	sw	zero,24(sp)
	.loc 1 216 6
	lw	a5,12(sp)
	lbu	a5,8(a5)
	andi	a5,a5,16
	.loc 1 216 64
	lui	a4,%hi(bSdoSegLastToggle)
	lbu	a4,%lo(bSdoSegLastToggle)(a4)
	.loc 1 216 5
	bne	a5,a4,.L2
	.loc 1 219 9
	li	a5,1
	sb	a5,31(sp)
	j	.L3
.L2:
.LBB2:
	.loc 1 224 56
	lui	a5,%hi(u16ReceiveMbxSize)
	lhu	a5,%lo(u16ReceiveMbxSize)(a5)
	.loc 1 224 10
	addi	a5,a5,-9
	sh	a5,22(sp)
	.loc 1 226 23
	lw	a5,12(sp)
	lbu	a5,8(a5)
	andi	a5,a5,16
	andi	a4,a5,0xff
	.loc 1 226 21
	lui	a5,%hi(bSdoSegLastToggle)
	sb	a4,%lo(bSdoSegLastToggle)(a5)
	.loc 1 230 7
	lui	a5,%hi(pSdoSegData)
	lw	a5,%lo(pSdoSegData)(a5)
	.loc 1 230 6
	beq	a5,zero,.L4
	.loc 1 234 38
	lui	a5,%hi(nSdoSegCompleteSize)
	lw	a4,%lo(nSdoSegCompleteSize)(a5)
	lui	a5,%hi(nSdoSegBytesToHandle)
	lw	a5,%lo(nSdoSegBytesToHandle)(a5)
	.loc 1 234 16
	sub	a5,a4,a5
	sw	a5,24(sp)
	.loc 1 236 26
	lw	a5,12(sp)
	lbu	a5,8(a5)
	.loc 1 236 37
	andi	a5,a5,1
	.loc 1 236 7
	beq	a5,zero,.L5
	.loc 1 240 21
	lhu	a5,22(sp)
	.loc 1 240 8
	lw	a4,24(sp)
	bgtu	a4,a5,.L6
.LBB3:
	.loc 1 242 13
	lw	a5,12(sp)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,20(sp)
	.loc 1 248 44
	lhu	a5,20(sp)
	addi	a5,a5,-3
	.loc 1 248 27
	mv	a4,a5
	.loc 1 248 9
	lw	a5,24(sp)
	bgtu	a5,a4,.L7
	.loc 1 249 77
	lw	a5,12(sp)
	lbu	a5,8(a5)
	.loc 1 249 113
	srai	a5,a5,1
	.loc 1 249 27
	zext.h	a5,a5
	not	a5,a5
	zext.h	a5,a5
	andi	a5,a5,7
	.loc 1 249 7
	lw	a4,24(sp)
	beq	a4,a5,.L8
.L7:
	.loc 1 251 7
	lw	a4,24(sp)
	li	a5,7
	bleu	a4,a5,.L9
	.loc 1 252 44
	lhu	a5,20(sp)
	addi	a4,a5,-3
	.loc 1 252 24
	lw	a5,24(sp)
	.loc 1 252 8
	bne	a4,a5,.L9
.L8:
	.loc 1 256 22
	lui	a5,%hi(bSdoSegFollows)
	sb	zero,%lo(bSdoSegFollows)(a5)
	j	.L11
.L9:
	.loc 1 260 13
	li	a5,14
	sb	a5,31(sp)
	j	.L11
.L6:
.LBE3:
	.loc 1 265 12
	li	a5,14
	sb	a5,31(sp)
	j	.L11
.L5:
	.loc 1 271 20
	lui	a5,%hi(bSdoSegFollows)
	li	a4,1
	sb	a4,%lo(bSdoSegFollows)(a5)
	.loc 1 274 21
	lhu	a5,22(sp)
	.loc 1 274 8
	lw	a4,24(sp)
	bgtu	a4,a5,.L12
	.loc 1 276 12
	li	a5,14
	sb	a5,31(sp)
	j	.L11
.L12:
	.loc 1 281 18
	lhu	a5,22(sp)
	sw	a5,24(sp)
.L11:
	.loc 1 285 7
	lbu	a5,31(sp)
	bne	a5,zero,.L3
	.loc 1 288 37
	lui	a5,%hi(pSdoSegData)
	lw	a4,%lo(pSdoSegData)(a5)
	.loc 1 288 5
	lui	a5,%hi(nSdoSegBytesToHandle)
	lw	a5,%lo(nSdoSegBytesToHandle)(a5)
	add	a4,a4,a5
	.loc 1 288 81
	lw	a5,12(sp)
	addi	a5,a5,9
	.loc 1 288 5
	lw	a2,24(sp)
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 1 290 24
	lui	a5,%hi(bSdoSegFollows)
	lbu	a5,%lo(bSdoSegFollows)(a5)
	.loc 1 290 8
	bne	a5,zero,.L3
	.loc 1 293 14
	lui	a5,%hi(nSdoSegIndex)
	lhu	a0,%lo(nSdoSegIndex)(a5)
	lui	a5,%hi(nSdoSegSubindex)
	lbu	a1,%lo(nSdoSegSubindex)(a5)
	lui	a5,%hi(nSdoSegCompleteSize)
	lw	a2,%lo(nSdoSegCompleteSize)(a5)
	lui	a5,%hi(pSdoSegObjEntry)
	lw	a3,%lo(pSdoSegObjEntry)(a5)
	lui	a5,%hi(pSdoSegData)
	lw	a4,%lo(pSdoSegData)(a5)
	lui	a5,%hi(bSdoSegAccess)
	lbu	a5,%lo(bSdoSegAccess)(a5)
	call	OBJ_Write
	mv	a5,a0
	sb	a5,31(sp)
	.loc 1 294 9
	lbu	a4,31(sp)
	li	a5,255
	bne	a4,a5,.L13
	.loc 1 297 20
	lui	a5,%hi(u8PendingSdo)
	li	a4,2
	sb	a4,%lo(u8PendingSdo)(a5)
	.loc 1 298 28
	lui	a5,%hi(bSdoSegAccess)
	lbu	a4,%lo(bSdoSegAccess)(a5)
	lui	a5,%hi(bStoreCompleteAccess)
	sb	a4,%lo(bStoreCompleteAccess)(a5)
	.loc 1 299 23
	lui	a5,%hi(nSdoSegSubindex)
	lbu	a4,%lo(nSdoSegSubindex)(a5)
	lui	a5,%hi(u8StoreSubindex)
	sb	a4,%lo(u8StoreSubindex)(a5)
	.loc 1 300 21
	lui	a5,%hi(nSdoSegIndex)
	lhu	a4,%lo(nSdoSegIndex)(a