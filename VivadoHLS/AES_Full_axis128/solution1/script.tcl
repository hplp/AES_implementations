############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Full_axis128
set_top AES_Full_axis128
add_files source/AESfunctions.cpp
add_files source/AESfunctions.h
add_files source/AESkeys.h
add_files source/AEStables.h
add_files -tb source/test_AES_full.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./AES_Full_axis128/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -O -reduce_diskspace -tool xsim
export_design -format ip_catalog