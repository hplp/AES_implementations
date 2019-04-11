// ==============================================================
// File generated on Wed Apr 10 18:00:05 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAES_FULL_H
#define XAES_FULL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaes_full_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Aes_BaseAddress;
} XAes_full_Config;
#endif

typedef struct {
    u32 Aes_BaseAddress;
    u32 IsReady;
} XAes_full;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAes_full_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAes_full_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAes_full_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAes_full_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAes_full_Initialize(XAes_full *InstancePtr, u16 DeviceId);
XAes_full_Config* XAes_full_LookupConfig(u16 DeviceId);
int XAes_full_CfgInitialize(XAes_full *InstancePtr, XAes_full_Config *ConfigPtr);
#else
int XAes_full_Initialize(XAes_full *InstancePtr, const char* InstanceName);
int XAes_full_Release(XAes_full *InstancePtr);
#endif

void XAes_full_Start(XAes_full *InstancePtr);
u32 XAes_full_IsDone(XAes_full *InstancePtr);
u32 XAes_full_IsIdle(XAes_full *InstancePtr);
u32 XAes_full_IsReady(XAes_full *InstancePtr);
void XAes_full_EnableAutoRestart(XAes_full *InstancePtr);
void XAes_full_DisableAutoRestart(XAes_full *InstancePtr);

void XAes_full_Set_cipher_or_i_cipher(XAes_full *InstancePtr, u32 Data);
u32 XAes_full_Get_cipher_or_i_cipher(XAes_full *InstancePtr);
void XAes_full_Set_Nr(XAes_full *InstancePtr, u32 Data);
u32 XAes_full_Get_Nr(XAes_full *InstancePtr);
u32 XAes_full_Get_data_in_BaseAddress(XAes_full *InstancePtr);
u32 XAes_full_Get_data_in_HighAddress(XAes_full *InstancePtr);
u32 XAes_full_Get_data_in_TotalBytes(XAes_full *InstancePtr);
u32 XAes_full_Get_data_in_BitWidth(XAes_full *InstancePtr);
u32 XAes_full_Get_data_in_Depth(XAes_full *InstancePtr);
u32 XAes_full_Write_data_in_Words(XAes_full *InstancePtr, int offset, int *data, int length);
u32 XAes_full_Read_data_in_Words(XAes_full *InstancePtr, int offset, int *data, int length);
u32 XAes_full_Write_data_in_Bytes(XAes_full *InstancePtr, int offset, char *data, int length);
u32 XAes_full_Read_data_in_Bytes(XAes_full *InstancePtr, int offset, char *data, int length);
u32 XAes_full_Get_data_out_BaseAddress(XAes_full *InstancePtr);
u32 XAes_full_Get_data_out_HighAddress(XAes_full *InstancePtr);
u32 XAes_full_Get_data_out_TotalBytes(XAes_full *InstancePtr);
u32 XAes_full_Get_data_out_BitWidth(XAes_full *InstancePtr);
u32 XAes_full_Get_data_out_Depth(XAes_full *InstancePtr);
u32 XAes_full_Write_data_out_Words(XAes_full *InstancePtr, int offset, int *data, int length);
u32 XAes_full_Read_data_out_Words(XAes_full *InstancePtr, int offset, int *data, int length);
u32 XAes_full_Write_data_out_Bytes(XAes_full *InstancePtr, int offset, char *data, int length);
u32 XAes_full_Read_data_out_Bytes(XAes_full *InstancePtr, int offset, char *data, int length);

void XAes_full_InterruptGlobalEnable(XAes_full *InstancePtr);
void XAes_full_InterruptGlobalDisable(XAes_full *InstancePtr);
void XAes_full_InterruptEnable(XAes_full *InstancePtr, u32 Mask);
void XAes_full_InterruptDisable(XAes_full *InstancePtr, u32 Mask);
void XAes_full_InterruptClear(XAes_full *InstancePtr, u32 Mask);
u32 XAes_full_InterruptGetEnabled(XAes_full *InstancePtr);
u32 XAes_full_InterruptGetStatus(XAes_full *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
