# ==============================================================
# File generated on Mon Feb 11 19:15:18 -0500 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../source/test_AES.cpp -cflags { -Wno-unknown-pragmas}
add_files source/AEStables.h
add_files source/AESfunctions.h
add_files source/AESfunctions.cpp
set_part xc7z020clg400-1
create_clock -name default -period 8
set_clock_uncertainty 5% default
config_export -description {AES Cipher implemented using HLS}
config_export -display_name=AES_Cipher
config_export -format=ip_catalog
config_export -rtl=verilog
config_export -vendor=hplp
config_export -vivado_phys_opt=none
config_export -vivado_report_level=0
config_export -xo=D:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/AES_Encrypt.xo
config_rtl -auto_prefix=1
config_rtl -enable_maxiConservative=1
config_rtl -encoding=onehot
config_rtl -mult_keep_attribute=0
config_rtl -register_reset_num=3
config_rtl -reset=control
config_rtl -reset_async=0
config_rtl -reset_level=high
config_rtl -verbose=0
config_schedule -effort=medium
config_schedule -enable_dsp_full_reg=1
config_schedule -relax_ii_for_timing=1
config_schedule -verbose=0
config_bind -effort=medium
config_sdx -optimization_level=0
config_sdx -target=xocc
config_compile -name_max_length=256
config_compile -no_signed_zeros=0
config_compile -pipeline_loops=64
config_compile -unsafe_math_optimizations=0
config_interface -clock_enable=0
config_interface -expose_global=0
config_interface -m_axi_addr64=1
config_interface -m_axi_offset=off
config_interface -register_io=off
config_interface -trim_dangling_port=0
