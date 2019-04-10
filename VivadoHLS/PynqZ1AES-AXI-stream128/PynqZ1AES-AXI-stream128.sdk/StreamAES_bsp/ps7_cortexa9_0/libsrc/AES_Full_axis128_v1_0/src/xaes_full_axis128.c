// ==============================================================
// File generated on Mon Apr 08 11:15:30 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaes_full_axis128.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAes_full_axis128_CfgInitialize(XAes_full_axis128 *InstancePtr, XAes_full_axis128_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Aes_BaseAddress = ConfigPtr->Aes_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAes_full_axis128_Start(XAes_full_axis128 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_AP_CTRL) & 0x80;
    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAes_full_axis128_IsDone(XAes_full_axis128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAes_full_axis128_IsIdle(XAes_full_axis128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAes_full_axis128_IsReady(XAes_full_axis128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAes_full_axis128_EnableAutoRestart(XAes_full_axis128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_AP_CTRL, 0x80);
}

void XAes_full_axis128_DisableAutoRestart(XAes_full_axis128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_AP_CTRL, 0);
}

void XAes_full_axis128_Set_cipher_or_i_cipher(XAes_full_axis128 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_CIPHER_OR_I_CIPHER_DATA, Data);
}

u32 XAes_full_axis128_Get_cipher_or_i_cipher(XAes_full_axis128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_CIPHER_OR_I_CIPHER_DATA);
    return Data;
}

void XAes_full_axis128_Set_Nr(XAes_full_axis128 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_NR_DATA, Data);
}

u32 XAes_full_axis128_Get_Nr(XAes_full_axis128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_NR_DATA);
    return Data;
}

void XAes_full_axis128_InterruptGlobalEnable(XAes_full_axis128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_GIE, 1);
}

void XAes_full_axis128_InterruptGlobalDisable(XAes_full_axis128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_GIE, 0);
}

void XAes_full_axis128_InterruptEnable(XAes_full_axis128 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_IER);
    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_IER, Register | Mask);
}

void XAes_full_axis128_InterruptDisable(XAes_full_axis128 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_IER);
    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_IER, Register & (~Mask));
}

void XAes_full_axis128_InterruptClear(XAes_full_axis128 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_full_axis128_WriteReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_ISR, Mask);
}

u32 XAes_full_axis128_InterruptGetEnabled(XAes_full_axis128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_IER);
}

u32 XAes_full_axis128_InterruptGetStatus(XAes_full_axis128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes_full_axis128_ReadReg(InstancePtr->Aes_BaseAddress, XAES_FULL_AXIS128_AES_ADDR_ISR);
}

