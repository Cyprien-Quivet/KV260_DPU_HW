# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XBd_eab1_vsc_0_v_vscaler" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_BD_EAB1_VSC_0_CTRL_BASEADDR" \
        "C_S_AXI_BD_EAB1_VSC_0_CTRL_HIGHADDR"

    xdefine_config_file $drv_handle "xbd_eab1_vsc_0_v_vscaler_g.c" "XBd_eab1_vsc_0_v_vscaler" \
        "DEVICE_ID" \
        "C_S_AXI_BD_EAB1_VSC_0_CTRL_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XBd_eab1_vsc_0_v_vscaler" \
        "DEVICE_ID" \
        "C_S_AXI_BD_EAB1_VSC_0_CTRL_BASEADDR" \
        "C_S_AXI_BD_EAB1_VSC_0_CTRL_HIGHADDR"
}

