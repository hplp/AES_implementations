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


// IP VLNV: xilinx.com:user:axi4_stream_split:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ZynqAES_axi4_stream_split_0_1 (
  in_data_TDATA,
  in_data_TVALID,
  in_data_TREADY,
  out_data00_TDATA,
  out_data00_TVALID,
  out_data00_TREADY,
  out_data01_TDATA,
  out_data01_TVALID,
  out_data01_TREADY,
  out_data02_TDATA,
  out_data02_TVALID,
  out_data02_TREADY,
  out_data03_TDATA,
  out_data03_TVALID,
  out_data03_TREADY,
  out_data04_TDATA,
  out_data04_TVALID,
  out_data04_TREADY,
  out_data05_TDATA,
  out_data05_TVALID,
  out_data05_TREADY,
  out_data06_TDATA,
  out_data06_TVALID,
  out_data06_TREADY,
  out_data07_TDATA,
  out_data07_TVALID,
  out_data07_TREADY,
  out_data08_TDATA,
  out_data08_TVALID,
  out_data08_TREADY,
  out_data09_TDATA,
  out_data09_TVALID,
  out_data09_TREADY,
  out_data10_TDATA,
  out_data10_TVALID,
  out_data10_TREADY,
  out_data11_TDATA,
  out_data11_TVALID,
  out_data11_TREADY,
  out_data12_TDATA,
  out_data12_TVALID,
  out_data12_TREADY,
  out_data13_TDATA,
  out_data13_TVALID,
  out_data13_TREADY,
  out_data14_TDATA,
  out_data14_TVALID,
  out_data14_TREADY,
  out_data15_TDATA,
  out_data15_TVALID,
  out_data15_TREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data TDATA" *)
input wire [127 : 0] in_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data TVALID" *)
input wire in_data_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data TREADY" *)
output wire in_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data00 TDATA" *)
output wire [7 : 0] out_data00_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data00 TVALID" *)
output wire out_data00_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data00, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data00 TREADY" *)
input wire out_data00_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data01 TDATA" *)
output wire [7 : 0] out_data01_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data01 TVALID" *)
output wire out_data01_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data01, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data01 TREADY" *)
input wire out_data01_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data02 TDATA" *)
output wire [7 : 0] out_data02_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data02 TVALID" *)
output wire out_data02_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data02, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data02 TREADY" *)
input wire out_data02_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data03 TDATA" *)
output wire [7 : 0] out_data03_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data03 TVALID" *)
output wire out_data03_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data03, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data03 TREADY" *)
input wire out_data03_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data04 TDATA" *)
output wire [7 : 0] out_data04_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data04 TVALID" *)
output wire out_data04_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data04, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data04 TREADY" *)
input wire out_data04_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data05 TDATA" *)
output wire [7 : 0] out_data05_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data05 TVALID" *)
output wire out_data05_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data05, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data05 TREADY" *)
input wire out_data05_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data06 TDATA" *)
output wire [7 : 0] out_data06_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data06 TVALID" *)
output wire out_data06_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data06, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data06 TREADY" *)
input wire out_data06_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data07 TDATA" *)
output wire [7 : 0] out_data07_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data07 TVALID" *)
output wire out_data07_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data07, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data07 TREADY" *)
input wire out_data07_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data08 TDATA" *)
output wire [7 : 0] out_data08_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data08 TVALID" *)
output wire out_data08_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data08, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data08 TREADY" *)
input wire out_data08_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data09 TDATA" *)
output wire [7 : 0] out_data09_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data09 TVALID" *)
output wire out_data09_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data09, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data09 TREADY" *)
input wire out_data09_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data10 TDATA" *)
output wire [7 : 0] out_data10_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data10 TVALID" *)
output wire out_data10_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data10, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data10 TREADY" *)
input wire out_data10_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data11 TDATA" *)
output wire [7 : 0] out_data11_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data11 TVALID" *)
output wire out_data11_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data11, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data11 TREADY" *)
input wire out_data11_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data12 TDATA" *)
output wire [7 : 0] out_data12_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data12 TVALID" *)
output wire out_data12_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data12, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data12 TREADY" *)
input wire out_data12_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data13 TDATA" *)
output wire [7 : 0] out_data13_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data13 TVALID" *)
output wire out_data13_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data13, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data13 TREADY" *)
input wire out_data13_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data14 TDATA" *)
output wire [7 : 0] out_data14_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data14 TVALID" *)
output wire out_data14_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data14, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data14 TREADY" *)
input wire out_data14_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data15 TDATA" *)
output wire [7 : 0] out_data15_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data15 TVALID" *)
output wire out_data15_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data15, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data15 TREADY" *)
input wire out_data15_TREADY;

  axi4_stream_split inst (
    .in_data_TDATA(in_data_TDATA),
    .in_data_TVALID(in_data_TVALID),
    .in_data_TREADY(in_data_TREADY),
    .out_data00_TDATA(out_data00_TDATA),
    .out_data00_TVALID(out_data00_TVALID),
    .out_data00_TREADY(out_data00_TREADY),
    .out_data01_TDATA(out_data01_TDATA),
    .out_data01_TVALID(out_data01_TVALID),
    .out_data01_TREADY(out_data01_TREADY),
    .out_data02_TDATA(out_data02_TDATA),
    .out_data02_TVALID(out_data02_TVALID),
    .out_data02_TREADY(out_data02_TREADY),
    .out_data03_TDATA(out_data03_TDATA),
    .out_data03_TVALID(out_data03_TVALID),
    .out_data03_TREADY(out_data03_TREADY),
    .out_data04_TDATA(out_data04_TDATA),
    .out_data04_TVALID(out_data04_TVALID),
    .out_data04_TREADY(out_data04_TREADY),
    .out_data05_TDATA(out_data05_TDATA),
    .out_data05_TVALID(out_data05_TVALID),
    .out_data05_TREADY(out_data05_TREADY),
    .out_data06_TDATA(out_data06_TDATA),
    .out_data06_TVALID(out_data06_TVALID),
    .out_data06_TREADY(out_data06_TREADY),
    .out_data07_TDATA(out_data07_TDATA),
    .out_data07_TVALID(out_data07_TVALID),
    .out_data07_TREADY(out_data07_TREADY),
    .out_data08_TDATA(out_data08_TDATA),
    .out_data08_TVALID(out_data08_TVALID),
    .out_data08_TREADY(out_data08_TREADY),
    .out_data09_TDATA(out_data09_TDATA),
    .out_data09_TVALID(out_data09_TVALID),
    .out_data09_TREADY(out_data09_TREADY),
    .out_data10_TDATA(out_data10_TDATA),
    .out_data10_TVALID(out_data10_TVALID),
    .out_data10_TREADY(out_data10_TREADY),
    .out_data11_TDATA(out_data11_TDATA),
    .out_data11_TVALID(out_data11_TVALID),
    .out_data11_TREADY(out_data11_TREADY),
    .out_data12_TDATA(out_data12_TDATA),
    .out_data12_TVALID(out_data12_TVALID),
    .out_data12_TREADY(out_data12_TREADY),
    .out_data13_TDATA(out_data13_TDATA),
    .out_data13_TVALID(out_data13_TVALID),
    .out_data13_TREADY(out_data13_TREADY),
    .out_data14_TDATA(out_data14_TDATA),
    .out_data14_TVALID(out_data14_TVALID),
    .out_data14_TREADY(out_data14_TREADY),
    .out_data15_TDATA(out_data15_TDATA),
    .out_data15_TVALID(out_data15_TVALID),
    .out_data15_TREADY(out_data15_TREADY)
  );
endmodule
