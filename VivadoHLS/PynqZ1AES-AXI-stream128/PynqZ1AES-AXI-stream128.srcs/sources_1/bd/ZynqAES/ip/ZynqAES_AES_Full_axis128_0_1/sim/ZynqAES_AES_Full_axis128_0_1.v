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


// IP VLNV: hplp:hls:AES_Full_axis128:1.0
// IP Revision: 1904081144

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ZynqAES_AES_Full_axis128_0_1 (
  s_axi_AES_AWADDR,
  s_axi_AES_AWVALID,
  s_axi_AES_AWREADY,
  s_axi_AES_WDATA,
  s_axi_AES_WSTRB,
  s_axi_AES_WVALID,
  s_axi_AES_WREADY,
  s_axi_AES_BRESP,
  s_axi_AES_BVALID,
  s_axi_AES_BREADY,
  s_axi_AES_ARADDR,
  s_axi_AES_ARVALID,
  s_axi_AES_ARREADY,
  s_axi_AES_RDATA,
  s_axi_AES_RRESP,
  s_axi_AES_RVALID,
  s_axi_AES_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  aes_in_data0_TVALID,
  aes_in_data0_TREADY,
  aes_in_data0_TDATA,
  aes_in_data1_TVALID,
  aes_in_data1_TREADY,
  aes_in_data1_TDATA,
  aes_in_data2_TVALID,
  aes_in_data2_TREADY,
  aes_in_data2_TDATA,
  aes_in_data3_TVALID,
  aes_in_data3_TREADY,
  aes_in_data3_TDATA,
  aes_in_data4_TVALID,
  aes_in_data4_TREADY,
  aes_in_data4_TDATA,
  aes_in_data5_TVALID,
  aes_in_data5_TREADY,
  aes_in_data5_TDATA,
  aes_in_data6_TVALID,
  aes_in_data6_TREADY,
  aes_in_data6_TDATA,
  aes_in_data7_TVALID,
  aes_in_data7_TREADY,
  aes_in_data7_TDATA,
  aes_in_data8_TVALID,
  aes_in_data8_TREADY,
  aes_in_data8_TDATA,
  aes_in_data9_TVALID,
  aes_in_data9_TREADY,
  aes_in_data9_TDATA,
  aes_in_data10_TVALID,
  aes_in_data10_TREADY,
  aes_in_data10_TDATA,
  aes_in_data11_TVALID,
  aes_in_data11_TREADY,
  aes_in_data11_TDATA,
  aes_in_data12_TVALID,
  aes_in_data12_TREADY,
  aes_in_data12_TDATA,
  aes_in_data13_TVALID,
  aes_in_data13_TREADY,
  aes_in_data13_TDATA,
  aes_in_data14_TVALID,
  aes_in_data14_TREADY,
  aes_in_data14_TDATA,
  aes_in_data15_TVALID,
  aes_in_data15_TREADY,
  aes_in_data15_TDATA,
  aes_out_data0_TVALID,
  aes_out_data0_TREADY,
  aes_out_data0_TDATA,
  aes_out_data1_TVALID,
  aes_out_data1_TREADY,
  aes_out_data1_TDATA,
  aes_out_data2_TVALID,
  aes_out_data2_TREADY,
  aes_out_data2_TDATA,
  aes_out_data3_TVALID,
  aes_out_data3_TREADY,
  aes_out_data3_TDATA,
  aes_out_data4_TVALID,
  aes_out_data4_TREADY,
  aes_out_data4_TDATA,
  aes_out_data5_TVALID,
  aes_out_data5_TREADY,
  aes_out_data5_TDATA,
  aes_out_data6_TVALID,
  aes_out_data6_TREADY,
  aes_out_data6_TDATA,
  aes_out_data7_TVALID,
  aes_out_data7_TREADY,
  aes_out_data7_TDATA,
  aes_out_data8_TVALID,
  aes_out_data8_TREADY,
  aes_out_data8_TDATA,
  aes_out_data9_TVALID,
  aes_out_data9_TREADY,
  aes_out_data9_TDATA,
  aes_out_data10_TVALID,
  aes_out_data10_TREADY,
  aes_out_data10_TDATA,
  aes_out_data11_TVALID,
  aes_out_data11_TREADY,
  aes_out_data11_TDATA,
  aes_out_data12_TVALID,
  aes_out_data12_TREADY,
  aes_out_data12_TDATA,
  aes_out_data13_TVALID,
  aes_out_data13_TREADY,
  aes_out_data13_TDATA,
  aes_out_data14_TVALID,
  aes_out_data14_TREADY,
  aes_out_data14_TDATA,
  aes_out_data15_TVALID,
  aes_out_data15_TREADY,
  aes_out_data15_TDATA
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES AWADDR" *)
input wire [4 : 0] s_axi_AES_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES AWVALID" *)
input wire s_axi_AES_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES AWREADY" *)
output wire s_axi_AES_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES WDATA" *)
input wire [31 : 0] s_axi_AES_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES WSTRB" *)
input wire [3 : 0] s_axi_AES_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES WVALID" *)
input wire s_axi_AES_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES WREADY" *)
output wire s_axi_AES_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES BRESP" *)
output wire [1 : 0] s_axi_AES_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES BVALID" *)
output wire s_axi_AES_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES BREADY" *)
input wire s_axi_AES_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES ARADDR" *)
input wire [4 : 0] s_axi_AES_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES ARVALID" *)
input wire s_axi_AES_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES ARREADY" *)
output wire s_axi_AES_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES RDATA" *)
output wire [31 : 0] s_axi_AES_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES RRESP" *)
output wire [1 : 0] s_axi_AES_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES RVALID" *)
output wire s_axi_AES_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AES, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, ID_W\
IDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES RREADY" *)
input wire s_axi_AES_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AES:aes_in_data0:aes_in_data1:aes_in_data2:aes_in_data3:aes_in_data4:aes_in_data5:aes_in_data6:aes_in_data7:aes_in_data8:aes_in_data9:aes_in_data10:aes_in_data11:aes_in_data12:aes_in_data13:aes_in_data14:aes_in_data15:aes_out_data0:aes_out_data1:aes_out_data2:aes_out_data3:aes_out_data4:aes_out_data5:aes_out_data6:aes_out_data7:aes_out_data8:aes_out_data9:aes_out_data10:aes_out_data11:aes_out_data12:aes_out_data13:aes_out_data14:aes_out_data15, AS\
SOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data0 TVALID" *)
input wire aes_in_data0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data0 TREADY" *)
output wire aes_in_data0_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data0, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data0 TDATA" *)
input wire [7 : 0] aes_in_data0_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data1 TVALID" *)
input wire aes_in_data1_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data1 TREADY" *)
output wire aes_in_data1_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data1, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data1 TDATA" *)
input wire [7 : 0] aes_in_data1_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data2 TVALID" *)
input wire aes_in_data2_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data2 TREADY" *)
output wire aes_in_data2_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data2, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data2 TDATA" *)
input wire [7 : 0] aes_in_data2_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data3 TVALID" *)
input wire aes_in_data3_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data3 TREADY" *)
output wire aes_in_data3_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data3, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data3 TDATA" *)
input wire [7 : 0] aes_in_data3_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data4 TVALID" *)
input wire aes_in_data4_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data4 TREADY" *)
output wire aes_in_data4_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data4, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data4 TDATA" *)
input wire [7 : 0] aes_in_data4_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data5 TVALID" *)
input wire aes_in_data5_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data5 TREADY" *)
output wire aes_in_data5_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data5, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data5 TDATA" *)
input wire [7 : 0] aes_in_data5_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data6 TVALID" *)
input wire aes_in_data6_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data6 TREADY" *)
output wire aes_in_data6_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data6, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data6 TDATA" *)
input wire [7 : 0] aes_in_data6_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data7 TVALID" *)
input wire aes_in_data7_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data7 TREADY" *)
output wire aes_in_data7_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data7, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data7 TDATA" *)
input wire [7 : 0] aes_in_data7_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data8 TVALID" *)
input wire aes_in_data8_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data8 TREADY" *)
output wire aes_in_data8_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data8, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data8 TDATA" *)
input wire [7 : 0] aes_in_data8_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data9 TVALID" *)
input wire aes_in_data9_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data9 TREADY" *)
output wire aes_in_data9_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data9, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data9 TDATA" *)
input wire [7 : 0] aes_in_data9_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data10 TVALID" *)
input wire aes_in_data10_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data10 TREADY" *)
output wire aes_in_data10_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data10, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data10 TDATA" *)
input wire [7 : 0] aes_in_data10_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data11 TVALID" *)
input wire aes_in_data11_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data11 TREADY" *)
output wire aes_in_data11_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data11, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data11 TDATA" *)
input wire [7 : 0] aes_in_data11_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data12 TVALID" *)
input wire aes_in_data12_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data12 TREADY" *)
output wire aes_in_data12_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data12, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data12 TDATA" *)
input wire [7 : 0] aes_in_data12_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data13 TVALID" *)
input wire aes_in_data13_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data13 TREADY" *)
output wire aes_in_data13_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data13, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data13 TDATA" *)
input wire [7 : 0] aes_in_data13_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data14 TVALID" *)
input wire aes_in_data14_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data14 TREADY" *)
output wire aes_in_data14_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data14, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data14 TDATA" *)
input wire [7 : 0] aes_in_data14_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data15 TVALID" *)
input wire aes_in_data15_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data15 TREADY" *)
output wire aes_in_data15_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_in_data15, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_in_data15 TDATA" *)
input wire [7 : 0] aes_in_data15_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data0 TVALID" *)
output wire aes_out_data0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data0 TREADY" *)
input wire aes_out_data0_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data0, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data0 TDATA" *)
output wire [7 : 0] aes_out_data0_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data1 TVALID" *)
output wire aes_out_data1_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data1 TREADY" *)
input wire aes_out_data1_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data1, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data1 TDATA" *)
output wire [7 : 0] aes_out_data1_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data2 TVALID" *)
output wire aes_out_data2_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data2 TREADY" *)
input wire aes_out_data2_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data2, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data2 TDATA" *)
output wire [7 : 0] aes_out_data2_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data3 TVALID" *)
output wire aes_out_data3_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data3 TREADY" *)
input wire aes_out_data3_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data3, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data3 TDATA" *)
output wire [7 : 0] aes_out_data3_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data4 TVALID" *)
output wire aes_out_data4_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data4 TREADY" *)
input wire aes_out_data4_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data4, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data4 TDATA" *)
output wire [7 : 0] aes_out_data4_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data5 TVALID" *)
output wire aes_out_data5_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data5 TREADY" *)
input wire aes_out_data5_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data5, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data5 TDATA" *)
output wire [7 : 0] aes_out_data5_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data6 TVALID" *)
output wire aes_out_data6_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data6 TREADY" *)
input wire aes_out_data6_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data6, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data6 TDATA" *)
output wire [7 : 0] aes_out_data6_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data7 TVALID" *)
output wire aes_out_data7_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data7 TREADY" *)
input wire aes_out_data7_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data7, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data7 TDATA" *)
output wire [7 : 0] aes_out_data7_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data8 TVALID" *)
output wire aes_out_data8_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data8 TREADY" *)
input wire aes_out_data8_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data8, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data8 TDATA" *)
output wire [7 : 0] aes_out_data8_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data9 TVALID" *)
output wire aes_out_data9_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data9 TREADY" *)
input wire aes_out_data9_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data9, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen\
cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK\
_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data9 TDATA" *)
output wire [7 : 0] aes_out_data9_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data10 TVALID" *)
output wire aes_out_data10_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data10 TREADY" *)
input wire aes_out_data10_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data10, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depende\
ncy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CL\
K_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data10 TDATA" *)
output wire [7 : 0] aes_out_data10_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data11 TVALID" *)
output wire aes_out_data11_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data11 TREADY" *)
input wire aes_out_data11_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data11, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depende\
ncy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CL\
K_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data11 TDATA" *)
output wire [7 : 0] aes_out_data11_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data12 TVALID" *)
output wire aes_out_data12_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data12 TREADY" *)
input wire aes_out_data12_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data12, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depende\
ncy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CL\
K_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data12 TDATA" *)
output wire [7 : 0] aes_out_data12_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data13 TVALID" *)
output wire aes_out_data13_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data13 TREADY" *)
input wire aes_out_data13_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data13, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depende\
ncy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CL\
K_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data13 TDATA" *)
output wire [7 : 0] aes_out_data13_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data14 TVALID" *)
output wire aes_out_data14_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data14 TREADY" *)
input wire aes_out_data14_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data14, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depende\
ncy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CL\
K_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data14 TDATA" *)
output wire [7 : 0] aes_out_data14_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data15 TVALID" *)
output wire aes_out_data15_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data15 TREADY" *)
input wire aes_out_data15_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aes_out_data15, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depende\
ncy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CL\
K_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aes_out_data15 TDATA" *)
output wire [7 : 0] aes_out_data15_TDATA;

  AES_Full_axis128 #(
    .C_S_AXI_AES_ADDR_WIDTH(5),
    .C_S_AXI_AES_DATA_WIDTH(32)
  ) inst (
    .s_axi_AES_AWADDR(s_axi_AES_AWADDR),
    .s_axi_AES_AWVALID(s_axi_AES_AWVALID),
    .s_axi_AES_AWREADY(s_axi_AES_AWREADY),
    .s_axi_AES_WDATA(s_axi_AES_WDATA),
    .s_axi_AES_WSTRB(s_axi_AES_WSTRB),
    .s_axi_AES_WVALID(s_axi_AES_WVALID),
    .s_axi_AES_WREADY(s_axi_AES_WREADY),
    .s_axi_AES_BRESP(s_axi_AES_BRESP),
    .s_axi_AES_BVALID(s_axi_AES_BVALID),
    .s_axi_AES_BREADY(s_axi_AES_BREADY),
    .s_axi_AES_ARADDR(s_axi_AES_ARADDR),
    .s_axi_AES_ARVALID(s_axi_AES_ARVALID),
    .s_axi_AES_ARREADY(s_axi_AES_ARREADY),
    .s_axi_AES_RDATA(s_axi_AES_RDATA),
    .s_axi_AES_RRESP(s_axi_AES_RRESP),
    .s_axi_AES_RVALID(s_axi_AES_RVALID),
    .s_axi_AES_RREADY(s_axi_AES_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .aes_in_data0_TVALID(aes_in_data0_TVALID),
    .aes_in_data0_TREADY(aes_in_data0_TREADY),
    .aes_in_data0_TDATA(aes_in_data0_TDATA),
    .aes_in_data1_TVALID(aes_in_data1_TVALID),
    .aes_in_data1_TREADY(aes_in_data1_TREADY),
    .aes_in_data1_TDATA(aes_in_data1_TDATA),
    .aes_in_data2_TVALID(aes_in_data2_TVALID),
    .aes_in_data2_TREADY(aes_in_data2_TREADY),
    .aes_in_data2_TDATA(aes_in_data2_TDATA),
    .aes_in_data3_TVALID(aes_in_data3_TVALID),
    .aes_in_data3_TREADY(aes_in_data3_TREADY),
    .aes_in_data3_TDATA(aes_in_data3_TDATA),
    .aes_in_data4_TVALID(aes_in_data4_TVALID),
    .aes_in_data4_TREADY(aes_in_data4_TREADY),
    .aes_in_data4_TDATA(aes_in_data4_TDATA),
    .aes_in_data5_TVALID(aes_in_data5_TVALID),
    .aes_in_data5_TREADY(aes_in_data5_TREADY),
    .aes_in_data5_TDATA(aes_in_data5_TDATA),
    .aes_in_data6_TVALID(aes_in_data6_TVALID),
    .aes_in_data6_TREADY(aes_in_data6_TREADY),
    .aes_in_data6_TDATA(aes_in_data6_TDATA),
    .aes_in_data7_TVALID(aes_in_data7_TVALID),
    .aes_in_data7_TREADY(aes_in_data7_TREADY),
    .aes_in_data7_TDATA(aes_in_data7_TDATA),
    .aes_in_data8_TVALID(aes_in_data8_TVALID),
    .aes_in_data8_TREADY(aes_in_data8_TREADY),
    .aes_in_data8_TDATA(aes_in_data8_TDATA),
    .aes_in_data9_TVALID(aes_in_data9_TVALID),
    .aes_in_data9_TREADY(aes_in_data9_TREADY),
    .aes_in_data9_TDATA(aes_in_data9_TDATA),
    .aes_in_data10_TVALID(aes_in_data10_TVALID),
    .aes_in_data10_TREADY(aes_in_data10_TREADY),
    .aes_in_data10_TDATA(aes_in_data10_TDATA),
    .aes_in_data11_TVALID(aes_in_data11_TVALID),
    .aes_in_data11_TREADY(aes_in_data11_TREADY),
    .aes_in_data11_TDATA(aes_in_data11_TDATA),
    .aes_in_data12_TVALID(aes_in_data12_TVALID),
    .aes_in_data12_TREADY(aes_in_data12_TREADY),
    .aes_in_data12_TDATA(aes_in_data12_TDATA),
    .aes_in_data13_TVALID(aes_in_data13_TVALID),
    .aes_in_data13_TREADY(aes_in_data13_TREADY),
    .aes_in_data13_TDATA(aes_in_data13_TDATA),
    .aes_in_data14_TVALID(aes_in_data14_TVALID),
    .aes_in_data14_TREADY(aes_in_data14_TREADY),
    .aes_in_data14_TDATA(aes_in_data14_TDATA),
    .aes_in_data15_TVALID(aes_in_data15_TVALID),
    .aes_in_data15_TREADY(aes_in_data15_TREADY),
    .aes_in_data15_TDATA(aes_in_data15_TDATA),
    .aes_out_data0_TVALID(aes_out_data0_TVALID),
    .aes_out_data0_TREADY(aes_out_data0_TREADY),
    .aes_out_data0_TDATA(aes_out_data0_TDATA),
    .aes_out_data1_TVALID(aes_out_data1_TVALID),
    .aes_out_data1_TREADY(aes_out_data1_TREADY),
    .aes_out_data1_TDATA(aes_out_data1_TDATA),
    .aes_out_data2_TVALID(aes_out_data2_TVALID),
    .aes_out_data2_TREADY(aes_out_data2_TREADY),
    .aes_out_data2_TDATA(aes_out_data2_TDATA),
    .aes_out_data3_TVALID(aes_out_data3_TVALID),
    .aes_out_data3_TREADY(aes_out_data3_TREADY),
    .aes_out_data3_TDATA(aes_out_data3_TDATA),
    .aes_out_data4_TVALID(aes_out_data4_TVALID),
    .aes_out_data4_TREADY(aes_out_data4_TREADY),
    .aes_out_data4_TDATA(aes_out_data4_TDATA),
    .aes_out_data5_TVALID(aes_out_data5_TVALID),
    .aes_out_data5_TREADY(aes_out_data5_TREADY),
    .aes_out_data5_TDATA(aes_out_data5_TDATA),
    .aes_out_data6_TVALID(aes_out_data6_TVALID),
    .aes_out_data6_TREADY(aes_out_data6_TREADY),
    .aes_out_data6_TDATA(aes_out_data6_TDATA),
    .aes_out_data7_TVALID(aes_out_data7_TVALID),
    .aes_out_data7_TREADY(aes_out_data7_TREADY),
    .aes_out_data7_TDATA(aes_out_data7_TDATA),
    .aes_out_data8_TVALID(aes_out_data8_TVALID),
    .aes_out_data8_TREADY(aes_out_data8_TREADY),
    .aes_out_data8_TDATA(aes_out_data8_TDATA),
    .aes_out_data9_TVALID(aes_out_data9_TVALID),
    .aes_out_data9_TREADY(aes_out_data9_TREADY),
    .aes_out_data9_TDATA(aes_out_data9_TDATA),
    .aes_out_data10_TVALID(aes_out_data10_TVALID),
    .aes_out_data10_TREADY(aes_out_data10_TREADY),
    .aes_out_data10_TDATA(aes_out_data10_TDATA),
    .aes_out_data11_TVALID(aes_out_data11_TVALID),
    .aes_out_data11_TREADY(aes_out_data11_TREADY),
    .aes_out_data11_TDATA(aes_out_data11_TDATA),
    .aes_out_data12_TVALID(aes_out_data12_TVALID),
    .aes_out_data12_TREADY(aes_out_data12_TREADY),
    .aes_out_data12_TDATA(aes_out_data12_TDATA),
    .aes_out_data13_TVALID(aes_out_data13_TVALID),
    .aes_out_data13_TREADY(aes_out_data13_TREADY),
    .aes_out_data13_TDATA(aes_out_data13_TDATA),
    .aes_out_data14_TVALID(aes_out_data14_TVALID),
    .aes_out_data14_TREADY(aes_out_data14_TREADY),
    .aes_out_data14_TDATA(aes_out_data14_TDATA),
    .aes_out_data15_TVALID(aes_out_data15_TVALID),
    .aes_out_data15_TREADY(aes_out_data15_TREADY),
    .aes_out_data15_TDATA(aes_out_data15_TDATA)
  );
endmodule
