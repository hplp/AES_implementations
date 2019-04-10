// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr  5 16:07:00 2019
// Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/PynqZ1AES-AXI-stream128/PynqZ1AES-AXI-stream128.srcs/sources_1/bd/ZynqAES/ip/ZynqAES_axi4_stream_join_0_1/ZynqAES_axi4_stream_join_0_1_sim_netlist.v
// Design      : ZynqAES_axi4_stream_join_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ZynqAES_axi4_stream_join_0_1,axi4_stream_join,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi4_stream_join,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module ZynqAES_axi4_stream_join_0_1
   (in_data00_TDATA,
    in_data00_TVALID,
    in_data00_TREADY,
    in_data01_TDATA,
    in_data01_TVALID,
    in_data01_TREADY,
    in_data02_TDATA,
    in_data02_TVALID,
    in_data02_TREADY,
    in_data03_TDATA,
    in_data03_TVALID,
    in_data03_TREADY,
    in_data04_TDATA,
    in_data04_TVALID,
    in_data04_TREADY,
    in_data05_TDATA,
    in_data05_TVALID,
    in_data05_TREADY,
    in_data06_TDATA,
    in_data06_TVALID,
    in_data06_TREADY,
    in_data07_TDATA,
    in_data07_TVALID,
    in_data07_TREADY,
    in_data08_TDATA,
    in_data08_TVALID,
    in_data08_TREADY,
    in_data09_TDATA,
    in_data09_TVALID,
    in_data09_TREADY,
    in_data10_TDATA,
    in_data10_TVALID,
    in_data10_TREADY,
    in_data11_TDATA,
    in_data11_TVALID,
    in_data11_TREADY,
    in_data12_TDATA,
    in_data12_TVALID,
    in_data12_TREADY,
    in_data13_TDATA,
    in_data13_TVALID,
    in_data13_TREADY,
    in_data14_TDATA,
    in_data14_TVALID,
    in_data14_TREADY,
    in_data15_TDATA,
    in_data15_TVALID,
    in_data15_TREADY,
    out_data_TDATA,
    out_data_TVALID,
    out_data_TREADY);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data00 TDATA" *) input [7:0]in_data00_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data00 TVALID" *) input in_data00_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data00 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data00, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data00_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data01 TDATA" *) input [7:0]in_data01_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data01 TVALID" *) input in_data01_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data01 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data01, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data01_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data02 TDATA" *) input [7:0]in_data02_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data02 TVALID" *) input in_data02_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data02 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data02, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data02_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data03 TDATA" *) input [7:0]in_data03_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data03 TVALID" *) input in_data03_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data03 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data03, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data03_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data04 TDATA" *) input [7:0]in_data04_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data04 TVALID" *) input in_data04_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data04 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data04, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data04_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data05 TDATA" *) input [7:0]in_data05_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data05 TVALID" *) input in_data05_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data05 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data05, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data05_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data06 TDATA" *) input [7:0]in_data06_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data06 TVALID" *) input in_data06_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data06 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data06, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data06_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data07 TDATA" *) input [7:0]in_data07_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data07 TVALID" *) input in_data07_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data07 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data07, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data07_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data08 TDATA" *) input [7:0]in_data08_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data08 TVALID" *) input in_data08_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data08 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data08, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data08_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data09 TDATA" *) input [7:0]in_data09_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data09 TVALID" *) input in_data09_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data09 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data09, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data09_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data10 TDATA" *) input [7:0]in_data10_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data10 TVALID" *) input in_data10_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data10 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data10, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data10_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data11 TDATA" *) input [7:0]in_data11_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data11 TVALID" *) input in_data11_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data11 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data11, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data11_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data12 TDATA" *) input [7:0]in_data12_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data12 TVALID" *) input in_data12_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data12 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data12, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data12_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data13 TDATA" *) input [7:0]in_data13_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data13 TVALID" *) input in_data13_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data13 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data13, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data13_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data14 TDATA" *) input [7:0]in_data14_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data14 TVALID" *) input in_data14_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data14 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data14, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data14_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data15 TDATA" *) input [7:0]in_data15_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data15 TVALID" *) input in_data15_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data15 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data15, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output in_data15_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data TDATA" *) output [127:0]out_data_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data TVALID" *) output out_data_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data_TREADY;

  wire [7:0]in_data00_TDATA;
  wire in_data00_TVALID;
  wire [7:0]in_data01_TDATA;
  wire [7:0]in_data02_TDATA;
  wire [7:0]in_data03_TDATA;
  wire [7:0]in_data04_TDATA;
  wire [7:0]in_data05_TDATA;
  wire [7:0]in_data06_TDATA;
  wire [7:0]in_data07_TDATA;
  wire [7:0]in_data08_TDATA;
  wire [7:0]in_data09_TDATA;
  wire [7:0]in_data10_TDATA;
  wire [7:0]in_data11_TDATA;
  wire [7:0]in_data12_TDATA;
  wire [7:0]in_data13_TDATA;
  wire [7:0]in_data14_TDATA;
  wire [7:0]in_data15_TDATA;
  wire out_data_TREADY;

  assign in_data00_TREADY = out_data_TREADY;
  assign in_data01_TREADY = out_data_TREADY;
  assign in_data02_TREADY = out_data_TREADY;
  assign in_data03_TREADY = out_data_TREADY;
  assign in_data04_TREADY = out_data_TREADY;
  assign in_data05_TREADY = out_data_TREADY;
  assign in_data06_TREADY = out_data_TREADY;
  assign in_data07_TREADY = out_data_TREADY;
  assign in_data08_TREADY = out_data_TREADY;
  assign in_data09_TREADY = out_data_TREADY;
  assign in_data10_TREADY = out_data_TREADY;
  assign in_data11_TREADY = out_data_TREADY;
  assign in_data12_TREADY = out_data_TREADY;
  assign in_data13_TREADY = out_data_TREADY;
  assign in_data14_TREADY = out_data_TREADY;
  assign in_data15_TREADY = out_data_TREADY;
  assign out_data_TDATA[127:120] = in_data00_TDATA;
  assign out_data_TDATA[119:112] = in_data01_TDATA;
  assign out_data_TDATA[111:104] = in_data02_TDATA;
  assign out_data_TDATA[103:96] = in_data03_TDATA;
  assign out_data_TDATA[95:88] = in_data04_TDATA;
  assign out_data_TDATA[87:80] = in_data05_TDATA;
  assign out_data_TDATA[79:72] = in_data06_TDATA;
  assign out_data_TDATA[71:64] = in_data07_TDATA;
  assign out_data_TDATA[63:56] = in_data08_TDATA;
  assign out_data_TDATA[55:48] = in_data09_TDATA;
  assign out_data_TDATA[47:40] = in_data10_TDATA;
  assign out_data_TDATA[39:32] = in_data11_TDATA;
  assign out_data_TDATA[31:24] = in_data12_TDATA;
  assign out_data_TDATA[23:16] = in_data13_TDATA;
  assign out_data_TDATA[15:8] = in_data14_TDATA;
  assign out_data_TDATA[7:0] = in_data15_TDATA;
  assign out_data_TVALID = in_data00_TVALID;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
