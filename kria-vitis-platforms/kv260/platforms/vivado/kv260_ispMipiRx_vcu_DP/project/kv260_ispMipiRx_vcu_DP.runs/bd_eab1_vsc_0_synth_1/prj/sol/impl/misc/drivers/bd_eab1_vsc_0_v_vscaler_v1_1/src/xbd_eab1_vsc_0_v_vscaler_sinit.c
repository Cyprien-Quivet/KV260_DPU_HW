// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xbd_eab1_vsc_0_v_vscaler.h"

extern XBd_eab1_vsc_0_v_vscaler_Config XBd_eab1_vsc_0_v_vscaler_ConfigTable[];

XBd_eab1_vsc_0_v_vscaler_Config *XBd_eab1_vsc_0_v_vscaler_LookupConfig(u16 DeviceId) {
	XBd_eab1_vsc_0_v_vscaler_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBD_EAB1_VSC_0_V_VSCALER_NUM_INSTANCES; Index++) {
		if (XBd_eab1_vsc_0_v_vscaler_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBd_eab1_vsc_0_v_vscaler_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBd_eab1_vsc_0_v_vscaler_Initialize(XBd_eab1_vsc_0_v_vscaler *InstancePtr, u16 DeviceId) {
	XBd_eab1_vsc_0_v_vscaler_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBd_eab1_vsc_0_v_vscaler_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBd_eab1_vsc_0_v_vscaler_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

