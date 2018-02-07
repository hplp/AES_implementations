############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cipher
set_top AES_Encrypt
add_files source/AESfunctions.cpp
add_files source/AESfunctions.h
add_files source/AEStables.h
add_files -tb source/test_AES.cpp
open_solution "aes_cipher"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
set_clock_uncertainty 0
#source "./cipher/aes_cipher/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
