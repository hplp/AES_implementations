-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  5 16:06:59 2019
-- Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ZynqAES_axi4_stream_join_0_1_stub.vhdl
-- Design      : ZynqAES_axi4_stream_join_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    in_data00_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data00_TVALID : in STD_LOGIC;
    in_data00_TREADY : out STD_LOGIC;
    in_data01_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data01_TVALID : in STD_LOGIC;
    in_data01_TREADY : out STD_LOGIC;
    in_data02_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data02_TVALID : in STD_LOGIC;
    in_data02_TREADY : out STD_LOGIC;
    in_data03_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data03_TVALID : in STD_LOGIC;
    in_data03_TREADY : out STD_LOGIC;
    in_data04_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data04_TVALID : in STD_LOGIC;
    in_data04_TREADY : out STD_LOGIC;
    in_data05_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data05_TVALID : in STD_LOGIC;
    in_data05_TREADY : out STD_LOGIC;
    in_data06_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data06_TVALID : in STD_LOGIC;
    in_data06_TREADY : out STD_LOGIC;
    in_data07_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data07_TVALID : in STD_LOGIC;
    in_data07_TREADY : out STD_LOGIC;
    in_data08_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data08_TVALID : in STD_LOGIC;
    in_data08_TREADY : out STD_LOGIC;
    in_data09_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data09_TVALID : in STD_LOGIC;
    in_data09_TREADY : out STD_LOGIC;
    in_data10_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data10_TVALID : in STD_LOGIC;
    in_data10_TREADY : out STD_LOGIC;
    in_data11_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data11_TVALID : in STD_LOGIC;
    in_data11_TREADY : out STD_LOGIC;
    in_data12_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data12_TVALID : in STD_LOGIC;
    in_data12_TREADY : out STD_LOGIC;
    in_data13_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data13_TVALID : in STD_LOGIC;
    in_data13_TREADY : out STD_LOGIC;
    in_data14_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data14_TVALID : in STD_LOGIC;
    in_data14_TREADY : out STD_LOGIC;
    in_data15_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_data15_TVALID : in STD_LOGIC;
    in_data15_TREADY : out STD_LOGIC;
    out_data_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    out_data_TVALID : out STD_LOGIC;
    out_data_TREADY : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_data00_TDATA[7:0],in_data00_TVALID,in_data00_TREADY,in_data01_TDATA[7:0],in_data01_TVALID,in_data01_TREADY,in_data02_TDATA[7:0],in_data02_TVALID,in_data02_TREADY,in_data03_TDATA[7:0],in_data03_TVALID,in_data03_TREADY,in_data04_TDATA[7:0],in_data04_TVALID,in_data04_TREADY,in_data05_TDATA[7:0],in_data05_TVALID,in_data05_TREADY,in_data06_TDATA[7:0],in_data06_TVALID,in_data06_TREADY,in_data07_TDATA[7:0],in_data07_TVALID,in_data07_TREADY,in_data08_TDATA[7:0],in_data08_TVALID,in_data08_TREADY,in_data09_TDATA[7:0],in_data09_TVALID,in_data09_TREADY,in_data10_TDATA[7:0],in_data10_TVALID,in_data10_TREADY,in_data11_TDATA[7:0],in_data11_TVALID,in_data11_TREADY,in_data12_TDATA[7:0],in_data12_TVALID,in_data12_TREADY,in_data13_TDATA[7:0],in_data13_TVALID,in_data13_TREADY,in_data14_TDATA[7:0],in_data14_TVALID,in_data14_TREADY,in_data15_TDATA[7:0],in_data15_TVALID,in_data15_TREADY,out_data_TDATA[127:0],out_data_TVALID,out_data_TREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi4_stream_join,Vivado 2018.3";
begin
end;
