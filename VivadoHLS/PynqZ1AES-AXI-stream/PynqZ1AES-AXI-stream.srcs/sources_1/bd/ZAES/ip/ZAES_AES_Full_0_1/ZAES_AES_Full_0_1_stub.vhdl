-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Mar 13 11:43:42 2019
-- Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/PynqZ1AES-AXI-stream/PynqZ1AES-AXI-stream.srcs/sources_1/bd/ZAES/ip/ZAES_AES_Full_0_1/ZAES_AES_Full_0_1_stub.vhdl
-- Design      : ZAES_AES_Full_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZAES_AES_Full_0_1 is
  Port ( 
    s_axi_AES_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AES_AWVALID : in STD_LOGIC;
    s_axi_AES_AWREADY : out STD_LOGIC;
    s_axi_AES_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AES_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AES_WVALID : in STD_LOGIC;
    s_axi_AES_WREADY : out STD_LOGIC;
    s_axi_AES_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AES_BVALID : out STD_LOGIC;
    s_axi_AES_BREADY : in STD_LOGIC;
    s_axi_AES_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AES_ARVALID : in STD_LOGIC;
    s_axi_AES_ARREADY : out STD_LOGIC;
    s_axi_AES_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AES_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AES_RVALID : out STD_LOGIC;
    s_axi_AES_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    data_out_TVALID : out STD_LOGIC;
    data_out_TREADY : in STD_LOGIC;
    data_out_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_in_TVALID : in STD_LOGIC;
    data_in_TREADY : out STD_LOGIC;
    data_in_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end ZAES_AES_Full_0_1;

architecture stub of ZAES_AES_Full_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AES_AWADDR[4:0],s_axi_AES_AWVALID,s_axi_AES_AWREADY,s_axi_AES_WDATA[31:0],s_axi_AES_WSTRB[3:0],s_axi_AES_WVALID,s_axi_AES_WREADY,s_axi_AES_BRESP[1:0],s_axi_AES_BVALID,s_axi_AES_BREADY,s_axi_AES_ARADDR[4:0],s_axi_AES_ARVALID,s_axi_AES_ARREADY,s_axi_AES_RDATA[31:0],s_axi_AES_RRESP[1:0],s_axi_AES_RVALID,s_axi_AES_RREADY,ap_clk,ap_rst_n,interrupt,data_out_TVALID,data_out_TREADY,data_out_TDATA[7:0],data_in_TVALID,data_in_TREADY,data_in_TDATA[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AES_Full,Vivado 2018.3";
begin
end;
