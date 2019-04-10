-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Apr  4 17:57:39 2019
-- Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ZynqAES_axis_broadcaster_0_0_sim_netlist.vhdl
-- Design      : ZynqAES_axis_broadcaster_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_broadcaster_v1_1_17_core is
  port (
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tready : out STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_broadcaster_v1_1_17_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_broadcaster_v1_1_17_core is
  signal m_ready_d0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \m_ready_d[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[10]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[11]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[12]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[13]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[14]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[15]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[2]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[3]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[4]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[5]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[6]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[7]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[8]\ : STD_LOGIC;
  signal \m_ready_d_reg_n_0_[9]\ : STD_LOGIC;
  signal s_axis_tready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_3_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_5_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_6_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_7_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_8_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tvalid[0]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tvalid[10]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tvalid[11]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tvalid[12]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tvalid[13]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tvalid[14]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tvalid[15]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tvalid[1]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tvalid[2]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tvalid[3]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tvalid[4]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tvalid[5]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tvalid[6]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tvalid[7]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tvalid[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tvalid[9]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_ready_d[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_ready_d[10]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_ready_d[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_ready_d[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_ready_d[13]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_ready_d[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_ready_d[15]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_ready_d[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_ready_d[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_ready_d[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_ready_d[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_ready_d[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_ready_d[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_ready_d[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_ready_d[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_ready_d[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0_i_7 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0_i_8 : label is "soft_lutpair1";
begin
\m_axis_tvalid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[0]\,
      O => m_axis_tvalid(0)
    );
\m_axis_tvalid[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[10]\,
      O => m_axis_tvalid(10)
    );
\m_axis_tvalid[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[11]\,
      O => m_axis_tvalid(11)
    );
\m_axis_tvalid[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[12]\,
      O => m_axis_tvalid(12)
    );
\m_axis_tvalid[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[13]\,
      O => m_axis_tvalid(13)
    );
\m_axis_tvalid[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[14]\,
      O => m_axis_tvalid(14)
    );
\m_axis_tvalid[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[15]\,
      O => m_axis_tvalid(15)
    );
\m_axis_tvalid[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[1]\,
      O => m_axis_tvalid(1)
    );
\m_axis_tvalid[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[2]\,
      O => m_axis_tvalid(2)
    );
\m_axis_tvalid[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[3]\,
      O => m_axis_tvalid(3)
    );
\m_axis_tvalid[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[4]\,
      O => m_axis_tvalid(4)
    );
\m_axis_tvalid[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[5]\,
      O => m_axis_tvalid(5)
    );
\m_axis_tvalid[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[6]\,
      O => m_axis_tvalid(6)
    );
\m_axis_tvalid[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[7]\,
      O => m_axis_tvalid(7)
    );
\m_axis_tvalid[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[8]\,
      O => m_axis_tvalid(8)
    );
\m_axis_tvalid[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[9]\,
      O => m_axis_tvalid(9)
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(0),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[0]\,
      O => m_ready_d0(0)
    );
\m_ready_d[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(10),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[10]\,
      O => m_ready_d0(10)
    );
\m_ready_d[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(11),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[11]\,
      O => m_ready_d0(11)
    );
\m_ready_d[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(12),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[12]\,
      O => m_ready_d0(12)
    );
\m_ready_d[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(13),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[13]\,
      O => m_ready_d0(13)
    );
\m_ready_d[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(14),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[14]\,
      O => m_ready_d0(14)
    );
\m_ready_d[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_1_n_0,
      I1 => s_axis_tready_INST_0_i_2_n_0,
      I2 => s_axis_tready_INST_0_i_3_n_0,
      I3 => s_axis_tready_INST_0_i_4_n_0,
      I4 => aclken,
      I5 => aresetn,
      O => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(15),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[15]\,
      O => m_ready_d0(15)
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(1),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[1]\,
      O => m_ready_d0(1)
    );
\m_ready_d[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(2),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[2]\,
      O => m_ready_d0(2)
    );
\m_ready_d[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(3),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[3]\,
      O => m_ready_d0(3)
    );
\m_ready_d[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(4),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[4]\,
      O => m_ready_d0(4)
    );
\m_ready_d[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(5),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[5]\,
      O => m_ready_d0(5)
    );
\m_ready_d[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(6),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[6]\,
      O => m_ready_d0(6)
    );
\m_ready_d[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(7),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[7]\,
      O => m_ready_d0(7)
    );
\m_ready_d[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(8),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[8]\,
      O => m_ready_d0(8)
    );
\m_ready_d[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready(9),
      I1 => s_axis_tvalid,
      I2 => \m_ready_d_reg_n_0_[9]\,
      O => m_ready_d0(9)
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(0),
      Q => \m_ready_d_reg_n_0_[0]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(10),
      Q => \m_ready_d_reg_n_0_[10]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(11),
      Q => \m_ready_d_reg_n_0_[11]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(12),
      Q => \m_ready_d_reg_n_0_[12]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(13),
      Q => \m_ready_d_reg_n_0_[13]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(14),
      Q => \m_ready_d_reg_n_0_[14]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(15),
      Q => \m_ready_d_reg_n_0_[15]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(1),
      Q => \m_ready_d_reg_n_0_[1]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(2),
      Q => \m_ready_d_reg_n_0_[2]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(3),
      Q => \m_ready_d_reg_n_0_[3]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(4),
      Q => \m_ready_d_reg_n_0_[4]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(5),
      Q => \m_ready_d_reg_n_0_[5]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(6),
      Q => \m_ready_d_reg_n_0_[6]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(7),
      Q => \m_ready_d_reg_n_0_[7]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(8),
      Q => \m_ready_d_reg_n_0_[8]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
\m_ready_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => m_ready_d0(9),
      Q => \m_ready_d_reg_n_0_[9]\,
      R => \m_ready_d[15]_i_1_n_0\
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_1_n_0,
      I1 => s_axis_tready_INST_0_i_2_n_0,
      I2 => s_axis_tready_INST_0_i_3_n_0,
      I3 => s_axis_tready_INST_0_i_4_n_0,
      I4 => aresetn,
      O => s_axis_tready
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF111F"
    )
        port map (
      I0 => \m_ready_d_reg_n_0_[9]\,
      I1 => m_axis_tready(9),
      I2 => \m_ready_d_reg_n_0_[8]\,
      I3 => m_axis_tready(8),
      I4 => s_axis_tready_INST_0_i_5_n_0,
      O => s_axis_tready_INST_0_i_1_n_0
    );
s_axis_tready_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF111F"
    )
        port map (
      I0 => \m_ready_d_reg_n_0_[13]\,
      I1 => m_axis_tready(13),
      I2 => \m_ready_d_reg_n_0_[12]\,
      I3 => m_axis_tready(12),
      I4 => s_axis_tready_INST_0_i_6_n_0,
      O => s_axis_tready_INST_0_i_2_n_0
    );
s_axis_tready_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF111F"
    )
        port map (
      I0 => \m_ready_d_reg_n_0_[1]\,
      I1 => m_axis_tready(1),
      I2 => \m_ready_d_reg_n_0_[0]\,
      I3 => m_axis_tready(0),
      I4 => s_axis_tready_INST_0_i_7_n_0,
      O => s_axis_tready_INST_0_i_3_n_0
    );
s_axis_tready_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF111F"
    )
        port map (
      I0 => \m_ready_d_reg_n_0_[5]\,
      I1 => m_axis_tready(5),
      I2 => \m_ready_d_reg_n_0_[4]\,
      I3 => m_axis_tready(4),
      I4 => s_axis_tready_INST_0_i_8_n_0,
      O => s_axis_tready_INST_0_i_4_n_0
    );
s_axis_tready_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => m_axis_tready(10),
      I1 => \m_ready_d_reg_n_0_[10]\,
      I2 => m_axis_tready(11),
      I3 => \m_ready_d_reg_n_0_[11]\,
      O => s_axis_tready_INST_0_i_5_n_0
    );
s_axis_tready_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => m_axis_tready(14),
      I1 => \m_ready_d_reg_n_0_[14]\,
      I2 => m_axis_tready(15),
      I3 => \m_ready_d_reg_n_0_[15]\,
      O => s_axis_tready_INST_0_i_6_n_0
    );
s_axis_tready_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => m_axis_tready(2),
      I1 => \m_ready_d_reg_n_0_[2]\,
      I2 => m_axis_tready(3),
      I3 => \m_ready_d_reg_n_0_[3]\,
      O => s_axis_tready_INST_0_i_7_n_0
    );
s_axis_tready_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => m_axis_tready(6),
      I1 => \m_ready_d_reg_n_0_[6]\,
      I2 => m_axis_tready(7),
      I3 => \m_ready_d_reg_n_0_[7]\,
      O => s_axis_tready_INST_0_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 27;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is "zynq";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 32;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 1;
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 16;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 32;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 1;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 : entity is 37;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axis_tkeep\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axis_tlast\ : STD_LOGIC;
begin
  \^s_axis_tdata\(31 downto 0) <= s_axis_tdata(31 downto 0);
  \^s_axis_tkeep\(3 downto 0) <= s_axis_tkeep(3 downto 0);
  \^s_axis_tlast\ <= s_axis_tlast;
  m_axis_tdata(511 downto 480) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(479 downto 448) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(447 downto 416) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(415 downto 384) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(383 downto 352) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(351 downto 320) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(319 downto 288) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(287 downto 256) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(255 downto 224) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(223 downto 192) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(191 downto 160) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(159 downto 128) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(127 downto 96) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(95 downto 64) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(63 downto 32) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdata(31 downto 0) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tdest(15) <= \<const0>\;
  m_axis_tdest(14) <= \<const0>\;
  m_axis_tdest(13) <= \<const0>\;
  m_axis_tdest(12) <= \<const0>\;
  m_axis_tdest(11) <= \<const0>\;
  m_axis_tdest(10) <= \<const0>\;
  m_axis_tdest(9) <= \<const0>\;
  m_axis_tdest(8) <= \<const0>\;
  m_axis_tdest(7) <= \<const0>\;
  m_axis_tdest(6) <= \<const0>\;
  m_axis_tdest(5) <= \<const0>\;
  m_axis_tdest(4) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(15) <= \<const0>\;
  m_axis_tid(14) <= \<const0>\;
  m_axis_tid(13) <= \<const0>\;
  m_axis_tid(12) <= \<const0>\;
  m_axis_tid(11) <= \<const0>\;
  m_axis_tid(10) <= \<const0>\;
  m_axis_tid(9) <= \<const0>\;
  m_axis_tid(8) <= \<const0>\;
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(63 downto 60) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(59 downto 56) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(55 downto 52) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(51 downto 48) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(47 downto 44) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(43 downto 40) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(39 downto 36) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(35 downto 32) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(31 downto 28) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(27 downto 24) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(23 downto 20) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(19 downto 16) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(15 downto 12) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(11 downto 8) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(7 downto 4) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tkeep(3 downto 0) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tlast(15) <= \^s_axis_tlast\;
  m_axis_tlast(14) <= \^s_axis_tlast\;
  m_axis_tlast(13) <= \^s_axis_tlast\;
  m_axis_tlast(12) <= \^s_axis_tlast\;
  m_axis_tlast(11) <= \^s_axis_tlast\;
  m_axis_tlast(10) <= \^s_axis_tlast\;
  m_axis_tlast(9) <= \^s_axis_tlast\;
  m_axis_tlast(8) <= \^s_axis_tlast\;
  m_axis_tlast(7) <= \^s_axis_tlast\;
  m_axis_tlast(6) <= \^s_axis_tlast\;
  m_axis_tlast(5) <= \^s_axis_tlast\;
  m_axis_tlast(4) <= \^s_axis_tlast\;
  m_axis_tlast(3) <= \^s_axis_tlast\;
  m_axis_tlast(2) <= \^s_axis_tlast\;
  m_axis_tlast(1) <= \^s_axis_tlast\;
  m_axis_tlast(0) <= \^s_axis_tlast\;
  m_axis_tstrb(63) <= \<const0>\;
  m_axis_tstrb(62) <= \<const0>\;
  m_axis_tstrb(61) <= \<const0>\;
  m_axis_tstrb(60) <= \<const0>\;
  m_axis_tstrb(59) <= \<const0>\;
  m_axis_tstrb(58) <= \<const0>\;
  m_axis_tstrb(57) <= \<const0>\;
  m_axis_tstrb(56) <= \<const0>\;
  m_axis_tstrb(55) <= \<const0>\;
  m_axis_tstrb(54) <= \<const0>\;
  m_axis_tstrb(53) <= \<const0>\;
  m_axis_tstrb(52) <= \<const0>\;
  m_axis_tstrb(51) <= \<const0>\;
  m_axis_tstrb(50) <= \<const0>\;
  m_axis_tstrb(49) <= \<const0>\;
  m_axis_tstrb(48) <= \<const0>\;
  m_axis_tstrb(47) <= \<const0>\;
  m_axis_tstrb(46) <= \<const0>\;
  m_axis_tstrb(45) <= \<const0>\;
  m_axis_tstrb(44) <= \<const0>\;
  m_axis_tstrb(43) <= \<const0>\;
  m_axis_tstrb(42) <= \<const0>\;
  m_axis_tstrb(41) <= \<const0>\;
  m_axis_tstrb(40) <= \<const0>\;
  m_axis_tstrb(39) <= \<const0>\;
  m_axis_tstrb(38) <= \<const0>\;
  m_axis_tstrb(37) <= \<const0>\;
  m_axis_tstrb(36) <= \<const0>\;
  m_axis_tstrb(35) <= \<const0>\;
  m_axis_tstrb(34) <= \<const0>\;
  m_axis_tstrb(33) <= \<const0>\;
  m_axis_tstrb(32) <= \<const0>\;
  m_axis_tstrb(31) <= \<const0>\;
  m_axis_tstrb(30) <= \<const0>\;
  m_axis_tstrb(29) <= \<const0>\;
  m_axis_tstrb(28) <= \<const0>\;
  m_axis_tstrb(27) <= \<const0>\;
  m_axis_tstrb(26) <= \<const0>\;
  m_axis_tstrb(25) <= \<const0>\;
  m_axis_tstrb(24) <= \<const0>\;
  m_axis_tstrb(23) <= \<const0>\;
  m_axis_tstrb(22) <= \<const0>\;
  m_axis_tstrb(21) <= \<const0>\;
  m_axis_tstrb(20) <= \<const0>\;
  m_axis_tstrb(19) <= \<const0>\;
  m_axis_tstrb(18) <= \<const0>\;
  m_axis_tstrb(17) <= \<const0>\;
  m_axis_tstrb(16) <= \<const0>\;
  m_axis_tstrb(15) <= \<const0>\;
  m_axis_tstrb(14) <= \<const0>\;
  m_axis_tstrb(13) <= \<const0>\;
  m_axis_tstrb(12) <= \<const0>\;
  m_axis_tstrb(11) <= \<const0>\;
  m_axis_tstrb(10) <= \<const0>\;
  m_axis_tstrb(9) <= \<const0>\;
  m_axis_tstrb(8) <= \<const0>\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(15) <= \<const0>\;
  m_axis_tuser(14) <= \<const0>\;
  m_axis_tuser(13) <= \<const0>\;
  m_axis_tuser(12) <= \<const0>\;
  m_axis_tuser(11) <= \<const0>\;
  m_axis_tuser(10) <= \<const0>\;
  m_axis_tuser(9) <= \<const0>\;
  m_axis_tuser(8) <= \<const0>\;
  m_axis_tuser(7) <= \<const0>\;
  m_axis_tuser(6) <= \<const0>\;
  m_axis_tuser(5) <= \<const0>\;
  m_axis_tuser(4) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
broadcaster_core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_broadcaster_v1_1_17_core
     port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      m_axis_tready(15 downto 0) => m_axis_tready(15 downto 0),
      m_axis_tvalid(15 downto 0) => m_axis_tvalid(15 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ZynqAES_axis_broadcaster_0_0,top_ZynqAES_axis_broadcaster_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_ZynqAES_axis_broadcaster_0_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 27;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of inst : label is 16;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 37;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [31:0] [63:32], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [31:0] [95:64], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [31:0] [127:96], xilinx.com:interface:axis:1.0 M04_AXIS TDATA [31:0] [159:128], xilinx.com:interface:axis:1.0 M05_AXIS TDATA [31:0] [191:160], xilinx.com:interface:axis:1.0 M06_AXIS TDATA [31:0] [223:192], xilinx.com:interface:axis:1.0 M07_AXIS TDATA [31:0] [255:224], xilinx.com:interface:axis:1.0 M08_AXIS TDATA [31:0] [287:256], xilinx.com:interface:axis:1.0 M09_AXIS TDATA [31:0] [319:288], xilinx.com:interface:axis:1.0 M10_AXIS TDATA [31:0] [351:320], xilinx.com:interface:axis:1.0 M11_AXIS TDATA [31:0] [383:352], xilinx.com:interface:axis:1.0 M12_AXIS TDATA [31:0] [415:384], xilinx.com:interface:axis:1.0 M13_AXIS TDATA [31:0] [447:416], xilinx.com:interface:axis:1.0 M14_AXIS TDATA [31:0] [479:448], xilinx.com:interface:axis:1.0 M15_AXIS TDATA [31:0] [511:480]";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [3:0] [7:4], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [3:0] [11:8], xilinx.com:interface:axis:1.0 M03_AXIS TKEEP [3:0] [15:12], xilinx.com:interface:axis:1.0 M04_AXIS TKEEP [3:0] [19:16], xilinx.com:interface:axis:1.0 M05_AXIS TKEEP [3:0] [23:20], xilinx.com:interface:axis:1.0 M06_AXIS TKEEP [3:0] [27:24], xilinx.com:interface:axis:1.0 M07_AXIS TKEEP [3:0] [31:28], xilinx.com:interface:axis:1.0 M08_AXIS TKEEP [3:0] [35:32], xilinx.com:interface:axis:1.0 M09_AXIS TKEEP [3:0] [39:36], xilinx.com:interface:axis:1.0 M10_AXIS TKEEP [3:0] [43:40], xilinx.com:interface:axis:1.0 M11_AXIS TKEEP [3:0] [47:44], xilinx.com:interface:axis:1.0 M12_AXIS TKEEP [3:0] [51:48], xilinx.com:interface:axis:1.0 M13_AXIS TKEEP [3:0] [55:52], xilinx.com:interface:axis:1.0 M14_AXIS TKEEP [3:0] [59:56], xilinx.com:interface:axis:1.0 M15_AXIS TKEEP [3:0] [63:60]";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TLAST [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TLAST [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TLAST [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TLAST [0:0] [7:7], xilinx.com:interface:axis:1.0 M08_AXIS TLAST [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TLAST [0:0] [9:9], xilinx.com:interface:axis:1.0 M10_AXIS TLAST [0:0] [10:10], xilinx.com:interface:axis:1.0 M11_AXIS TLAST [0:0] [11:11], xilinx.com:interface:axis:1.0 M12_AXIS TLAST [0:0] [12:12], xilinx.com:interface:axis:1.0 M13_AXIS TLAST [0:0] [13:13], xilinx.com:interface:axis:1.0 M14_AXIS TLAST [0:0] [14:14], xilinx.com:interface:axis:1.0 M15_AXIS TLAST [0:0] [15:15]";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M02_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M03_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M04_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M05_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M06_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M07_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M08_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M09_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M10_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M11_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M12_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M13_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M14_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M15_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZynqAES_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TREADY [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TREADY [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TREADY [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TREADY [0:0] [7:7], xilinx.com:interface:axis:1.0 M08_AXIS TREADY [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TREADY [0:0] [9:9], xilinx.com:interface:axis:1.0 M10_AXIS TREADY [0:0] [10:10], xilinx.com:interface:axis:1.0 M11_AXIS TREADY [0:0] [11:11], xilinx.com:interface:axis:1.0 M12_AXIS TREADY [0:0] [12:12], xilinx.com:interface:axis:1.0 M13_AXIS TREADY [0:0] [13:13], xilinx.com:interface:axis:1.0 M14_AXIS TREADY [0:0] [14:14], xilinx.com:interface:axis:1.0 M15_AXIS TREADY [0:0] [15:15]";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TVALID [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TVALID [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TVALID [0:0] [6:6], xilinx.com:interface:axis:1.0 M07_AXIS TVALID [0:0] [7:7], xilinx.com:interface:axis:1.0 M08_AXIS TVALID [0:0] [8:8], xilinx.com:interface:axis:1.0 M09_AXIS TVALID [0:0] [9:9], xilinx.com:interface:axis:1.0 M10_AXIS TVALID [0:0] [10:10], xilinx.com:interface:axis:1.0 M11_AXIS TVALID [0:0] [11:11], xilinx.com:interface:axis:1.0 M12_AXIS TVALID [0:0] [12:12], xilinx.com:interface:axis:1.0 M13_AXIS TVALID [0:0] [13:13], xilinx.com:interface:axis:1.0 M14_AXIS TVALID [0:0] [14:14], xilinx.com:interface:axis:1.0 M15_AXIS TVALID [0:0] [15:15]";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ZynqAES_axis_broadcaster_0_0
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => aresetn,
      m_axis_tdata(511 downto 0) => m_axis_tdata(511 downto 0),
      m_axis_tdest(15 downto 0) => NLW_inst_m_axis_tdest_UNCONNECTED(15 downto 0),
      m_axis_tid(15 downto 0) => NLW_inst_m_axis_tid_UNCONNECTED(15 downto 0),
      m_axis_tkeep(63 downto 0) => m_axis_tkeep(63 downto 0),
      m_axis_tlast(15 downto 0) => m_axis_tlast(15 downto 0),
      m_axis_tready(15 downto 0) => m_axis_tready(15 downto 0),
      m_axis_tstrb(63 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(63 downto 0),
      m_axis_tuser(15 downto 0) => NLW_inst_m_axis_tuser_UNCONNECTED(15 downto 0),
      m_axis_tvalid(15 downto 0) => m_axis_tvalid(15 downto 0),
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(3 downto 0) => B"1111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
