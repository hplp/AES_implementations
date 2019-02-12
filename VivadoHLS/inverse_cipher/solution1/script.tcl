############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project inverse_cipher
set_top AES_Decrypt
add_files source/AEStables.h
add_files source/AESfunctions.h
add_files source/AESfunctions.cpp
add_files -tb source/test_AES.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 8 -name default
config_sdx -optimization_level none -target xocc
config_schedule -effort medium -enable_dsp_full_reg
config_export -format ip_catalog -rtl verilog -vivado_phys_opt none -xo D:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/AES_Decrypt.xo
config_compile -name_max_length 256 -pipeline_loops 64
set_clock_uncertainty 5%
#source "./inverse_cipher/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -xo D:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/AES_Decrypt.xo
