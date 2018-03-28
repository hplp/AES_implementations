############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project aes_full
set_top AES_Full
add_files source/AESfunctions.cpp
add_files source/AESfunctions.h
add_files source/AEStables.h
add_files -tb source/test_AES_full.cpp
open_solution "full"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 2.43 -name default
set_clock_uncertainty 0
#source "./aes_full/full/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog