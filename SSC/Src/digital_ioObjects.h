/*
* This source file is part of the EtherCAT Slave Stack Code licensed by Beckhoff Automation GmbH & Co KG, 33415 Verl, Germany.
* The corresponding license agreement applies. This hint shall not be removed.
*/

/**
* \addtogroup digital_io digital_io
* @{
*/

/**
\file digital_ioObjects
\author ET9300Utilities.ApplicationHandler (Version 1.6.3.0) | EthercatSSC@beckhoff.com

\brief digital_io specific objects<br>
\brief NOTE : This file will be overwritten if a new object dictionary is generated!<br>
*/

#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
#define PROTO
#else
#define PROTO extern
#endif
/******************************************************************************
*                    Object 0x1600 : RxPDO_Control_Slave1
******************************************************************************/
/**
* \addtogroup 0x1600 0x1600 | RxPDO_Control_Slave1
* @{
* \brief Object 0x1600 (RxPDO_Control_Slave1) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1<br>
* SubIndex 2<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1600[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ | OBJACCESS_RXPDOMAPPING },
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex1 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }}; /* Subindex2 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x1600[] = "RxPDO_Control_Slave1\000"
"SubIndex 001\000"
"SubIndex 002\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT32 SI1; /* Subindex1 -  */
UINT32 SI2; /* Subindex2 -  */
} OBJ_STRUCT_PACKED_END
TOBJ1600;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1600 RxPDO_Control_Slave10x1600
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={2,0x70000110,0x70000210}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1601 : RxPDO_Control_Slave2
******************************************************************************/
/**
* \addtogroup 0x1601 0x1601 | RxPDO_Control_Slave2
* @{
* \brief Object 0x1601 (RxPDO_Control_Slave2) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1<br>
* SubIndex 2<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1601[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ | OBJACCESS_RXPDOMAPPING },
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex1 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }}; /* Subindex2 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x1601[] = "RxPDO_Control_Slave2\000"
"SubIndex 001\000"
"SubIndex 002\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT32 SI1; /* Subindex1 -  */
UINT32 SI2; /* Subindex2 -  */
} OBJ_STRUCT_PACKED_END
TOBJ1601;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1601 RxPDO_Control_Slave20x1601
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={2,0x70100110,0x70100210}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1A00 : TxPDO_Status_Slave1
******************************************************************************/
/**
* \addtogroup 0x1A00 0x1A00 | TxPDO_Status_Slave1
* @{
* \brief Object 0x1A00 (TxPDO_Status_Slave1) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1<br>
* SubIndex 2<br>
* SubIndex 3<br>
* SubIndex 4<br>
* SubIndex 5<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1A00[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ | OBJACCESS_TXPDOMAPPING },
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex1 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex2 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex3 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex4 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }}; /* Subindex5 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x1A00[] = "TxPDO_Status_Slave1\000"
"SubIndex 001\000"
"SubIndex 002\000"
"SubIndex 003\000"
"SubIndex 004\000"
"SubIndex 005\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT32 SI1; /* Subindex1 -  */
UINT32 SI2; /* Subindex2 -  */
UINT32 SI3; /* Subindex3 -  */
UINT32 SI4; /* Subindex4 -  */
UINT32 SI5; /* Subindex5 -  */
} OBJ_STRUCT_PACKED_END
TOBJ1A00;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1A00 TxPDO_Status_Slave10x1A00
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={5,0x60000110,0x60000220,0x60000310,0x60000410,0x60000510}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1A01 : TxPDO_Status_Slave2
******************************************************************************/
/**
* \addtogroup 0x1A01 0x1A01 | TxPDO_Status_Slave2
* @{
* \brief Object 0x1A01 (TxPDO_Status_Slave2) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1<br>
* SubIndex 2<br>
* SubIndex 3<br>
* SubIndex 4<br>
* SubIndex 5<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1A01[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ | OBJACCESS_TXPDOMAPPING },
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex1 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex2 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex3 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex4 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }}; /* Subindex5 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x1A01[] = "TxPDO_Status_Slave2\000"
"SubIndex 001\000"
"SubIndex 002\000"
"SubIndex 003\000"
"SubIndex 004\000"
"SubIndex 005\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT32 SI1; /* Subindex1 -  */
UINT32 SI2; /* Subindex2 -  */
UINT32 SI3; /* Subindex3 -  */
UINT32 SI4; /* Subindex4 -  */
UINT32 SI5; /* Subindex5 -  */
} OBJ_STRUCT_PACKED_END
TOBJ1A01;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1A01 TxPDO_Status_Slave20x1A01
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={5,0x60100110,0x60100220,0x60100310,0x60100410,0x60100510}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1C12 : SyncManager 2 assignment
******************************************************************************/
/**
* \addtogroup 0x1C12 0x1C12 | SyncManager 2 assignment
* @{
* \brief Object 0x1C12 (SyncManager 2 assignment) definition
*/
#ifdef _OBJD_
/**
* \brief Entry descriptions<br>
* 
* Subindex 0<br>
* Subindex 1 - n (the same entry description is used)<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1C12[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READWRITE },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }};

/**
* \brief Object name definition<br>
* For Subindex 1 to n the syntax 'Subindex XXX' is used
*/
OBJCONST UCHAR OBJMEM aName0x1C12[] = "SyncManager 2 assignment\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16   u16SubIndex0;  /**< \brief Subindex 0 */
UINT16 aEntries[2];  /**< \brief Subindex 1 - 2 */
} OBJ_STRUCT_PACKED_END
TOBJ1C12;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1C12 sRxPDOassign
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={2,{0x1600,0x1601}}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1C13 : SyncManager 3 assignment
******************************************************************************/
/**
* \addtogroup 0x1C13 0x1C13 | SyncManager 3 assignment
* @{
* \brief Object 0x1C13 (SyncManager 3 assignment) definition
*/
#ifdef _OBJD_
/**
* \brief Entry descriptions<br>
* 
* Subindex 0<br>
* Subindex 1 - n (the same entry description is used)<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1C13[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READWRITE },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }};

/**
* \brief Object name definition<br>
* For Subindex 1 to n the syntax 'Subindex XXX' is used
*/
OBJCONST UCHAR OBJMEM aName0x1C13[] = "SyncManager 3 assignment\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16   u16SubIndex0;  /**< \brief Subindex 0 */
UINT16 aEntries[2];  /**< \brief Subindex 1 - 2 */
} OBJ_STRUCT_PACKED_END
TOBJ1C13;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1C13 sTxPDOassign
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={2,{0x1A00,0x1A01}}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x2000 : SDO_Config_RW_Slave1
******************************************************************************/
/**
* \addtogroup 0x2000 0x2000 | SDO_Config_RW_Slave1
* @{
* \brief Object 0x2000 (SDO_Config_RW_Slave1) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Drive_Station_Addr<br>
* SubIndex 2 - Comm_Address_High<br>
* SubIndex 3 - CAN_Comm_Freq<br>
* SubIndex 4 - CAN_Heartbeat_Time<br>
* SubIndex 5 - Work_Mode<br>
* SubIndex 6 - Modbus_Baudrate<br>
* SubIndex 7 - Motor_Pole_Pairs<br>
* SubIndex 8 - Start_Torque<br>
* SubIndex 9 - Sensorless_Start_Spd<br>
* SubIndex 10 - Deceleration_Time<br>
* SubIndex 11 - Acceleration_Time<br>
* SubIndex 12 - Current_Protect<br>
* SubIndex 13 - Brake_Torque<br>
* SubIndex 14 - Brake_Lock_Torque<br>
* SubIndex 15 - High_Voltage_Alarm<br>
* SubIndex 16 - Low_Voltage_Alarm<br>
* SubIndex 17 - Speed_Loop_P<br>
* SubIndex 18 - Speed_Loop_I<br>
* SubIndex 19 - Speed_Loop_D<br>
* SubIndex 20 - Over_Limit_Ratio_C<br>
* SubIndex 21 - PWM_Output_Min<br>
* SubIndex 22 - PWM_Output_Max<br>
* SubIndex 23 - Current_Loop_P<br>
* SubIndex 24 - Current_Loop_I<br>
* SubIndex 25 - Current_Loop_D<br>
* SubIndex 26 - Current_Loop_C<br>
* SubIndex 27 - Temp_Alarm_Point<br>
* SubIndex 28 - Software_Speed_Max<br>
* SubIndex 29 - Software_Speed_Min<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x2000[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex1 - Drive_Station_Addr */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex2 - Comm_Address_High */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex3 - CAN_Comm_Freq */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex4 - CAN_Heartbeat_Time */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex5 - Work_Mode */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex6 - Modbus_Baudrate */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex7 - Motor_Pole_Pairs */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex8 - Start_Torque */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex9 - Sensorless_Start_Spd */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex10 - Deceleration_Time */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex11 - Acceleration_Time */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex12 - Current_Protect */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex13 - Brake_Torque */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex14 - Brake_Lock_Torque */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex15 - High_Voltage_Alarm */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex16 - Low_Voltage_Alarm */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex17 - Speed_Loop_P */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex18 - Speed_Loop_I */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex19 - Speed_Loop_D */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex20 - Over_Limit_Ratio_C */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex21 - PWM_Output_Min */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex22 - PWM_Output_Max */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex23 - Current_Loop_P */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex24 - Current_Loop_I */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex25 - Current_Loop_D */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex26 - Current_Loop_C */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex27 - Temp_Alarm_Point */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READWRITE }, /* Subindex28 - Software_Speed_Max */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READWRITE }}; /* Subindex29 - Software_Speed_Min */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x2000[] = "SDO_Config_RW_Slave1\000"
"Drive_Station_Addr\000"
"Comm_Address_High\000"
"CAN_Comm_Freq\000"
"CAN_Heartbeat_Time\000"
"Work_Mode\000"
"Modbus_Baudrate\000"
"Motor_Pole_Pairs\000"
"Start_Torque\000"
"Sensorless_Start_Spd\000"
"Deceleration_Time\000"
"Acceleration_Time\000"
"Current_Protect\000"
"Brake_Torque\000"
"Brake_Lock_Torque\000"
"High_Voltage_Alarm\000"
"Low_Voltage_Alarm\000"
"Speed_Loop_P\000"
"Speed_Loop_I\000"
"Speed_Loop_D\000"
"Over_Limit_Ratio_C\000"
"PWM_Output_Min\000"
"PWM_Output_Max\000"
"Current_Loop_P\000"
"Current_Loop_I\000"
"Current_Loop_D\000"
"Current_Loop_C\000"
"Temp_Alarm_Point\000"
"Software_Speed_Max\000"
"Software_Speed_Min\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Drive_Station_Addr; /* Subindex1 - Drive_Station_Addr */
UINT16 Comm_Address_High; /* Subindex2 - Comm_Address_High */
UINT16 CAN_Comm_Freq; /* Subindex3 - CAN_Comm_Freq */
UINT16 CAN_Heartbeat_Time; /* Subindex4 - CAN_Heartbeat_Time */
UINT16 Work_Mode; /* Subindex5 - Work_Mode */
UINT16 Modbus_Baudrate; /* Subindex6 - Modbus_Baudrate */
UINT16 Motor_Pole_Pairs; /* Subindex7 - Motor_Pole_Pairs */
UINT16 Start_Torque; /* Subindex8 - Start_Torque */
UINT16 Sensorless_Start_Spd; /* Subindex9 - Sensorless_Start_Spd */
UINT16 Deceleration_Time; /* Subindex10 - Deceleration_Time */
UINT16 Acceleration_Time; /* Subindex11 - Acceleration_Time */
UINT16 Current_Protect; /* Subindex12 - Current_Protect */
UINT16 Brake_Torque; /* Subindex13 - Brake_Torque */
UINT16 Brake_Lock_Torque; /* Subindex14 - Brake_Lock_Torque */
UINT16 High_Voltage_Alarm; /* Subindex15 - High_Voltage_Alarm */
UINT16 Low_Voltage_Alarm; /* Subindex16 - Low_Voltage_Alarm */
UINT16 Speed_Loop_P; /* Subindex17 - Speed_Loop_P */
UINT16 Speed_Loop_I; /* Subindex18 - Speed_Loop_I */
UINT16 Speed_Loop_D; /* Subindex19 - Speed_Loop_D */
UINT16 Over_Limit_Ratio_C; /* Subindex20 - Over_Limit_Ratio_C */
UINT16 PWM_Output_Min; /* Subindex21 - PWM_Output_Min */
UINT16 PWM_Output_Max; /* Subindex22 - PWM_Output_Max */
UINT16 Current_Loop_P; /* Subindex23 - Current_Loop_P */
UINT16 Current_Loop_I; /* Subindex24 - Current_Loop_I */
UINT16 Current_Loop_D; /* Subindex25 - Current_Loop_D */
UINT16 Current_Loop_C; /* Subindex26 - Current_Loop_C */
UINT16 Temp_Alarm_Point; /* Subindex27 - Temp_Alarm_Point */
UINT32 Software_Speed_Max; /* Subindex28 - Software_Speed_Max */
UINT32 Software_Speed_Min; /* Subindex29 - Software_Speed_Min */
} OBJ_STRUCT_PACKED_END
TOBJ2000;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ2000 SDO_Config_RW_Slave10x2000
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={29,0x0001,0x0000,0x03E8,0x0000,0x0004,0x0000,0x0004,0x00C0,0x0800,0x00C8,0x00C8,0x0384,0x07FF,0x00E0,0x0258,0x0055,0x0040,0x0020,0x0000,0x0050,0x0034,0x07FF,0x0000,0x0020,0x0000,0x0020,0x0055,0x000093E0,0x00000014}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x2001 : SDO_Status_RO_Slave1
******************************************************************************/
/**
* \addtogroup 0x2001 0x2001 | SDO_Status_RO_Slave1
* @{
* \brief Object 0x2001 (SDO_Status_RO_Slave1) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Ext_Motor_Speed_Set<br>
* SubIndex 2 - Motor_Work_Status<br>
* SubIndex 3 - Motor_Target_Speed<br>
* SubIndex 4 - Given_Speed<br>
* SubIndex 5 - Motor_State<br>
* SubIndex 6 - Port_Speed_Voltage<br>
* SubIndex 7 - Current_Protect_RO<br>
* SubIndex 8 - Section_Speed_Port<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x2001[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex1 - Ext_Motor_Speed_Set */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex2 - Motor_Work_Status */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex3 - Motor_Target_Speed */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex4 - Given_Speed */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex5 - Motor_State */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex6 - Port_Speed_Voltage */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex7 - Current_Protect_RO */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }}; /* Subindex8 - Section_Speed_Port */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x2001[] = "SDO_Status_RO_Slave1\000"
"Ext_Motor_Speed_Set\000"
"Motor_Work_Status\000"
"Motor_Target_Speed\000"
"Given_Speed\000"
"Motor_State\000"
"Port_Speed_Voltage\000"
"Current_Protect_RO\000"
"Section_Speed_Port\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Ext_Motor_Speed_Set; /* Subindex1 - Ext_Motor_Speed_Set */
UINT16 Motor_Work_Status; /* Subindex2 - Motor_Work_Status */
UINT32 Motor_Target_Speed; /* Subindex3 - Motor_Target_Speed */
UINT32 Given_Speed; /* Subindex4 - Given_Speed */
UINT32 Motor_State; /* Subindex5 - Motor_State */
UINT16 Port_Speed_Voltage; /* Subindex6 - Port_Speed_Voltage */
UINT16 Current_Protect_RO; /* Subindex7 - Current_Protect_RO */
UINT16 Section_Speed_Port; /* Subindex8 - Section_Speed_Port */
} OBJ_STRUCT_PACKED_END
TOBJ2001;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ2001 SDO_Status_RO_Slave10x2001
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={8,0x0000,0x0000,0x00000000,0x00000000,0x00000000,0x0000,0x0000,0x0000}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x2010 : SDO_Config_RW_Slave2
******************************************************************************/
/**
* \addtogroup 0x2010 0x2010 | SDO_Config_RW_Slave2
* @{
* \brief Object 0x2010 (SDO_Config_RW_Slave2) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Drive_Station_Addr<br>
* SubIndex 2 - Comm_Address_High<br>
* SubIndex 3 - CAN_Comm_Freq<br>
* SubIndex 4 - CAN_Heartbeat_Time<br>
* SubIndex 5 - Work_Mode<br>
* SubIndex 6 - Modbus_Baudrate<br>
* SubIndex 7 - Motor_Pole_Pairs<br>
* SubIndex 8 - Start_Torque<br>
* SubIndex 9 - Sensorless_Start_Spd<br>
* SubIndex 10 - Deceleration_Time<br>
* SubIndex 11 - Acceleration_Time<br>
* SubIndex 12 - Current_Protect<br>
* SubIndex 13 - Brake_Torque<br>
* SubIndex 14 - Brake_Lock_Torque<br>
* SubIndex 15 - High_Voltage_Alarm<br>
* SubIndex 16 - Low_Voltage_Alarm<br>
* SubIndex 17 - Speed_Loop_P<br>
* SubIndex 18 - Speed_Loop_I<br>
* SubIndex 19 - Speed_Loop_D<br>
* SubIndex 20 - Over_Limit_Ratio_C<br>
* SubIndex 21 - PWM_Output_Min<br>
* SubIndex 22 - PWM_Output_Max<br>
* SubIndex 23 - Current_Loop_P<br>
* SubIndex 24 - Current_Loop_I<br>
* SubIndex 25 - Current_Loop_D<br>
* SubIndex 26 - Current_Loop_C<br>
* SubIndex 27 - Temp_Alarm_Point<br>
* SubIndex 28 - Software_Speed_Max<br>
* SubIndex 29 - Software_Speed_Min<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x2010[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex1 - Drive_Station_Addr */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex2 - Comm_Address_High */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex3 - CAN_Comm_Freq */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex4 - CAN_Heartbeat_Time */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex5 - Work_Mode */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex6 - Modbus_Baudrate */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex7 - Motor_Pole_Pairs */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex8 - Start_Torque */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex9 - Sensorless_Start_Spd */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex10 - Deceleration_Time */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex11 - Acceleration_Time */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex12 - Current_Protect */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex13 - Brake_Torque */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex14 - Brake_Lock_Torque */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex15 - High_Voltage_Alarm */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex16 - Low_Voltage_Alarm */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex17 - Speed_Loop_P */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex18 - Speed_Loop_I */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex19 - Speed_Loop_D */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex20 - Over_Limit_Ratio_C */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex21 - PWM_Output_Min */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex22 - PWM_Output_Max */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex23 - Current_Loop_P */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex24 - Current_Loop_I */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex25 - Current_Loop_D */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex26 - Current_Loop_C */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex27 - Temp_Alarm_Point */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READWRITE }, /* Subindex28 - Software_Speed_Max */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READWRITE }}; /* Subindex29 - Software_Speed_Min */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x2010[] = "SDO_Config_RW_Slave2\000"
"Drive_Station_Addr\000"
"Comm_Address_High\000"
"CAN_Comm_Freq\000"
"CAN_Heartbeat_Time\000"
"Work_Mode\000"
"Modbus_Baudrate\000"
"Motor_Pole_Pairs\000"
"Start_Torque\000"
"Sensorless_Start_Spd\000"
"Deceleration_Time\000"
"Acceleration_Time\000"
"Current_Protect\000"
"Brake_Torque\000"
"Brake_Lock_Torque\000"
"High_Voltage_Alarm\000"
"Low_Voltage_Alarm\000"
"Speed_Loop_P\000"
"Speed_Loop_I\000"
"Speed_Loop_D\000"
"Over_Limit_Ratio_C\000"
"PWM_Output_Min\000"
"PWM_Output_Max\000"
"Current_Loop_P\000"
"Current_Loop_I\000"
"Current_Loop_D\000"
"Current_Loop_C\000"
"Temp_Alarm_Point\000"
"Software_Speed_Max\000"
"Software_Speed_Min\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Drive_Station_Addr; /* Subindex1 - Drive_Station_Addr */
UINT16 Comm_Address_High; /* Subindex2 - Comm_Address_High */
UINT16 CAN_Comm_Freq; /* Subindex3 - CAN_Comm_Freq */
UINT16 CAN_Heartbeat_Time; /* Subindex4 - CAN_Heartbeat_Time */
UINT16 Work_Mode; /* Subindex5 - Work_Mode */
UINT16 Modbus_Baudrate; /* Subindex6 - Modbus_Baudrate */
UINT16 Motor_Pole_Pairs; /* Subindex7 - Motor_Pole_Pairs */
UINT16 Start_Torque; /* Subindex8 - Start_Torque */
UINT16 Sensorless_Start_Spd; /* Subindex9 - Sensorless_Start_Spd */
UINT16 Deceleration_Time; /* Subindex10 - Deceleration_Time */
UINT16 Acceleration_Time; /* Subindex11 - Acceleration_Time */
UINT16 Current_Protect; /* Subindex12 - Current_Protect */
UINT16 Brake_Torque; /* Subindex13 - Brake_Torque */
UINT16 Brake_Lock_Torque; /* Subindex14 - Brake_Lock_Torque */
UINT16 High_Voltage_Alarm; /* Subindex15 - High_Voltage_Alarm */
UINT16 Low_Voltage_Alarm; /* Subindex16 - Low_Voltage_Alarm */
UINT16 Speed_Loop_P; /* Subindex17 - Speed_Loop_P */
UINT16 Speed_Loop_I; /* Subindex18 - Speed_Loop_I */
UINT16 Speed_Loop_D; /* Subindex19 - Speed_Loop_D */
UINT16 Over_Limit_Ratio_C; /* Subindex20 - Over_Limit_Ratio_C */
UINT16 PWM_Output_Min; /* Subindex21 - PWM_Output_Min */
UINT16 PWM_Output_Max; /* Subindex22 - PWM_Output_Max */
UINT16 Current_Loop_P; /* Subindex23 - Current_Loop_P */
UINT16 Current_Loop_I; /* Subindex24 - Current_Loop_I */
UINT16 Current_Loop_D; /* Subindex25 - Current_Loop_D */
UINT16 Current_Loop_C; /* Subindex26 - Current_Loop_C */
UINT16 Temp_Alarm_Point; /* Subindex27 - Temp_Alarm_Point */
UINT32 Software_Speed_Max; /* Subindex28 - Software_Speed_Max */
UINT32 Software_Speed_Min; /* Subindex29 - Software_Speed_Min */
} OBJ_STRUCT_PACKED_END
TOBJ2010;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ2010 SDO_Config_RW_Slave20x2010
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={29,0x0002,0x0000,0x03E8,0x0000,0x0004,0x0000,0x0004,0x00C0,0x0800,0x00C8,0x00C8,0x0384,0x07FF,0x00E0,0x0258,0x0055,0x0040,0x0020,0x0000,0x0050,0x0034,0x07FF,0x0000,0x0020,0x0000,0x0020,0x0055,0x000093E0,0x00000014}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x2011 : SDO_Status_RO_Slave2
******************************************************************************/
/**
* \addtogroup 0x2011 0x2011 | SDO_Status_RO_Slave2
* @{
* \brief Object 0x2011 (SDO_Status_RO_Slave2) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Ext_Motor_Speed_Set<br>
* SubIndex 2 - Motor_Work_Status<br>
* SubIndex 3 - Motor_Target_Speed<br>
* SubIndex 4 - Given_Speed<br>
* SubIndex 5 - Motor_State<br>
* SubIndex 6 - Port_Speed_Voltage<br>
* SubIndex 7 - Current_Protect_RO<br>
* SubIndex 8 - Section_Speed_Port<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x2011[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex1 - Ext_Motor_Speed_Set */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex2 - Motor_Work_Status */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex3 - Motor_Target_Speed */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex4 - Given_Speed */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex5 - Motor_State */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex6 - Port_Speed_Voltage */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex7 - Current_Protect_RO */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }}; /* Subindex8 - Section_Speed_Port */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x2011[] = "SDO_Status_RO_Slave2\000"
"Ext_Motor_Speed_Set\000"
"Motor_Work_Status\000"
"Motor_Target_Speed\000"
"Given_Speed\000"
"Motor_State\000"
"Port_Speed_Voltage\000"
"Current_Protect_RO\000"
"Section_Speed_Port\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Ext_Motor_Speed_Set; /* Subindex1 - Ext_Motor_Speed_Set */
UINT16 Motor_Work_Status; /* Subindex2 - Motor_Work_Status */
UINT32 Motor_Target_Speed; /* Subindex3 - Motor_Target_Speed */
UINT32 Given_Speed; /* Subindex4 - Given_Speed */
UINT32 Motor_State; /* Subindex5 - Motor_State */
UINT16 Port_Speed_Voltage; /* Subindex6 - Port_Speed_Voltage */
UINT16 Current_Protect_RO; /* Subindex7 - Current_Protect_RO */
UINT16 Section_Speed_Port; /* Subindex8 - Section_Speed_Port */
} OBJ_STRUCT_PACKED_END
TOBJ2011;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ2011 SDO_Status_RO_Slave20x2011
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={8,0x0000,0x0000,0x00000000,0x00000000,0x00000000,0x0000,0x0000,0x0000}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x6000 : TxPDO_Status_Slave1
******************************************************************************/
/**
* \addtogroup 0x6000 0x6000 | TxPDO_Status_Slave1
* @{
* \brief Object 0x6000 (TxPDO_Status_Slave1) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Motor_Alarm_Code<br>
* SubIndex 2 - Motor_Actual_Speed<br>
* SubIndex 3 - Actual_Current<br>
* SubIndex 4 - Bus_Voltage<br>
* SubIndex 5 - Actual_Temp<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x6000[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex1 - Motor_Alarm_Code */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex2 - Motor_Actual_Speed */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex3 - Actual_Current */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex4 - Bus_Voltage */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }}; /* Subindex5 - Actual_Temp */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x6000[] = "TxPDO_Status_Slave1\000"
"Motor_Alarm_Code\000"
"Motor_Actual_Speed\000"
"Actual_Current\000"
"Bus_Voltage\000"
"Actual_Temp\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Motor_Alarm_Code; /* Subindex1 - Motor_Alarm_Code */
UINT32 Motor_Actual_Speed; /* Subindex2 - Motor_Actual_Speed */
UINT16 Actual_Current; /* Subindex3 - Actual_Current */
UINT16 Bus_Voltage; /* Subindex4 - Bus_Voltage */
UINT16 Actual_Temp; /* Subindex5 - Actual_Temp */
} OBJ_STRUCT_PACKED_END
TOBJ6000;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ6000 TxPDO_Status_Slave10x6000
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={5,0x0000,0x00000000,0x0000,0x0000,0x0000}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x6010 : TxPDO_Status_Slave2
******************************************************************************/
/**
* \addtogroup 0x6010 0x6010 | TxPDO_Status_Slave2
* @{
* \brief Object 0x6010 (TxPDO_Status_Slave2) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Motor_Alarm_Code<br>
* SubIndex 2 - Motor_Actual_Speed<br>
* SubIndex 3 - Actual_Current<br>
* SubIndex 4 - Bus_Voltage<br>
* SubIndex 5 - Actual_Temp<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x6010[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex1 - Motor_Alarm_Code */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex2 - Motor_Actual_Speed */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex3 - Actual_Current */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex4 - Bus_Voltage */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }}; /* Subindex5 - Actual_Temp */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x6010[] = "TxPDO_Status_Slave2\000"
"Motor_Alarm_Code\000"
"Motor_Actual_Speed\000"
"Actual_Current\000"
"Bus_Voltage\000"
"Actual_Temp\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Motor_Alarm_Code; /* Subindex1 - Motor_Alarm_Code */
UINT32 Motor_Actual_Speed; /* Subindex2 - Motor_Actual_Speed */
UINT16 Actual_Current; /* Subindex3 - Actual_Current */
UINT16 Bus_Voltage; /* Subindex4 - Bus_Voltage */
UINT16 Actual_Temp; /* Subindex5 - Actual_Temp */
} OBJ_STRUCT_PACKED_END
TOBJ6010;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ6010 TxPDO_Status_Slave20x6010
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={5,0x0000,0x00000000,0x0000,0x0000,0x0000}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x7000 : RxPDO_Control_Slave1
******************************************************************************/
/**
* \addtogroup 0x7000 0x7000 | RxPDO_Control_Slave1
* @{
* \brief Object 0x7000 (RxPDO_Control_Slave1) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Control_Command<br>
* SubIndex 2 - Target_Speed_RPM<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x7000[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex1 - Control_Command */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }}; /* Subindex2 - Target_Speed_RPM */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x7000[] = "RxPDO_Control_Slave1\000"
"Control_Command\000"
"Target_Speed_RPM\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Control_Command; /* Subindex1 - Control_Command */
UINT16 Target_Speed_RPM; /* Subindex2 - Target_Speed_RPM */
} OBJ_STRUCT_PACKED_END
TOBJ7000;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ7000 RxPDO_Control_Slave10x7000
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={2,0x0000,0x0000}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x7010 : RxPDO_Control_Slave2
******************************************************************************/
/**
* \addtogroup 0x7010 0x7010 | RxPDO_Control_Slave2
* @{
* \brief Object 0x7010 (RxPDO_Control_Slave2) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Control_Command<br>
* SubIndex 2 - Target_Speed_RPM<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x7010[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex1 - Control_Command */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }}; /* Subindex2 - Target_Speed_RPM */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x7010[] = "RxPDO_Control_Slave2\000"
"Control_Command\000"
"Target_Speed_RPM\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Control_Command; /* Subindex1 - Control_Command */
UINT16 Target_Speed_RPM; /* Subindex2 - Target_Speed_RPM */
} OBJ_STRUCT_PACKED_END
TOBJ7010;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ7010 RxPDO_Control_Slave20x7010
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={2,0x0000,0x0000}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x8000 : Modbus_Config_Slave1
******************************************************************************/
/**
* \addtogroup 0x8000 0x8000 | Modbus_Config_Slave1
* @{
* \brief Object 0x8000 (Modbus_Config_Slave1) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Station_ID<br>
* SubIndex 2 - Baud_Rate<br>
* SubIndex 3 - Save_Parameters<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x8000[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex1 - Station_ID */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READWRITE }, /* Subindex2 - Baud_Rate */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }}; /* Subindex3 - Save_Parameters */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x8000[] = "Modbus_Config_Slave1\000"
"Station_ID\000"
"Baud_Rate\000"
"Save_Parameters\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Station_ID; /* Subindex1 - Station_ID */
UINT32 Baud_Rate; /* Subindex2 - Baud_Rate */
UINT16 Save_Parameters; /* Subindex3 - Save_Parameters */
} OBJ_STRUCT_PACKED_END
TOBJ8000;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ8000 Modbus_Config_Slave10x8000
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={3,0x0001,0x00002580,0x0000}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x8010 : Modbus_Config_Slave2
******************************************************************************/
/**
* \addtogroup 0x8010 0x8010 | Modbus_Config_Slave2
* @{
* \brief Object 0x8010 (Modbus_Config_Slave2) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Station_ID<br>
* SubIndex 2 - Baud_Rate<br>
* SubIndex 3 - Save_Parameters<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x8010[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }, /* Subindex1 - Station_ID */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READWRITE }, /* Subindex2 - Baud_Rate */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READWRITE }}; /* Subindex3 - Save_Parameters */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x8010[] = "Modbus_Config_Slave2\000"
"Station_ID\000"
"Baud_Rate\000"
"Save_Parameters\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Station_ID; /* Subindex1 - Station_ID */
UINT32 Baud_Rate; /* Subindex2 - Baud_Rate */
UINT16 Save_Parameters; /* Subindex3 - Save_Parameters */
} OBJ_STRUCT_PACKED_END
TOBJ8010;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ8010 Modbus_Config_Slave20x8010
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={3,0x0002,0x00002580,0x0000}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0xF000 : Modular Device Profile
******************************************************************************/
/**
* \addtogroup 0xF000 0xF000 | Modular Device Profile
* @{
* \brief Object 0xF000 (Modular Device Profile) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0xF000[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ }};

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0xF000[] = "Modular Device Profile\000\377";
#endif //#ifdef _OBJD_

#ifndef _DIGITAL_IO_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
} OBJ_STRUCT_PACKED_END
TOBJF000;
#endif //#ifndef _DIGITAL_IO_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJF000 ModularDeviceProfile0xF000
#if defined(_DIGITAL_IO_) && (_DIGITAL_IO_ == 1)
={0}
#endif
;
/** @}*/







#ifdef _OBJD_
TOBJECT    OBJMEM ApplicationObjDic[] = {
/* Object 0x1600 */
{NULL , NULL ,  0x1600 , {DEFTYPE_PDOMAPPING , 2 | (OBJCODE_REC << 8)} , asEntryDesc0x1600 , aName0x1600 , &RxPDO_Control_Slave10x1600 , NULL , NULL , 0x0000 },
/* Object 0x1601 */
{NULL , NULL ,  0x1601 , {DEFTYPE_PDOMAPPING , 2 | (OBJCODE_REC << 8)} , asEntryDesc0x1601 , aName0x1601 , &RxPDO_Control_Slave20x1601 , NULL , NULL , 0x0000 },
/* Object 0x1A00 */
{NULL , NULL ,  0x1A00 , {DEFTYPE_PDOMAPPING , 5 | (OBJCODE_REC << 8)} , asEntryDesc0x1A00 , aName0x1A00 , &TxPDO_Status_Slave10x1A00 , NULL , NULL , 0x0000 },
/* Object 0x1A01 */
{NULL , NULL ,  0x1A01 , {DEFTYPE_PDOMAPPING , 5 | (OBJCODE_REC << 8)} , asEntryDesc0x1A01 , aName0x1A01 , &TxPDO_Status_Slave20x1A01 , NULL , NULL , 0x0000 },
/* Object 0x1C12 */
{NULL , NULL ,  0x1C12 , {DEFTYPE_UNSIGNED16 , 2 | (OBJCODE_ARR << 8)} , asEntryDesc0x1C12 , aName0x1C12 , &sRxPDOassign , NULL , NULL , 0x0000 },
/* Object 0x1C13 */
{NULL , NULL ,  0x1C13 , {DEFTYPE_UNSIGNED16 , 2 | (OBJCODE_ARR << 8)} , asEntryDesc0x1C13 , aName0x1C13 , &sTxPDOassign , NULL , NULL , 0x0000 },
/* Object 0x2000 */
{NULL , NULL ,  0x2000 , {DEFTYPE_RECORD , 29 | (OBJCODE_REC << 8)} , asEntryDesc0x2000 , aName0x2000 , &SDO_Config_RW_Slave10x2000 , NULL , NULL , 0x0000 },
/* Object 0x2001 */
{NULL , NULL ,  0x2001 , {DEFTYPE_RECORD , 8 | (OBJCODE_REC << 8)} , asEntryDesc0x2001 , aName0x2001 , &SDO_Status_RO_Slave10x2001 , NULL , NULL , 0x0000 },
/* Object 0x2010 */
{NULL , NULL ,  0x2010 , {DEFTYPE_RECORD , 29 | (OBJCODE_REC << 8)} , asEntryDesc0x2010 , aName0x2010 , &SDO_Config_RW_Slave20x2010 , NULL , NULL , 0x0000 },
/* Object 0x2011 */
{NULL , NULL ,  0x2011 , {DEFTYPE_RECORD , 8 | (OBJCODE_REC << 8)} , asEntryDesc0x2011 , aName0x2011 , &SDO_Status_RO_Slave20x2011 , NULL , NULL , 0x0000 },
/* Object 0x6000 */
{NULL , NULL ,  0x6000 , {DEFTYPE_RECORD , 5 | (OBJCODE_REC << 8)} , asEntryDesc0x6000 , aName0x6000 , &TxPDO_Status_Slave10x6000 , NULL , NULL , 0x0000 },
/* Object 0x6010 */
{NULL , NULL ,  0x6010 , {DEFTYPE_RECORD , 5 | (OBJCODE_REC << 8)} , asEntryDesc0x6010 , aName0x6010 , &TxPDO_Status_Slave20x6010 , NULL , NULL , 0x0000 },
/* Object 0x7000 */
{NULL , NULL ,  0x7000 , {DEFTYPE_RECORD , 2 | (OBJCODE_REC << 8)} , asEntryDesc0x7000 , aName0x7000 , &RxPDO_Control_Slave10x7000 , NULL , NULL , 0x0000 },
/* Object 0x7010 */
{NULL , NULL ,  0x7010 , {DEFTYPE_RECORD , 2 | (OBJCODE_REC << 8)} , asEntryDesc0x7010 , aName0x7010 , &RxPDO_Control_Slave20x7010 , NULL , NULL , 0x0000 },
/* Object 0x8000 */
{NULL , NULL ,  0x8000 , {DEFTYPE_RECORD , 3 | (OBJCODE_REC << 8)} , asEntryDesc0x8000 , aName0x8000 , &Modbus_Config_Slave10x8000 , NULL , NULL , 0x0000 },
/* Object 0x8010 */
{NULL , NULL ,  0x8010 , {DEFTYPE_RECORD , 3 | (OBJCODE_REC << 8)} , asEntryDesc0x8010 , aName0x8010 , &Modbus_Config_Slave20x8010 , NULL , NULL , 0x0000 },
/* Object 0xF000 */
{NULL , NULL ,  0xF000 , {DEFTYPE_RECORD , 0 | (OBJCODE_REC << 8)} , asEntryDesc0xF000 , aName0xF000 , &ModularDeviceProfile0xF000 , NULL , NULL , 0x0000 },
{NULL,NULL, 0xFFFF, {0, 0}, NULL, NULL, NULL, NULL}};
#endif    //#ifdef _OBJD_

#undef PROTO

/** @}*/
#define _DIGITAL_IO_OBJECTS_H_
