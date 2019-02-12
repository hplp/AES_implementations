############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cipher
set_top AES_Encrypt
add_files source/AESfunctions.cpp
add_files source/AESfunctions.h
add_files source/AEStables.h
add_files -tb source/test_AES.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 8 -name default
config_export -description {AES Cipher implemented using HLS} -display_name AES_Cipher -format ip_catalog -rtl verilog -vendor hplp -vivado_phys_opt none -vivado_report_level 0 -xo D:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/AES_Encrypt.xo
config_rtl -auto_prefix  -encoding onehot -mult_keep_attribute=0 -register_reset_num 3 -reset control -reset_async=0 -reset_level high -verbose=0
config_schedule -effort medium -enable_dsp_full_reg -relax_ii_for_timing -verbose=0
config_bind -effort medium
config_sdx -optimization_level 0 -target xocc
config_compile -name_max_length 256 -no_signed_zeros=0 -pipeline_loops 64 -unsafe_math_optimizations=0
config_interface   -m_axi_addr64 -m_axi_offset off -register_io off -trim_dangling_port=0
set_clock_uncertainty 5%
#source "./cipher/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "AES Cipher implemented using HLS" -vendor "hplp" -display_name "AES_Cipher" -xo D:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/AES_Encrypt.xo
