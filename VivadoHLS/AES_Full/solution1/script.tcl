############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Full
set_top AES_Full
add_files source/AESfunctions.cpp
add_files source/AESfunctions.h
add_files source/AESkeys.h
add_files source/AEStables.h
add_files -tb source/test_AES_full.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -description {AES Full HLS AXI4 Lite} -display_name AES_Full_HLS -format ip_catalog -library HLS -rtl verilog -vendor UVA_HPLP
#source "./AES_Full/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "AES Full AXI4 Lite" -vendor "UVA_HPLP" -library "HLS" -display_name "AES_Full_AXI4Lite"
