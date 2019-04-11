// ==============================================================
// File generated on Wed Apr 10 18:00:05 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaes_full.h"

extern XAes_full_Config XAes_full_ConfigTable[];

XAes_full_Config *XAes_full_LookupConfig(u16 DeviceId) {
	XAes_full_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAES_FULL_NUM_INSTANCES; Index++) {
		if (XAes_full_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAes_full_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAes_full_Initialize(XAes_full *InstancePtr, u16 DeviceId) {
	XAes_full_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAes_full_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAes_full_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

