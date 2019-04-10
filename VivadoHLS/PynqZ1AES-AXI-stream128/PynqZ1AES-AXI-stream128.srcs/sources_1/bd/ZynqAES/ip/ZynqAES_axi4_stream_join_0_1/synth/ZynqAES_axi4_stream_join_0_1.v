// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:axi4_stream_join:1.0
// IP Revision: 2

(* X_CORE_INFO = "axi4_stream_join,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "ZynqAES_axi4_stream_join_0_1,axi4_stream_join,{}" *)
(* CORE_GENERATION_INFO = "ZynqAES_axi4_stream_join_0_1,axi4_stream_join,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=axi4_stream_join,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ZynqAES_axi4_stream_join_0_1 (
  in_data00_TDATA,
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
  out_data_TREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data00 TDATA" *)
input wire [7 : 0] in_data00_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data00 TVALID" *)
input wire in_data00_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data00, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data00 TREADY" *)
output wire in_data00_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data01 TDATA" *)
input wire [7 : 0] in_data01_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data01 TVALID" *)
input wire in_data01_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data01, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data01 TREADY" *)
output wire in_data01_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data02 TDATA" *)
input wire [7 : 0] in_data02_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data02 TVALID" *)
input wire in_data02_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data02, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data02 TREADY" *)
output wire in_data02_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data03 TDATA" *)
input wire [7 : 0] in_data03_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data03 TVALID" *)
input wire in_data03_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data03, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data03 TREADY" *)
output wire in_data03_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data04 TDATA" *)
input wire [7 : 0] in_data04_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data04 TVALID" *)
input wire in_data04_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data04, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data04 TREADY" *)
output wire in_data04_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data05 TDATA" *)
input wire [7 : 0] in_data05_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data05 TVALID" *)
input wire in_data05_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data05, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data05 TREADY" *)
output wire in_data05_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data06 TDATA" *)
input wire [7 : 0] in_data06_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data06 TVALID" *)
input wire in_data06_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data06, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data06 TREADY" *)
output wire in_data06_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data07 TDATA" *)
input wire [7 : 0] in_data07_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data07 TVALID" *)
input wire in_data07_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data07, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data07 TREADY" *)
output wire in_data07_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data08 TDATA" *)
input wire [7 : 0] in_data08_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data08 TVALID" *)
input wire in_data08_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data08, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data08 TREADY" *)
output wire in_data08_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data09 TDATA" *)
input wire [7 : 0] in_data09_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data09 TVALID" *)
input wire in_data09_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data09, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data09 TREADY" *)
output wire in_data09_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data10 TDATA" *)
input wire [7 : 0] in_data10_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data10 TVALID" *)
input wire in_data10_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data10, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data10 TREADY" *)
output wire in_data10_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data11 TDATA" *)
input wire [7 : 0] in_data11_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data11 TVALID" *)
input wire in_data11_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data11, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data11 TREADY" *)
output wire in_data11_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data12 TDATA" *)
input wire [7 : 0] in_data12_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data12 TVALID" *)
input wire in_data12_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data12, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data12 TREADY" *)
output wire in_data12_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data13 TDATA" *)
input wire [7 : 0] in_data13_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data13 TVALID" *)
input wire in_data13_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data13, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data13 TREADY" *)
output wire in_data13_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data14 TDATA" *)
input wire [7 : 0] in_data14_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data14 TVALID" *)
input wire in_data14_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data14, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data14 TREADY" *)
output wire in_data14_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data15 TDATA" *)
input wire [7 : 0] in_data15_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data15 TVALID" *)
input wire in_data15_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data15, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_\
VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data15 TREADY" *)
output wire in_data15_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data TDATA" *)
output wire [127 : 0] out_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data TVALID" *)
output wire out_data_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data TREADY" *)
input wire out_data_TREADY;

  axi4_stream_join inst (
    .in_data00_TDATA(in_data00_TDATA),
    .in_data00_TVALID(in_data00_TVALID),
    .in_data00_TREADY(in_data00_TREADY),
    .in_data01_TDATA(in_data01_TDATA),
    .in_data01_TVALID(in_data01_TVALID),
    .in_data01_TREADY(in_data01_TREADY),
    .in_data02_TDATA(in_data02_TDATA),
    .in_data02_TVALID(in_data02_TVALID),
    .in_data02_TREADY(in_data02_TREADY),
    .in_data03_TDATA(in_data03_TDATA),
    .in_data03_TVALID(in_data03_TVALID),
    .in_data03_TREADY(in_data03_TREADY),
    .in_data04_TDATA(in_data04_TDATA),
    .in_data04_TVALID(in_data04_TVALID),
    .in_data04_TREADY(in_data04_TREADY),
    .in_data05_TDATA(in_data05_TDATA),
    .in_data05_TVALID(in_data05_TVALID),
    .in_data05_TREADY(in_data05_TREADY),
    .in_data06_TDATA(in_data06_TDATA),
    .in_data06_TVALID(in_data06_TVALID),
    .in_data06_TREADY(in_data06_TREADY),
    .in_data07_TDATA(in_data07_TDATA),
    .in_data07_TVALID(in_data07_TVALID),
    .in_data07_TREADY(in_data07_TREADY),
    .in_data08_TDATA(in_data08_TDATA),
    .in_data08_TVALID(in_data08_TVALID),
    .in_data08_TREADY(in_data08_TREADY),
    .in_data09_TDATA(in_data09_TDATA),
    .in_data09_TVALID(in_data09_TVALID),
    .in_data09_TREADY(in_data09_TREADY),
    .in_data10_TDATA(in_data10_TDATA),
    .in_data10_TVALID(in_data10_TVALID),
    .in_data10_TREADY(in_data10_TREADY),
    .in_data11_TDATA(in_data11_TDATA),
    .in_data11_TVALID(in_data11_TVALID),
    .in_data11_TREADY(in_data11_TREADY),
    .in_data12_TDATA(in_data12_TDATA),
    .in_data12_TVALID(in_data12_TVALID),
    .in_data12_TREADY(in_data12_TREADY),
    .in_data13_TDATA(in_data13_TDATA),
    .in_data13_TVALID(in_data13_TVALID),
    .in_data13_TREADY(in_data13_TREADY),
    .in_data14_TDATA(in_data14_TDATA),
    .in_data14_TVALID(in_data14_TVALID),
    .in_data14_TREADY(in_data14_TREADY),
    .in_data15_TDATA(in_data15_TDATA),
    .in_data15_TVALID(in_data15_TVALID),
    .in_data15_TREADY(in_data15_TREADY),
    .out_data_TDATA(out_data_TDATA),
    .out_data_TVALID(out_data_TVALID),
    .out_data_TREADY(out_data_TREADY)
  );
endmodule
