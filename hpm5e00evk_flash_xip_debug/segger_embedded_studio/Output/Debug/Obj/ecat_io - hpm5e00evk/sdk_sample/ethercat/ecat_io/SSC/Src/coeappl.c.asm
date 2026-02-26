	.file	"coeappl.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\ecat_io\\SSC\\Src\\coeappl.c"
	.globl	u64Timestamp
	.section	.sbss.u64Timestamp,"aw",@nobits
	.align	3
	.type	u64Timestamp, @object
	.size	u64Timestamp, 8
u64Timestamp:
	.zero	8
	.globl	u32LastDc32Value
	.section	.sbss.u32LastDc32Value,"aw",@nobits
	.align	2
	.type	u32LastDc32Value, @object
	.size	u32LastDc32Value, 4
u32LastDc32Value:
	.zero	4
	.globl	u32CheckForDcOverrunCnt
	.section	.sbss.u32CheckForDcOverrunCnt,"aw",@nobits
	.align	2
	.type	u32CheckForDcOverrunCnt, @object
	.size	u32CheckForDcOverrunCnt, 4
u32CheckForDcOverrunCnt:
	.zero	4
	.globl	asEntryDesc0x1600
	.section	.rodata.asEntryDesc0x1600,"a"
	.align	2
	.type	asEntryDesc0x1600, @object
	.size	asEntryDesc0x1600, 18
asEntryDesc0x1600:
	.half	5
	.half	8
	.half	7
	.half	7
	.half	32
	.half	7
	.half	7
	.half	32
	.half	7
	.globl	aName0x1600
	.section	.rodata.aName0x1600,"a"
	.align	2
	.type	aName0x1600, @object
	.size	aName0x1600, 62
aName0x1600:
	.string	"NumOfEntries process data mapping"
	.string	"SubIndex 001"
	.string	"SubIndex 002"
	.string	"\377"
	.globl	asEntryDesc0x1A00
	.section	.rodata.asEntryDesc0x1A00,"a"
	.align	2
	.type	asEntryDesc0x1A00, @object
	.size	asEntryDesc0x1A00, 18
asEntryDesc0x1A00:
	.half	5
	.half	8
	.half	7
	.half	7
	.half	32
	.half	7
	.half	7
	.half	32
	.half	7
	.globl	aName0x1A00
	.section	.rodata.aName0x1A00,"a"
	.align	2
	.type	aName0x1A00, @object
	.size	aName0x1A00, 62
aName0x1A00:
	.string	"NumOfEntries process data mapping"
	.string	"SubIndex 001"
	.string	"SubIndex 002"
	.string	"\377"
	.globl	asEntryDesc0x1C12
	.section	.rodata.asEntryDesc0x1C12,"a"
	.align	2
	.type	asEntryDesc0x1C12, @object
	.size	asEntryDesc0x1C12, 12
asEntryDesc0x1C12:
	.half	5
	.half	8
	.half	7
	.half	6
	.half	16
	.half	7
	.globl	aName0x1C12
	.section	.rodata.aName0x1C12,"a"
	.align	2
	.type	aName0x1C12, @object
	.size	aName0x1C12, 27
aName0x1C12:
	.string	"SyncManager 2 assignment"
	.string	"\377"
	.globl	asEntryDesc0x1C13
	.section	.rodata.asEntryDesc0x1C13,"a"
	.align	2
	.type	asEntryDesc0x1C13, @object
	.size	asEntryDesc0x1C13, 12
asEntryDesc0x1C13:
	.half	5
	.half	8
	.half	7
	.half	6
	.half	16
	.half	7
	.globl	aName0x1C13
	.section	.rodata.aName0x1C13,"a"
	.align	2
	.type	aName0x1C13, @object
	.size	aName0x1C13, 27
aName0x1C13:
	.string	"SyncManager 3 assignment"
	.string	"\377"
	.globl	asEntryDesc0x6000
	.section	.rodata.asEntryDesc0x6000,"a"
	.align	2
	.type	asEntryDesc0x6000, @object
	.size	asEntryDesc0x6000, 18
asEntryDesc0x6000:
	.half	5
	.half	8
	.half	7
	.half	7
	.half	32
	.half	135
	.half	5
	.half	8
	.half	135
	.globl	aName0x6000
	.section	.rodata.aName0x6000,"a"
	.align	2
	.type	aName0x6000, @object
	.size	aName0x6000, 46
aName0x6000:
	.string	"NumOfEntries"
	.string	"InputCounter"
	.string	"MY_VAL_8BIT_INPUT"
	.string	"\377"
	.globl	asEntryDesc0x7000
	.section	.rodata.asEntryDesc0x7000,"a"
	.align	2
	.type	asEntryDesc0x7000, @object
	.size	asEntryDesc0x7000, 18
asEntryDesc0x7000:
	.half	5
	.half	8
	.half	7
	.half	7
	.half	32
	.half	127
	.half	5
	.half	8
	.half	127
	.globl	aName0x7000
	.section	.rodata.aName0x7000,"a"
	.align	2
	.type	aName0x7000, @object
	.size	aName0x7000, 48
aName0x7000:
	.string	"NumOfEntries"
	.string	"OutputCounter"
	.string	"MY_VAL_8BIT_OUTPUT"
	.string	"\377"
	.globl	asEntryDesc0x8000
	.section	.rodata.asEntryDesc0x8000,"a"
	.align	2
	.type	asEntryDesc0x8000, @object
	.size	asEntryDesc0x8000, 18
asEntryDesc0x8000:
	.half	5
	.half	8
	.half	7
	.half	6
	.half	16
	.half	63
	.half	7
	.half	32
	.half	63
	.globl	aName0x8000
	.section	.rodata.aName0x8000,"a"
	.align	2
	.type	aName0x8000, @object
	.size	aName0x8000, 37
aName0x8000:
	.string	"Modbus Config"
	.string	"Station_ID"
	.string	"Baud_Rate"
	.string	"\377"
	.globl	asEntryDesc0xF000
	.section	.srodata.asEntryDesc0xF000,"a"
	.align	2
	.type	asEntryDesc0xF000, @object
	.size	asEntryDesc0xF000, 6
asEntryDesc0xF000:
	.half	5
	.half	8
	.half	7
	.globl	aName0xF000
	.section	.rodata.aName0xF000,"a"
	.align	2
	.type	aName0xF000, @object
	.size	aName0xF000, 25
aName0xF000:
	.string	"Modular Device Profile"
	.string	"\377"
	.globl	ApplicationObjDic
	.section	.data.ApplicationObjDic,"aw"
	.align	2
	.type	ApplicationObjDic, @object
	.size	ApplicationObjDic, 360
ApplicationObjDic:
	.word	0
	.word	0
	.half	5632
	.half	33
	.half	2306
	.zero	2
	.word	asEntryDesc0x1600
	.word	aName0x1600
	.word	NumOfEntriesProcessDataMapping0x1600
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	6656
	.half	33
	.half	2306
	.zero	2
	.word	asEntryDesc0x1A00
	.word	aName0x1A00
	.word	NumOfEntriesProcessDataMapping0x1A00
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	7186
	.half	6
	.half	2049
	.zero	2
	.word	asEntryDesc0x1C12
	.word	aName0x1C12
	.word	sRxPDOassign
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	7187
	.half	6
	.half	2049
	.zero	2
	.word	asEntryDesc0x1C13
	.word	aName0x1C13
	.word	sTxPDOassign
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	24576
	.half	42
	.half	2306
	.zero	2
	.word	asEntryDesc0x6000
	.word	aName0x6000
	.word	NumOfEntries0x6000
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	28672
	.half	42
	.half	2306
	.zero	2
	.word	asEntryDesc0x7000
	.word	aName0x7000
	.word	NumOfEntries0x7000
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	-32768
	.half	42
	.half	2306
	.zero	2
	.word	asEntryDesc0x8000
	.word	aName0x8000
	.word	ModbusConfig0x8000
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	-4096
	.half	42
	.half	2304
	.zero	2
	.word	asEntryDesc0xF000
	.word	aName0xF000
	.word	ModularDeviceProfile0xF000
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	-1
	.half	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.word	0
	.word	0
	.zero	8
	.globl	u32Devicetype
	.section	.sdata.u32Devicetype,"aw"
	.align	2
	.type	u32Devicetype, @object
	.size	u32Devicetype, 4
u32Devicetype:
	.word	5001
	.globl	sEntryDesc0x1000
	.section	.srodata.sEntryDesc0x1000,"a"
	.align	2
	.type	sEntryDesc0x1000, @object
	.size	sEntryDesc0x1000, 6
sEntryDesc0x1000:
	.half	7
	.half	32
	.half	7
	.globl	aName0x1000
	.section	.rodata.aName0x1000,"a"
	.align	2
	.type	aName0x1000, @object
	.size	aName0x1000, 12
aName0x1000:
	.string	"Device type"
	.globl	u16ErrorRegister
	.section	.sbss.u16ErrorRegister,"aw",@nobits
	.align	1
	.type	u16ErrorRegister, @object
	.size	u16ErrorRegister, 2
u16ErrorRegister:
	.zero	2
	.globl	sEntryDesc0x1001
	.section	.srodata.sEntryDesc0x1001,"a"
	.align	2
	.type	sEntryDesc0x1001, @object
	.size	sEntryDesc0x1001, 6
sEntryDesc0x1001:
	.half	5
	.half	8
	.half	7
	.globl	aName0x1001
	.section	.rodata.aName0x1001,"a"
	.align	2
	.type	aName0x1001, @object
	.size	aName0x1001, 15
aName0x1001:
	.string	"Error register"
	.globl	acDevicename
	.section	.data.acDevicename,"aw"
	.align	2
	.type	acDevicename, @object
	.size	acDevicename, 11
acDevicename:
	.string	"digital_io"
	.globl	sEntryDesc0x1008
	.section	.srodata.sEntryDesc0x1008,"a"
	.align	2
	.type	sEntryDesc0x1008, @object
	.size	sEntryDesc0x1008, 6
sEntryDesc0x1008:
	.half	9
	.half	80
	.half	7
	.globl	aName0x1008
	.section	.rodata.aName0x1008,"a"
	.align	2
	.type	aName0x1008, @object
	.size	aName0x1008, 12
aName0x1008:
	.string	"Device name"
	.globl	acHardwareversion
	.section	.data.acHardwareversion,"aw"
	.align	2
	.type	acHardwareversion, @object
	.size	acHardwareversion, 12
acHardwareversion:
	.string	"ECAT_Device"
	.globl	sEntryDesc0x1009
	.section	.srodata.sEntryDesc0x1009,"a"
	.align	2
	.type	sEntryDesc0x1009, @object
	.size	sEntryDesc0x1009, 6
sEntryDesc0x1009:
	.half	9
	.half	88
	.half	7
	.globl	aName0x1009
	.section	.rodata.aName0x1009,"a"
	.align	2
	.type	aName0x1009, @object
	.size	aName0x1009, 30
aName0x1009:
	.string	"Manufacturer Hardware version"
	.globl	acSoftwareversion
	.section	.sdata.acSoftwareversion,"aw"
	.align	2
	.type	acSoftwareversion, @object
	.size	acSoftwareversion, 4
acSoftwareversion:
	.string	"1.0"
	.globl	sEntryDesc0x100A
	.section	.srodata.sEntryDesc0x100A,"a"
	.align	2
	.type	sEntryDesc0x100A, @object
	.size	sEntryDesc0x100A, 6
sEntryDesc0x100A:
	.half	9
	.half	24
	.half	7
	.globl	aName0x100A
	.section	.rodata.aName0x100A,"a"
	.align	2
	.type	aName0x100A, @object
	.size	aName0x100A, 30
aName0x100A:
	.string	"Manufacturer Software version"
	.globl	sIdentity
	.section	.data.sIdentity,"aw"
	.align	2
	.type	sIdentity, @object
	.size	sIdentity, 18
sIdentity:
	.half	4
	.4byte	1
	.4byte	1
	.4byte	1
	.4byte	0
	.globl	asEntryDesc0x1018
	.section	.rodata.asEntryDesc0x1018,"a"
	.align	2
	.type	asEntryDesc0x1018, @object
	.size	asEntryDesc0x1018, 30
asEntryDesc0x1018:
	.half	5
	.half	8
	.half	7
	.half	7
	.half	32
	.half	7
	.half	7
	.half	32
	.half	7
	.half	7
	.half	32
	.half	7
	.half	7
	.half	32
	.half	7
	.globl	aName0x1018
	.section	.rodata.aName0x1018,"a"
	.align	2
	.type	aName0x1018, @object
	.size	aName0x1018, 71
aName0x1018:
	.string	"Identity Object"
	.string	"Vendor ID"
	.string	"Product Code"
	.string	"Revision Number"
	.string	"Serial Number"
	.string	"\377"
	.globl	asEntryDesc0x10F1
	.section	.rodata.asEntryDesc0x10F1,"a"
	.align	2
	.type	asEntryDesc0x10F1, @object
	.size	asEntryDesc0x10F1, 18
asEntryDesc0x10F1:
	.half	5
	.half	8
	.half	7
	.half	7
	.half	32
	.half	7
	.half	6
	.half	16
	.half	63
	.globl	aName0x10F1
	.section	.rodata.aName0x10F1,"a"
	.align	2
	.type	aName0x10F1, @object
	.size	aName0x10F1, 63
aName0x10F1:
	.string	"Error Settings"
	.string	"Local Error Reaction"
	.string	"Sync Error Counter Limit"
	.string	"\377"
	.globl	sEntryDesc0x10F8
	.section	.srodata.sEntryDesc0x10F8,"a"
	.align	2
	.type	sEntryDesc0x10F8, @object
	.size	sEntryDesc0x10F8, 6
sEntryDesc0x10F8:
	.half	27
	.half	64
	.half	191
	.globl	aName0x10F8
	.section	.rodata.aName0x10F8,"a"
	.align	2
	.type	aName0x10F8, @object
	.size	aName0x10F8, 19
aName0x10F8:
	.string	"Timestamp Object"
	.string	"\377"
	.section	.text.Read0x10F8,"ax",@progbits
	.align	1
	.globl	Read0x10F8
	.type	Read0x10F8, @function
Read0x10F8:
.LFB232:
	.loc 1 333 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	mv	a5,a0
	sw	a2,8(sp)
	sw	a3,4(sp)
	sh	a5,14(sp)
	mv	a5,a1
	sb	a5,13(sp)
	mv	a5,a4
	sb	a5,12(sp)
	.loc 1 335 8
	lhu	a4,14(sp)
	li	a5,4096
	addi	a5,a5,248
	beq	a4,a5,.L2
	.loc 1 337 16
	li	a5,11
	j	.L3
.L2:
	.loc 1 341 8
	lbu	a5,12(sp)
	beq	a5,zero,.L4
	.loc 1 344 16
	li	a5,5
	j	.L3
.L4:
	.loc 1 347 8
	lbu	a5,13(sp)
	beq	a5,zero,.L5
	.loc 1 349 16
	li	a5,17
	j	.L3
.L5:
	.loc 1 352 8
	lw	a4,8(sp)
	li	a5,8
	bleu	a4,a5,.L6
	.loc 1 354 16
	li	a5,15
	j	.L3
.L6:
	.loc 1 358 5
	call	COE_SyncTimeStamp
	.loc 1 360 5
	lw	a2,8(sp)
	lui	a5,%hi(u64Timestamp)
	addi	a1,a5,%lo(u64Timestamp)
	lw	a0,4(sp)
	call	memcpy
	.loc 1 361 12
	li	a5,0
.L3:
	.loc 1 362 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE232:
	.size	Read0x10F8, .-Read0x10F8
	.section	.text.COE_SyncTimeStamp,"ax",@progbits
	.align	1
	.globl	COE_SyncTimeStamp
	.type	COE_SyncTimeStamp, @function
COE_SyncTimeStamp:
.LFB233:
	.loc 1 371 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 373 9
	lui	a6,%hi(b32BitDc)
	lbu	a6,%lo(b32BitDc)(a6)
	.loc 1 373 8
	beq	a6,zero,.L8
.LBB2:
	.loc 1 375 25
	lui	a6,%hi(u64Timestamp)
	lw	a7,%lo(u64Timestamp+4)(a6)
	lw	a6,%lo(u64Timestamp)(a6)
	.loc 1 375 16
	sw	a6,12(sp)
	.loc 1 378 9
	lui	a6,%hi(pEsc)
	lw	a7,%lo(pEsc)(a6)
	li	a6,4096
	addi	a6,a6,-1776
	add	a6,a7,a6
	lw	a6,0(a6)
	sw	a6,12(sp)
	.loc 1 381 39
	lui	a6,%hi(u64Timestamp)
	lw	a7,%lo(u64Timestamp+4)(a6)
	lw	a6,%lo(u64Timestamp)(a6)
	andi	a4,a6,0
	andi	a5,a7,-1
	.loc 1 381 73
	lw	a6,12(sp)
	mv	a2,a6
	li	a3,0
	.loc 1 381 71
	or	a0,a4,a2
	or	a1,a5,a3
	.loc 1 381 22
	lui	a5,%hi(u64Timestamp)
	sw	a0,%lo(u64Timestamp)(a5)
	sw	a1,%lo(u64Timestamp+4)(a5)
	.loc 1 383 20
	lui	a5,%hi(u32LastDc32Value)
	lw	a5,%lo(u32LastDc32Value)(a5)
	.loc 1 383 12
	lw	a4,12(sp)
	bgeu	a4,a5,.L9
	.loc 1 386 41
	lui	a5,%hi(u64Timestamp)
	lw	a4,%lo(u64Timestamp)(a5)
	lw	a5,%lo(u64Timestamp+4)(a5)
	li	a0,0
	li	a1,1
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	.loc 1 386 26
	lui	a3,%hi(u64Timestamp)
	sw	a4,%lo(u64Timestamp)(a3)
	sw	a5,%lo(u64Timestamp+4)(a3)
.L9:
	.loc 1 389 26
	lui	a5,%hi(u32LastDc32Value)
	lw	a4,12(sp)
	sw	a4,%lo(u32LastDc32Value)(a5)
.LBE2:
	j	.L10
.L8:
	.loc 1 395 9
	lui	a5,%hi(pEsc)
	lw	a4,%lo(pEsc)(a5)
	li	a5,4096
	addi	a5,a5,-1776
	add	a5,a4,a5
	li	a2,8
	mv	a1,a5
	lui	a5,%hi(u64Timestamp)
	addi	a0,a5,%lo(u64Timestamp)
	call	memcpy
.L10:
	.loc 1 398 29
	lui	a5,%hi(u32CheckForDcOverrunCnt)
	sw	zero,%lo(u32CheckForDcOverrunCnt)(a5)
	.loc 1 400 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE233:
	.size	COE_SyncTimeStamp, .-COE_SyncTimeStamp
	.globl	sSyncmanagertype
	.section	.sdata.sSyncmanagertype,"aw"
	.align	2
	.type	sSyncmanagertype, @object
	.size	sSyncmanagertype, 6
sSyncmanagertype:
	.half	4
	.half	513
	.half	1027
	.globl	asEntryDesc0x1C00
	.section	.rodata.asEntryDesc0x1C00,"a"
	.align	2
	.type	asEntryDesc0x1C00, @object
	.size	asEntryDesc0x1C00, 12
asEntryDesc0x1C00:
	.half	5
	.half	8
	.half	7
	.half	5
	.half	8
	.half	7
	.globl	aName0x1C00
	.section	.rodata.aName0x1C00,"a"
	.align	2
	.type	aName0x1C00, @object
	.size	aName0x1C00, 18
aName0x1C00:
	.string	"Sync manager type"
	.globl	asEntryDesc0x1C3x
	.section	.rodata.asEntryDesc0x1C3x,"a"
	.align	2
	.type	asEntryDesc0x1C3x, @object
	.size	asEntryDesc0x1C3x, 198
asEntryDesc0x1C3x:
	.half	5
	.half	8
	.half	7
	.half	6
	.half	16
	.half	15
	.half	7
	.half	32
	.half	7
	.half	0
	.half	32
	.half	0
	.half	6
	.half	16
	.half	7
	.half	7
	.half	32
	.half	7
	.half	7
	.half	32
	.half	7
	.half	0
	.half	32
	.half	0
	.half	6
	.half	16
	.half	63
	.half	7
	.half	32
	.half	7
	.half	7
	.half	32
	.half	63
	.half	6
	.half	16
	.half	7
	.half	6
	.half	16
	.half	7
	.half	6
	.half	16
	.half	7
	.half	0
	.half	16
	.half	0
	.half	0
	.half	32
	.half	0
	.half	0
	.half	32
	.half	0
	.half	0
	.half	32
	.half	0
	.half	0
	.half	32
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	1
	.half	1
	.half	7
	.globl	aName0x1C32
	.section	.rodata.aName0x1C32,"a"
	.align	2
	.type	aName0x1C32, @object
	.size	aName0x1C32, 264
aName0x1C32:
	.string	"SM output parameter"
	.string	"Synchronization Type"
	.string	"Cycle Time"
	.string	""
	.string	"Synchronization Types supported"
	.string	"Minimum Cycle Time"
	.string	"Calc and Copy Time"
	.string	""
	.string	"Get Cycle Time"
	.string	"Delay Time"
	.string	"Sync0 Cycle Time"
	.string	"SM-Event Missed"
	.string	"Cycle Time Too Small"
	.string	"Shift Time Too Short Counter"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"Sync Error"
	.string	"\377"
	.globl	aName0x1C33
	.section	.rodata.aName0x1C33,"a"
	.align	2
	.type	aName0x1C33, @object
	.size	aName0x1C33, 263
aName0x1C33:
	.string	"SM input parameter"
	.string	"Synchronization Type"
	.string	"Cycle Time"
	.string	""
	.string	"Synchronization Types supported"
	.string	"Minimum Cycle Time"
	.string	"Calc and Copy Time"
	.string	""
	.string	"Get Cycle Time"
	.string	"Delay Time"
	.string	"Sync0 Cycle Time"
	.string	"SM-Event Missed"
	.string	"Cycle Time Too Small"
	.string	"Shift Time Too Short Counter"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"Sync Error"
	.string	"\377"
	.globl	ObjDicList
	.section	.sbss.ObjDicList,"aw",@nobits
	.align	2
	.type	ObjDicList, @object
	.size	ObjDicList, 4
ObjDicList:
	.zero	4
	.globl	GenObjDic
	.section	.data.GenObjDic,"aw"
	.align	2
	.type	GenObjDic, @object
	.size	GenObjDic, 480
GenObjDic:
	.word	0
	.word	0
	.half	4096
	.half	7
	.half	1792
	.zero	2
	.word	sEntryDesc0x1000
	.word	aName0x1000
	.word	u32Devicetype
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	4097
	.half	5
	.half	1792
	.zero	2
	.word	sEntryDesc0x1001
	.word	aName0x1001
	.word	u16ErrorRegister
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	4104
	.half	9
	.half	1792
	.zero	2
	.word	sEntryDesc0x1008
	.word	aName0x1008
	.word	acDevicename
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	4105
	.half	9
	.half	1792
	.zero	2
	.word	sEntryDesc0x1009
	.word	aName0x1009
	.word	acHardwareversion
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	4106
	.half	9
	.half	1792
	.zero	2
	.word	sEntryDesc0x100A
	.word	aName0x100A
	.word	acSoftwareversion
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	4120
	.half	35
	.half	2308
	.zero	2
	.word	asEntryDesc0x1018
	.word	aName0x1018
	.word	sIdentity
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	4337
	.half	42
	.half	2306
	.zero	2
	.word	asEntryDesc0x10F1
	.word	aName0x10F1
	.word	sErrorSettings
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	4344
	.half	27
	.half	1792
	.zero	2
	.word	sEntryDesc0x10F8
	.word	aName0x10F8
	.word	u64Timestamp
	.word	Read0x10F8
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	7168
	.half	5
	.half	2052
	.zero	2
	.word	asEntryDesc0x1C00
	.word	aName0x1C00
	.word	sSyncmanagertype
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	7218
	.half	41
	.half	2336
	.zero	2
	.word	asEntryDesc0x1C3x
	.word	aName0x1C32
	.word	sSyncManOutPar
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	7219
	.half	41
	.half	2336
	.zero	2
	.word	asEntryDesc0x1C3x
	.word	aName0x1C33
	.word	sSyncManInPar
	.word	0
	.word	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.half	-1
	.half	0
	.half	0
	.zero	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.half	0
	.zero	2
	.section	.text.COE_GetObjectDictionary,"ax",@progbits
	.align	1
	.globl	COE_GetObjectDictionary
	.type	COE_GetObjectDictionary, @function
COE_GetObjectDictionary:
.LFB234:
	.loc 1 544 1
	.cfi_startproc
	.loc 1 545 12
	lui	a5,%hi(ObjDicList)
	lw	a5,%lo(ObjDicList)(a5)
	.loc 1 546 1
	mv	a0,a5
	ret
	.cfi_endproc
.LFE234:
	.size	COE_GetObjectDictionary, .-COE_GetObjectDictionary
	.section	.text.COE_UpdateSyncErrorStatus,"ax",@progbits
	.align	1
	.globl	COE_UpdateSyncErrorStatus
	.type	COE_UpdateSyncErrorStatus, @function
COE_UpdateSyncErrorStatus:
.LFB235:
	.loc 1 554 1
	.cfi_startproc
	.loc 1 555 23
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,38(a5)
	lbu	a5,39(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	zext.h	a5,a5
	.loc 1 555 8
	bne	a5,zero,.L14
	.loc 1 555 69 discriminator 1
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,36(a5)
	lbu	a5,37(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	zext.h	a4,a5
	.loc 1 555 110 discriminator 1
	lui	a5,%hi(sErrorSettings)
	addi	a5,a5,%lo(sErrorSettings)
	lbu	a3,6(a5)
	lbu	a5,7(a5)
	slli	a5,a5,8
	or	a5,a5,a3
	zext.h	a5,a5
	.loc 1 555 52 discriminator 1
	bleu	a4,a5,.L15
.L14:
	.loc 1 557 36
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	li	a4,1
	sb	a4,60(a5)
	j	.L16
.L15:
	.loc 1 561 36
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	sb	zero,60(a5)
.L16:
	.loc 1 565 22
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	lbu	a4,38(a5)
	lbu	a5,39(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	zext.h	a5,a5
	.loc 1 565 8
	bne	a5,zero,.L17
	.loc 1 565 67 discriminator 1
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	lbu	a4,36(a5)
	lbu	a5,37(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	zext.h	a4,a5
	.loc 1 565 108 discriminator 1
	lui	a5,%hi(sErrorSettings)
	addi	a5,a5,%lo(sErrorSettings)
	lbu	a3,6(a5)
	lbu	a5,7(a5)
	slli	a5,a5,8
	or	a5,a5,a3
	zext.h	a5,a5
	.loc 1 565 51 discriminator 1
	bleu	a4,a5,.L18
.L17:
	.loc 1 567 35
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	li	a4,1
	sb	a4,60(a5)
	j	.L19
.L18:
	.loc 1 571 35
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	sb	zero,60(a5)
	.loc 1 574 1
	nop
.L19:
	nop
	ret
	.cfi_endproc
.LFE235:
	.size	COE_UpdateSyncErrorStatus, .-COE_UpdateSyncErrorStatus
	.section	.text.COE_ObjInit,"ax",@progbits
	.align	1
	.globl	COE_ObjInit
	.type	COE_ObjInit, @function
COE_ObjInit:
.LFB236:
	.loc 1 582 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 586 38
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,0(a5)
	andi	a4,a4,0
	ori	a4,a4,32
	sb	a4,0(a5)
	lbu	a4,1(a5)
	andi	a4,a4,0
	sb	a4,1(a5)
	.loc 1 594 36
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,2(a5)
	andi	a4,a4,0
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	sb	a4,3(a5)
	.loc 1 601 37
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,4(a5)
	andi	a4,a4,0
	sb	a4,4(a5)
	lbu	a4,5(a5)
	andi	a4,a4,0
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	sb	a4,7(a5)
	.loc 1 605 45
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,12(a5)
	andi	a4,a4,0
	ori	a4,a4,31
	sb	a4,12(a5)
	lbu	a4,13(a5)
	andi	a4,a4,0
	ori	a4,a4,64
	sb	a4,13(a5)
	.loc 1 620 36
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,14(a5)
	andi	a4,a4,0
	ori	a4,a4,-32
	sb	a4,14(a5)
	lbu	a4,15(a5)
	andi	a4,a4,0
	ori	a4,a4,121
	sb	a4,15(a5)
	lbu	a4,16(a5)
	andi	a4,a4,0
	sb	a4,16(a5)
	lbu	a4,17(a5)
	andi	a4,a4,0
	sb	a4,17(a5)
	.loc 1 625 39
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,18(a5)
	andi	a4,a4,0
	sb	a4,18(a5)
	lbu	a4,19(a5)
	andi	a4,a4,0
	sb	a4,19(a5)
	lbu	a4,20(a5)
	andi	a4,a4,0
	sb	a4,20(a5)
	lbu	a4,21(a5)
	andi	a4,a4,0
	sb	a4,21(a5)
	.loc 1 628 36
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,26(a5)
	andi	a4,a4,0
	sb	a4,26(a5)
	lbu	a4,27(a5)
	andi	a4,a4,0
	sb	a4,27(a5)
	.loc 1 631 33
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,28(a5)
	andi	a4,a4,0
	sb	a4,28(a5)
	lbu	a4,29(a5)
	andi	a4,a4,0
	sb	a4,29(a5)
	lbu	a4,30(a5)
	andi	a4,a4,0
	sb	a4,30(a5)
	lbu	a4,31(a5)
	andi	a4,a4,0
	sb	a4,31(a5)
	.loc 1 634 44
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,36(a5)
	andi	a4,a4,0
	sb	a4,36(a5)
	lbu	a4,37(a5)
	andi	a4,a4,0
	sb	a4,37(a5)
	.loc 1 637 44
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,38(a5)
	andi	a4,a4,0
	sb	a4,38(a5)
	lbu	a4,39(a5)
	andi	a4,a4,0
	sb	a4,39(a5)
	.loc 1 640 32
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	sb	zero,60(a5)
	.loc 1 643 37
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	lbu	a4,0(a5)
	andi	a4,a4,0
	ori	a4,a4,32
	sb	a4,0(a5)
	lbu	a4,1(a5)
	andi	a4,a4,0
	sb	a4,1(a5)
	.loc 1 645 39
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	lbu	a4,2(a5)
	andi	a4,a4,0
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	sb	a4,3(a5)
	.loc 1 649 52
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 649 36
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	andi	a3,a4,255
	lbu	a2,4(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,4(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,5(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,5(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,6(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,6(a5)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 1 652 60
	lui	a5,%hi(sSyncManOutPar)
	addi	a5,a5,%lo(sSyncManOutPar)
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	zext.h	a4,a5
	.loc 1 652 44
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	zext.h	a4,a4
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
	.loc 1 655 35
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	lbu	a4,14(a5)
	andi	a4,a4,0
	ori	a4,a4,-32
	sb	a4,14(a5)
	lbu	a4,15(a5)
	andi	a4,a4,0
	ori	a4,a4,121
	sb	a4,15(a5)
	lbu	a4,16(a5)
	andi	a4,a4,0
	sb	a4,16(a5)
	lbu	a4,17(a5)
	andi	a4,a4,0
	sb	a4,17(a5)
	.loc 1 657 38
	lui	a5,%hi(sSyncManInPar)
	addi	a5,a5,%lo(sSyncManInPar)
	lbu	a4,18(a5)
	andi	a4,a4,0
	sb	a4,18(a5)
	lbu	a4,