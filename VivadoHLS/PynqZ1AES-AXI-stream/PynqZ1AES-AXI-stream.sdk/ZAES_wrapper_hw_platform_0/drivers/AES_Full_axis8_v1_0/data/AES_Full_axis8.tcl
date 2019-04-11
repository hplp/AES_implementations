# ==============================================================
# File generated on Wed Apr 10 22:10:48 -0400 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XAes_full_axis8" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_AES_BASEADDR" \
        "C_S_AXI_AES_HIGHADDR"

    xdefine_config_file $drv_handle "xaes_full_axis8_g.c" "XAes_full_axis8" \
        "DEVICE_ID" \
        "C_S_AXI_AES_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XAes_full_axis8" \
        "DEVICE_ID" \
        "C_S_AXI_AES_BASEADDR" \
        "C_S_AXI_AES_HIGHADDR"
}

