// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr  4 17:57:39 2019
// Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ZynqAES_axis_broadcaster_0_0_sim_netlist.v
// Design      : ZynqAES_axis_broadcaster_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ZynqAES_axis_broadcaster_0_0,top_ZynqAES_axis_broadcaster_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "top_ZynqAES_axis_broadcaster_0_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TVALID [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TVALID [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TVALID [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TVALID [0:0] [7:7], xilinx.com:interface:axis:1.0 M08_AXIS TVALID [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TVALID [0:0] [9:9], xilinx.com:interface:axis:1.0 M10_AXIS TVALID [0:0] [10:10], xilinx.com:interface:axis:1.0 M11_AXIS TVALID [0:0] [11:11], xilinx.com:interface:axis:1.0 M12_AXIS TVALID [0:0] [12:12], xilinx.com:interface:axis:1.0 M13_AXIS TVALID [0:0] [13:13], xilinx.com:interface:axis:1.0 M14_AXIS TVALID [0:0] [14:14], xilinx.com:interface:axis:1.0 M15_AXIS TVALID [0:0] [15:15]" *) output [15:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TREADY [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TREADY [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TREADY [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TREADY [0:0] [7:7], xilinx.com:interface:axis:1.0 M08_AXIS TREADY [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TREADY [0:0] [9:9], xilinx.com:interface:axis:1.0 M10_AXIS TREADY [0:0] [10:10], xilinx.com:interface:axis:1.0 M11_AXIS TREADY [0:0] [11:11], xilinx.com:interface:axis:1.0 M12_AXIS TREADY [0:0] [12:12], xilinx.com:interface:axis:1.0 M13_AXIS TREADY [0:0] [13:13], xilinx.com:interface:axis:1.0 M14_AXIS TREADY [0:0] [14:14], xilinx.com:interface:axis:1.0 M15_AXIS TREADY [0:0] [15:15]" *) input [15:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [31:0] [63:32], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [31:0] [95:64], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [31:0] [127:96], xilinx.com:interface:axis:1.0 M04_AXIS TDATA [31:0] [159:128], xilinx.com:interface:axis:1.0 M05_AXIS TDATA [31:0] [191:160], xilinx.com:interface:axis:1.0 M06_AXIS TDATA [31:0] [223:192], xilinx.com:interface:axis:1.0 M07_AXIS TDATA [31:0] [255:224], xilinx.com:interface:axis:1.0 M08_AXIS TDATA [31:0] [287:256], xilinx.com:interface:axis:1.0 M09_AXIS TDATA [31:0] [319:288], xilinx.com:interface:axis:1.0 M10_AXIS TDATA [31:0] [351:320], xilinx.com:interface:axis:1.0 M11_AXIS TDATA [31:0] [383:352], xilinx.com:interface:axis:1.0 M12_AXIS TDATA [31:0] [415:384], xilinx.com:interface:axis:1.0 M13_AXIS TDATA [31:0] [447:416], xilinx.com:interface:axis:1.0 M14_AXIS TDATA [31:0] [479:448], xilinx.com:interface:axis:1.0 M15_AXIS TDATA [31:0] [511:480]" *) output [511:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [3:0] [7:4], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [3:0] [11:8], xilinx.com:interface:axis:1.0 M03_AXIS TKEEP [3:0] [15:12], xilinx.com:interface:axis:1.0 M04_AXIS TKEEP [3:0] [19:16], xilinx.com:interface:axis:1.0 M05_AXIS TKEEP [3:0] [23:20], xilinx.com:interface:axis:1.0 M06_AXIS TKEEP [3:0] [27:24], xilinx.com:interface:axis:1.0 M07_AXIS TKEEP [3:0] [31:28], xilinx.com:interface:axis:1.0 M08_AXIS TKEEP [3:0] [35:32], xilinx.com:interface:axis:1.0 M09_AXIS TKEEP [3:0] [39:36], xilinx.com:interface:axis:1.0 M10_AXIS TKEEP [3:0] [43:40], xilinx.com:interface:axis:1.0 M11_AXIS TKEEP [3:0] [47:44], xilinx.com:interface:axis:1.0 M12_AXIS TKEEP [3:0] [51:48], xilinx.com:interface:axis:1.0 M13_AXIS TKEEP [3:0] [55:52], xilinx.com:interface:axis:1.0 M14_AXIS TKEEP [3:0] [59:56], xilinx.com:interface:axis:1.0 M15_AXIS TKEEP [3:0] [63:60]" *) output [63:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TLAST [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TLAST [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TLAST [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TLAST [0:0] [7:7], xilinx.com:interface:axis:1.0 M08_AXIS TLAST [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TLAST [0:0] [9:9], xilinx.com:interface:axis:1.0 M10_AXIS TLAST [0:0] [10:10], xilinx.com:interface:axis:1.0 M11_AXIS TLAST [0:0] [11:11], xilinx.com:interface:axis:1.0 M12_AXIS TLAST [0:0] [12:12], xilinx.com:interface:axis:1.0 M13_AXIS TLAST [0:0] [13:13], xilinx.com:interface:axis:1.0 M14_AXIS TLAST [0:0] [14:14], xilinx.com:interface:axis:1.0 M15_AXIS TLAST [0:0] [15:15]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M02_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M03_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M04_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M05_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M06_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M07_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M08_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M09_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M10_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M11_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M12_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M13_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M14_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M15_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire [511:0]m_axis_tdata;
  wire [63:0]m_axis_tkeep;
  wire [15:0]m_axis_tlast;
  wire [15:0]m_axis_tready;
  wire [15:0]m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [15:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [15:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [63:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [15:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_AXIS_SIGNAL_SET = "27" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_M_AXIS_TDATA_WIDTH = "32" *) 
  (* C_M_AXIS_TUSER_WIDTH = "1" *) 
  (* C_NUM_MI_SLOTS = "16" *) 
  (* C_S_AXIS_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_TUSER_WIDTH = "1" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* P_TPAYLOAD_WIDTH = "37" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[15:0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[15:0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[63:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[15:0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_broadcaster_v1_1_17_core
   (m_axis_tvalid,
    s_axis_tready,
    aclken,
    aresetn,
    aclk,
    s_axis_tvalid,
    m_axis_tready);
  output [15:0]m_axis_tvalid;
  output s_axis_tready;
  input aclken;
  input aresetn;
  input aclk;
  input s_axis_tvalid;
  input [15:0]m_axis_tready;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [15:0]m_axis_tready;
  wire [15:0]m_axis_tvalid;
  wire [15:0]m_ready_d0;
  wire \m_ready_d[15]_i_1_n_0 ;
  wire \m_ready_d_reg_n_0_[0] ;
  wire \m_ready_d_reg_n_0_[10] ;
  wire \m_ready_d_reg_n_0_[11] ;
  wire \m_ready_d_reg_n_0_[12] ;
  wire \m_ready_d_reg_n_0_[13] ;
  wire \m_ready_d_reg_n_0_[14] ;
  wire \m_ready_d_reg_n_0_[15] ;
  wire \m_ready_d_reg_n_0_[1] ;
  wire \m_ready_d_reg_n_0_[2] ;
  wire \m_ready_d_reg_n_0_[3] ;
  wire \m_ready_d_reg_n_0_[4] ;
  wire \m_ready_d_reg_n_0_[5] ;
  wire \m_ready_d_reg_n_0_[6] ;
  wire \m_ready_d_reg_n_0_[7] ;
  wire \m_ready_d_reg_n_0_[8] ;
  wire \m_ready_d_reg_n_0_[9] ;
  wire s_axis_tready;
  wire s_axis_tready_INST_0_i_1_n_0;
  wire s_axis_tready_INST_0_i_2_n_0;
  wire s_axis_tready_INST_0_i_3_n_0;
  wire s_axis_tready_INST_0_i_4_n_0;
  wire s_axis_tready_INST_0_i_5_n_0;
  wire s_axis_tready_INST_0_i_6_n_0;
  wire s_axis_tready_INST_0_i_7_n_0;
  wire s_axis_tready_INST_0_i_8_n_0;
  wire s_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[0] ),
        .O(m_axis_tvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[10]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[10] ),
        .O(m_axis_tvalid[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[11]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[11] ),
        .O(m_axis_tvalid[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[12]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[12] ),
        .O(m_axis_tvalid[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[13]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[13] ),
        .O(m_axis_tvalid[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[14]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[14] ),
        .O(m_axis_tvalid[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[15]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[15] ),
        .O(m_axis_tvalid[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[1]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[1] ),
        .O(m_axis_tvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[2]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[2] ),
        .O(m_axis_tvalid[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[3]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[3] ),
        .O(m_axis_tvalid[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[4]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[4] ),
        .O(m_axis_tvalid[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[5]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[5] ),
        .O(m_axis_tvalid[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[6]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[6] ),
        .O(m_axis_tvalid[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[7]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[7] ),
        .O(m_axis_tvalid[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[8]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[8] ),
        .O(m_axis_tvalid[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tvalid[9]_INST_0 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[9] ),
        .O(m_axis_tvalid[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[0]_i_1 
       (.I0(m_axis_tready[0]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[0] ),
        .O(m_ready_d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[10]_i_1 
       (.I0(m_axis_tready[10]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[10] ),
        .O(m_ready_d0[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[11]_i_1 
       (.I0(m_axis_tready[11]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[11] ),
        .O(m_ready_d0[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[12]_i_1 
       (.I0(m_axis_tready[12]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[12] ),
        .O(m_ready_d0[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[13]_i_1 
       (.I0(m_axis_tready[13]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[13] ),
        .O(m_ready_d0[13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[14]_i_1 
       (.I0(m_axis_tready[14]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[14] ),
        .O(m_ready_d0[14]));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \m_ready_d[15]_i_1 
       (.I0(s_axis_tready_INST_0_i_1_n_0),
        .I1(s_axis_tready_INST_0_i_2_n_0),
        .I2(s_axis_tready_INST_0_i_3_n_0),
        .I3(s_axis_tready_INST_0_i_4_n_0),
        .I4(aclken),
        .I5(aresetn),
        .O(\m_ready_d[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[15]_i_2 
       (.I0(m_axis_tready[15]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[15] ),
        .O(m_ready_d0[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[1]_i_1 
       (.I0(m_axis_tready[1]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[1] ),
        .O(m_ready_d0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[2]_i_1 
       (.I0(m_axis_tready[2]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[2] ),
        .O(m_ready_d0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[3]_i_1 
       (.I0(m_axis_tready[3]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[3] ),
        .O(m_ready_d0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[4]_i_1 
       (.I0(m_axis_tready[4]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[4] ),
        .O(m_ready_d0[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[5]_i_1 
       (.I0(m_axis_tready[5]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[5] ),
        .O(m_ready_d0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[6]_i_1 
       (.I0(m_axis_tready[6]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[6] ),
        .O(m_ready_d0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[7]_i_1 
       (.I0(m_axis_tready[7]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[7] ),
        .O(m_ready_d0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[8]_i_1 
       (.I0(m_axis_tready[8]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[8] ),
        .O(m_ready_d0[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[9]_i_1 
       (.I0(m_axis_tready[9]),
        .I1(s_axis_tvalid),
        .I2(\m_ready_d_reg_n_0_[9] ),
        .O(m_ready_d0[9]));
  FDRE \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[0]),
        .Q(\m_ready_d_reg_n_0_[0] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[10] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[10]),
        .Q(\m_ready_d_reg_n_0_[10] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[11] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[11]),
        .Q(\m_ready_d_reg_n_0_[11] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[12] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[12]),
        .Q(\m_ready_d_reg_n_0_[12] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[13] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[13]),
        .Q(\m_ready_d_reg_n_0_[13] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[14] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[14]),
        .Q(\m_ready_d_reg_n_0_[14] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[15] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[15]),
        .Q(\m_ready_d_reg_n_0_[15] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[1]),
        .Q(\m_ready_d_reg_n_0_[1] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[2]),
        .Q(\m_ready_d_reg_n_0_[2] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[3] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[3]),
        .Q(\m_ready_d_reg_n_0_[3] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[4] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[4]),
        .Q(\m_ready_d_reg_n_0_[4] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[5] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[5]),
        .Q(\m_ready_d_reg_n_0_[5] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[6] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[6]),
        .Q(\m_ready_d_reg_n_0_[6] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[7] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[7]),
        .Q(\m_ready_d_reg_n_0_[7] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[8] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[8]),
        .Q(\m_ready_d_reg_n_0_[8] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  FDRE \m_ready_d_reg[9] 
       (.C(aclk),
        .CE(aclken),
        .D(m_ready_d0[9]),
        .Q(\m_ready_d_reg_n_0_[9] ),
        .R(\m_ready_d[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    s_axis_tready_INST_0
       (.I0(s_axis_tready_INST_0_i_1_n_0),
        .I1(s_axis_tready_INST_0_i_2_n_0),
        .I2(s_axis_tready_INST_0_i_3_n_0),
        .I3(s_axis_tready_INST_0_i_4_n_0),
        .I4(aresetn),
        .O(s_axis_tready));
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    s_axis_tready_INST_0_i_1
       (.I0(\m_ready_d_reg_n_0_[9] ),
        .I1(m_axis_tready[9]),
        .I2(\m_ready_d_reg_n_0_[8] ),
        .I3(m_axis_tready[8]),
        .I4(s_axis_tready_INST_0_i_5_n_0),
        .O(s_axis_tready_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    s_axis_tready_INST_0_i_2
       (.I0(\m_ready_d_reg_n_0_[13] ),
        .I1(m_axis_tready[13]),
        .I2(\m_ready_d_reg_n_0_[12] ),
        .I3(m_axis_tready[12]),
        .I4(s_axis_tready_INST_0_i_6_n_0),
        .O(s_axis_tready_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    s_axis_tready_INST_0_i_3
       (.I0(\m_ready_d_reg_n_0_[1] ),
        .I1(m_axis_tready[1]),
        .I2(\m_ready_d_reg_n_0_[0] ),
        .I3(m_axis_tready[0]),
        .I4(s_axis_tready_INST_0_i_7_n_0),
        .O(s_axis_tready_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    s_axis_tready_INST_0_i_4
       (.I0(\m_ready_d_reg_n_0_[5] ),
        .I1(m_axis_tready[5]),
        .I2(\m_ready_d_reg_n_0_[4] ),
        .I3(m_axis_tready[4]),
        .I4(s_axis_tready_INST_0_i_8_n_0),
        .O(s_axis_tready_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    s_axis_tready_INST_0_i_5
       (.I0(m_axis_tready[10]),
        .I1(\m_ready_d_reg_n_0_[10] ),
        .I2(m_axis_tready[11]),
        .I3(\m_ready_d_reg_n_0_[11] ),
        .O(s_axis_tready_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    s_axis_tready_INST_0_i_6
       (.I0(m_axis_tready[14]),
        .I1(\m_ready_d_reg_n_0_[14] ),
        .I2(m_axis_tready[15]),
        .I3(\m_ready_d_reg_n_0_[15] ),
        .O(s_axis_tready_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    s_axis_tready_INST_0_i_7
       (.I0(m_axis_tready[2]),
        .I1(\m_ready_d_reg_n_0_[2] ),
        .I2(m_axis_tready[3]),
        .I3(\m_ready_d_reg_n_0_[3] ),
        .O(s_axis_tready_INST_0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    s_axis_tready_INST_0_i_8
       (.I0(m_axis_tready[6]),
        .I1(\m_ready_d_reg_n_0_[6] ),
        .I2(m_axis_tready[7]),
        .I3(\m_ready_d_reg_n_0_[7] ),
        .O(s_axis_tready_INST_0_i_8_n_0));
endmodule

(* C_AXIS_SIGNAL_SET = "27" *) (* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_FAMILY = "zynq" *) (* C_M_AXIS_TDATA_WIDTH = "32" *) (* C_M_AXIS_TUSER_WIDTH = "1" *) 
(* C_NUM_MI_SLOTS = "16" *) (* C_S_AXIS_TDATA_WIDTH = "32" *) (* C_S_AXIS_TUSER_WIDTH = "1" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* P_TPAYLOAD_WIDTH = "37" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output [15:0]m_axis_tvalid;
  input [15:0]m_axis_tready;
  output [511:0]m_axis_tdata;
  output [63:0]m_axis_tstrb;
  output [63:0]m_axis_tkeep;
  output [15:0]m_axis_tlast;
  output [15:0]m_axis_tid;
  output [15:0]m_axis_tdest;
  output [15:0]m_axis_tuser;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [15:0]m_axis_tready;
  wire [15:0]m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdata[511:480] = s_axis_tdata;
  assign m_axis_tdata[479:448] = s_axis_tdata;
  assign m_axis_tdata[447:416] = s_axis_tdata;
  assign m_axis_tdata[415:384] = s_axis_tdata;
  assign m_axis_tdata[383:352] = s_axis_tdata;
  assign m_axis_tdata[351:320] = s_axis_tdata;
  assign m_axis_tdata[319:288] = s_axis_tdata;
  assign m_axis_tdata[287:256] = s_axis_tdata;
  assign m_axis_tdata[255:224] = s_axis_tdata;
  assign m_axis_tdata[223:192] = s_axis_tdata;
  assign m_axis_tdata[191:160] = s_axis_tdata;
  assign m_axis_tdata[159:128] = s_axis_tdata;
  assign m_axis_tdata[127:96] = s_axis_tdata;
  assign m_axis_tdata[95:64] = s_axis_tdata;
  assign m_axis_tdata[63:32] = s_axis_tdata;
  assign m_axis_tdata[31:0] = s_axis_tdata;
  assign m_axis_tdest[15] = \<const0> ;
  assign m_axis_tdest[14] = \<const0> ;
  assign m_axis_tdest[13] = \<const0> ;
  assign m_axis_tdest[12] = \<const0> ;
  assign m_axis_tdest[11] = \<const0> ;
  assign m_axis_tdest[10] = \<const0> ;
  assign m_axis_tdest[9] = \<const0> ;
  assign m_axis_tdest[8] = \<const0> ;
  assign m_axis_tdest[7] = \<const0> ;
  assign m_axis_tdest[6] = \<const0> ;
  assign m_axis_tdest[5] = \<const0> ;
  assign m_axis_tdest[4] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[15] = \<const0> ;
  assign m_axis_tid[14] = \<const0> ;
  assign m_axis_tid[13] = \<const0> ;
  assign m_axis_tid[12] = \<const0> ;
  assign m_axis_tid[11] = \<const0> ;
  assign m_axis_tid[10] = \<const0> ;
  assign m_axis_tid[9] = \<const0> ;
  assign m_axis_tid[8] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[63:60] = s_axis_tkeep;
  assign m_axis_tkeep[59:56] = s_axis_tkeep;
  assign m_axis_tkeep[55:52] = s_axis_tkeep;
  assign m_axis_tkeep[51:48] = s_axis_tkeep;
  assign m_axis_tkeep[47:44] = s_axis_tkeep;
  assign m_axis_tkeep[43:40] = s_axis_tkeep;
  assign m_axis_tkeep[39:36] = s_axis_tkeep;
  assign m_axis_tkeep[35:32] = s_axis_tkeep;
  assign m_axis_tkeep[31:28] = s_axis_tkeep;
  assign m_axis_tkeep[27:24] = s_axis_tkeep;
  assign m_axis_tkeep[23:20] = s_axis_tkeep;
  assign m_axis_tkeep[19:16] = s_axis_tkeep;
  assign m_axis_tkeep[15:12] = s_axis_tkeep;
  assign m_axis_tkeep[11:8] = s_axis_tkeep;
  assign m_axis_tkeep[7:4] = s_axis_tkeep;
  assign m_axis_tkeep[3:0] = s_axis_tkeep;
  assign m_axis_tlast[15] = s_axis_tlast;
  assign m_axis_tlast[14] = s_axis_tlast;
  assign m_axis_tlast[13] = s_axis_tlast;
  assign m_axis_tlast[12] = s_axis_tlast;
  assign m_axis_tlast[11] = s_axis_tlast;
  assign m_axis_tlast[10] = s_axis_tlast;
  assign m_axis_tlast[9] = s_axis_tlast;
  assign m_axis_tlast[8] = s_axis_tlast;
  assign m_axis_tlast[7] = s_axis_tlast;
  assign m_axis_tlast[6] = s_axis_tlast;
  assign m_axis_tlast[5] = s_axis_tlast;
  assign m_axis_tlast[4] = s_axis_tlast;
  assign m_axis_tlast[3] = s_axis_tlast;
  assign m_axis_tlast[2] = s_axis_tlast;
  assign m_axis_tlast[1] = s_axis_tlast;
  assign m_axis_tlast[0] = s_axis_tlast;
  assign m_axis_tstrb[63] = \<const0> ;
  assign m_axis_tstrb[62] = \<const0> ;
  assign m_axis_tstrb[61] = \<const0> ;
  assign m_axis_tstrb[60] = \<const0> ;
  assign m_axis_tstrb[59] = \<const0> ;
  assign m_axis_tstrb[58] = \<const0> ;
  assign m_axis_tstrb[57] = \<const0> ;
  assign m_axis_tstrb[56] = \<const0> ;
  assign m_axis_tstrb[55] = \<const0> ;
  assign m_axis_tstrb[54] = \<const0> ;
  assign m_axis_tstrb[53] = \<const0> ;
  assign m_axis_tstrb[52] = \<const0> ;
  assign m_axis_tstrb[51] = \<const0> ;
  assign m_axis_tstrb[50] = \<const0> ;
  assign m_axis_tstrb[49] = \<const0> ;
  assign m_axis_tstrb[48] = \<const0> ;
  assign m_axis_tstrb[47] = \<const0> ;
  assign m_axis_tstrb[46] = \<const0> ;
  assign m_axis_tstrb[45] = \<const0> ;
  assign m_axis_tstrb[44] = \<const0> ;
  assign m_axis_tstrb[43] = \<const0> ;
  assign m_axis_tstrb[42] = \<const0> ;
  assign m_axis_tstrb[41] = \<const0> ;
  assign m_axis_tstrb[40] = \<const0> ;
  assign m_axis_tstrb[39] = \<const0> ;
  assign m_axis_tstrb[38] = \<const0> ;
  assign m_axis_tstrb[37] = \<const0> ;
  assign m_axis_tstrb[36] = \<const0> ;
  assign m_axis_tstrb[35] = \<const0> ;
  assign m_axis_tstrb[34] = \<const0> ;
  assign m_axis_tstrb[33] = \<const0> ;
  assign m_axis_tstrb[32] = \<const0> ;
  assign m_axis_tstrb[31] = \<const0> ;
  assign m_axis_tstrb[30] = \<const0> ;
  assign m_axis_tstrb[29] = \<const0> ;
  assign m_axis_tstrb[28] = \<const0> ;
  assign m_axis_tstrb[27] = \<const0> ;
  assign m_axis_tstrb[26] = \<const0> ;
  assign m_axis_tstrb[25] = \<const0> ;
  assign m_axis_tstrb[24] = \<const0> ;
  assign m_axis_tstrb[23] = \<const0> ;
  assign m_axis_tstrb[22] = \<const0> ;
  assign m_axis_tstrb[21] = \<const0> ;
  assign m_axis_tstrb[20] = \<const0> ;
  assign m_axis_tstrb[19] = \<const0> ;
  assign m_axis_tstrb[18] = \<const0> ;
  assign m_axis_tstrb[17] = \<const0> ;
  assign m_axis_tstrb[16] = \<const0> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[15] = \<const0> ;
  assign m_axis_tuser[14] = \<const0> ;
  assign m_axis_tuser[13] = \<const0> ;
  assign m_axis_tuser[12] = \<const0> ;
  assign m_axis_tuser[11] = \<const0> ;
  assign m_axis_tuser[10] = \<const0> ;
  assign m_axis_tuser[9] = \<const0> ;
  assign m_axis_tuser[8] = \<const0> ;
  assign m_axis_tuser[7] = \<const0> ;
  assign m_axis_tuser[6] = \<const0> ;
  assign m_axis_tuser[5] = \<const0> ;
  assign m_axis_tuser[4] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_broadcaster_v1_1_17_core broadcaster_core
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
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
