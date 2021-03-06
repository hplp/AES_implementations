############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Full
set_top AES_Full
add_files source/AEStables.h
add_files source/AESkeys.h
add_files source/AESfunctions.h
add_files source/AESfunctions.cpp
add_files -tb source/test_AES_full.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_export -description {AES Full HLS AXI4 Lite} -display_name AES_Full_HLS_AXI4Lite -format ip_catalog -library HLS -rtl verilog -vendor UVA_HPLP -vivado_phys_opt place -vivado_report_level 0
config_sdx -optimization_level none -target none
config_schedule -effort medium -relax_ii_for_timing=0
#source "./AES_Full/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "AES Full HLS AXI4 Lite" -vendor "UVA_HPLP" -library "HLS" -display_name "AES_Full_HLS_AXI4Lite"
