	.file	"ecatappl.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:\\sdk_env_v1.11.0\\hpm_sdk\\samples\\ethercat\\ecat_io\\SSC\\Src\\ecatappl.c"
	.globl	pEEPROM
	.section	.sbss.pEEPROM,"aw",@nobits
	.align	2
	.type	pEEPROM, @object
	.size	pEEPROM, 4
pEEPROM:
	.zero	4
	.globl	bEcatWaitForInputUpdate
	.section	.sbss.bEcatWaitForInputUpdate,"aw",@nobits
	.type	bEcatWaitForInputUpdate, @object
	.size	bEcatWaitForInputUpdate, 1
bEcatWaitForInputUpdate:
	.zero	1
	.globl	bEtherCATRunLed
	.section	.sbss.bEtherCATRunLed,"aw",@nobits
	.type	bEtherCATRunLed, @object
	.size	bEtherCATRunLed, 1
bEtherCATRunLed:
	.zero	1
	.globl	bEtherCATErrorLed
	.section	.sbss.bEtherCATErrorLed,"aw",@nobits
	.type	bEtherCATErrorLed, @object
	.size	bEtherCATErrorLed, 1
bEtherCATErrorLed:
	.zero	1
	.globl	bRunApplication
	.section	.sbss.bRunApplication,"aw",@nobits
	.type	bRunApplication, @object
	.size	bRunApplication, 1
bRunApplication:
	.zero	1
	.globl	EepromReadSize
	.section	.sbss.EepromReadSize,"aw",@nobits
	.align	1
	.type	EepromReadSize, @object
	.size	EepromReadSize, 2
EepromReadSize:
	.zero	2
	.globl	pAPPL_EEPROM_Read
	.section	.sbss.pAPPL_EEPROM_Read,"aw",@nobits
	.align	2
	.type	pAPPL_EEPROM_Read, @object
	.size	pAPPL_EEPROM_Read, 4
pAPPL_EEPROM_Read:
	.zero	4
	.globl	pAPPL_EEPROM_Write
	.section	.sbss.pAPPL_EEPROM_Write,"aw",@nobits
	.align	2
	.type	pAPPL_EEPROM_Write, @object
	.size	pAPPL_EEPROM_Write, 4
pAPPL_EEPROM_Write:
	.zero	4
	.globl	pAPPL_EEPROM_Reload
	.section	.sbss.pAPPL_EEPROM_Reload,"aw",@nobits
	.align	2
	.type	pAPPL_EEPROM_Reload, @object
	.size	pAPPL_EEPROM_Reload, 4
pAPPL_EEPROM_Reload:
	.zero	4
	.globl	pAPPL_EEPROM_Store
	.section	.sbss.pAPPL_EEPROM_Store,"aw",@nobits
	.align	2
	.type	pAPPL_EEPROM_Store, @object
	.size	pAPPL_EEPROM_Store, 4
pAPPL_EEPROM_Store:
	.zero	4
	.globl	pAPPL_CoeReadInd
	.section	.sbss.pAPPL_CoeReadInd,"aw",@nobits
	.align	2
	.type	pAPPL_CoeReadInd, @object
	.size	pAPPL_CoeReadInd, 4
pAPPL_CoeReadInd:
	.zero	4
	.globl	pAPPL_CoeWriteInd
	.section	.sbss.pAPPL_CoeWriteInd,"aw",@nobits
	.align	2
	.type	pAPPL_CoeWriteInd, @object
	.size	pAPPL_CoeWriteInd, 4
pAPPL_CoeWriteInd:
	.zero	4
	.globl	pAPPL_MainLoop
	.section	.sbss.pAPPL_MainLoop,"aw",@nobits
	.align	2
	.type	pAPPL_MainLoop, @object
	.size	pAPPL_MainLoop, 4
pAPPL_MainLoop:
	.zero	4
	.globl	aEepromData
	.section	.data.aEepromData,"aw"
	.align	2
	.type	aEepromData, @object
	.size	aEepromData, 2048
aEepromData:
	.string	"\200\f\201f"
	.string	""
	.string	""
	.string	""
	.string	"\0224"
	.string	""
	.string	""
	.string	""
	.string	"w"
	.string	"\001"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001"
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
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\020\200"
	.string	"\200\020\200"
	.string	"\004"
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
	.string	"\017"
	.string	"\001"
	.string	"\n"
	.string	"H"
	.string	"\t\013ECAT_Device\ndigital_io\bSynchron\013SM-Synchron!NumOfEntries process data mapping\fInputCounter\021MY_VAL_8BIT_INPUT\rOutputCounter\022MY_VAL_8BIT_OUTPUT"
	.string	"\036"
	.string	"\020"
	.string	"\001"
	.string	"\002\002"
	.string	"#"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\f"
	.string	""
	.string	"\001"
	.string	"\021"
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
	.string	"("
	.string	"\002"
	.string	"\001\002\003\377)"
	.string	"\020"
	.string	""
	.string	"\020\200"
	.string	"&"
	.string	"\001\001\200\020\200"
	.string	"\""
	.string	"\001\002"
	.string	"\021\005"
	.string	"d"
	.string	"\001\003"
	.string	"\024\005"
	.string	" "
	.string	"\001\0042"
	.string	"\f"
	.string	""
	.string	"\032\002\003"
	.string	"\005"
	.string	""
	.string	""
	.string	"`\001\006\007 "
	.string	""
	.string	""
	.string	"`\002\007\005\b"
	.string	""
	.string	"3"
	.string	"\f"
	.string	""
	.string	"\026\002\002"
	.string	"\005"
	.string	""
	.string	""
	.string	"p\001\b\007 "
	.string	""
	.string	""
	.string	"p\002\t\005\b"
	.string	""
	.string	"<"
	.string	"\f"
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
	.string	"\003\004"
	.string	""
	.string	""
	.string	""
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\377