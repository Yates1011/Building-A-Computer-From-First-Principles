-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Sun Jul 28 22:01:38 2024
-- Host        : yates-MS-7C02 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/yates/Documents/GitHub/Building-A-Computer-From-First-Principles/Hardware/Hardware/Hardware.sim/sim_1/synth/func/xsim/ALU_tb_func_synth.vhd
-- Design      : ALU
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU is
  port (
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    y : in STD_LOGIC_VECTOR ( 15 downto 0 );
    zx : in STD_LOGIC;
    nx : in STD_LOGIC;
    zy : in STD_LOGIC;
    ny : in STD_LOGIC;
    f : in STD_LOGIC;
    no : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    zr : out STD_LOGIC;
    ng : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ALU : entity is true;
end ALU;

architecture STRUCTURE of ALU is
  signal LED_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \LED_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_OBUF[11]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_OBUF[11]_inst_i_4_n_2\ : STD_LOGIC;
  signal \LED_OBUF[11]_inst_i_4_n_3\ : STD_LOGIC;
  signal \LED_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \LED_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \LED_OBUF[11]_inst_i_8_n_0\ : STD_LOGIC;
  signal \LED_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LED_OBUF[15]_inst_i_3_n_1\ : STD_LOGIC;
  signal \LED_OBUF[15]_inst_i_3_n_2\ : STD_LOGIC;
  signal \LED_OBUF[15]_inst_i_3_n_3\ : STD_LOGIC;
  signal \LED_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \LED_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \LED_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_OBUF[3]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_OBUF[3]_inst_i_4_n_2\ : STD_LOGIC;
  signal \LED_OBUF[3]_inst_i_4_n_3\ : STD_LOGIC;
  signal \LED_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \LED_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \LED_OBUF[3]_inst_i_8_n_0\ : STD_LOGIC;
  signal \LED_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_OBUF[7]_inst_i_4_n_1\ : STD_LOGIC;
  signal \LED_OBUF[7]_inst_i_4_n_2\ : STD_LOGIC;
  signal \LED_OBUF[7]_inst_i_4_n_3\ : STD_LOGIC;
  signal \LED_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \LED_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \LED_OBUF[7]_inst_i_8_n_0\ : STD_LOGIC;
  signal SW_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal f_IBUF : STD_LOGIC;
  signal no_IBUF : STD_LOGIC;
  signal nx_IBUF : STD_LOGIC;
  signal ny_IBUF : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal x2 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal y2 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal y_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zx_IBUF : STD_LOGIC;
  signal zy_IBUF : STD_LOGIC;
  signal \NLW_LED_OBUF[15]_inst_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LED_OBUF[10]_inst_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \LED_OBUF[11]_inst_i_2\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \LED_OBUF[11]_inst_i_4\ : label is 35;
  attribute SOFT_HLUTNM of \LED_OBUF[12]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \LED_OBUF[13]_inst_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \LED_OBUF[14]_inst_i_2\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \LED_OBUF[15]_inst_i_3\ : label is 35;
  attribute SOFT_HLUTNM of \LED_OBUF[1]_inst_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \LED_OBUF[2]_inst_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \LED_OBUF[3]_inst_i_2\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD of \LED_OBUF[3]_inst_i_4\ : label is 35;
  attribute SOFT_HLUTNM of \LED_OBUF[4]_inst_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LED_OBUF[5]_inst_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LED_OBUF[6]_inst_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LED_OBUF[7]_inst_i_2\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \LED_OBUF[7]_inst_i_4\ : label is 35;
  attribute SOFT_HLUTNM of \LED_OBUF[8]_inst_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \LED_OBUF[9]_inst_i_2\ : label is "soft_lutpair2";
begin
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(0),
      I2 => x2(0),
      I3 => f_IBUF,
      I4 => plusOp(0),
      O => LED_OBUF(0)
    );
\LED_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(0),
      O => y2(0)
    );
\LED_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(0),
      O => x2(0)
    );
\LED_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(10),
      O => LED(10)
    );
\LED_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(10),
      I2 => x2(10),
      I3 => f_IBUF,
      I4 => plusOp(10),
      O => LED_OBUF(10)
    );
\LED_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(10),
      O => y2(10)
    );
\LED_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(10),
      O => x2(10)
    );
\LED_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(11),
      O => LED(11)
    );
\LED_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(11),
      I2 => x2(11),
      I3 => f_IBUF,
      I4 => plusOp(11),
      O => LED_OBUF(11)
    );
\LED_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(11),
      O => y2(11)
    );
\LED_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(11),
      O => x2(11)
    );
\LED_OBUF[11]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \LED_OBUF[7]_inst_i_4_n_0\,
      CO(3) => \LED_OBUF[11]_inst_i_4_n_0\,
      CO(2) => \LED_OBUF[11]_inst_i_4_n_1\,
      CO(1) => \LED_OBUF[11]_inst_i_4_n_2\,
      CO(0) => \LED_OBUF[11]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x2(11 downto 8),
      O(3 downto 0) => plusOp(11 downto 8),
      S(3) => \LED_OBUF[11]_inst_i_5_n_0\,
      S(2) => \LED_OBUF[11]_inst_i_6_n_0\,
      S(1) => \LED_OBUF[11]_inst_i_7_n_0\,
      S(0) => \LED_OBUF[11]_inst_i_8_n_0\
    );
\LED_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(11),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(11),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[11]_inst_i_5_n_0\
    );
\LED_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(10),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(10),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[11]_inst_i_6_n_0\
    );
\LED_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(9),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(9),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[11]_inst_i_7_n_0\
    );
\LED_OBUF[11]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(8),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(8),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[11]_inst_i_8_n_0\
    );
\LED_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(12),
      O => LED(12)
    );
\LED_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(12),
      I2 => x2(12),
      I3 => f_IBUF,
      I4 => plusOp(12),
      O => LED_OBUF(12)
    );
\LED_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(12),
      O => y2(12)
    );
\LED_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(12),
      O => x2(12)
    );
\LED_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(13),
      O => LED(13)
    );
\LED_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(13),
      I2 => x2(13),
      I3 => f_IBUF,
      I4 => plusOp(13),
      O => LED_OBUF(13)
    );
\LED_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(13),
      O => y2(13)
    );
\LED_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(13),
      O => x2(13)
    );
\LED_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(14),
      O => LED(14)
    );
\LED_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(14),
      I2 => x2(14),
      I3 => f_IBUF,
      I4 => plusOp(14),
      O => LED_OBUF(14)
    );
\LED_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(14),
      O => y2(14)
    );
\LED_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(14),
      O => x2(14)
    );
\LED_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(15),
      O => LED(15)
    );
\LED_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => no_IBUF,
      I1 => \LED_OBUF[15]_inst_i_2_n_0\,
      I2 => f_IBUF,
      I3 => plusOp(15),
      O => LED_OBUF(15)
    );
\LED_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D200D20000D200"
    )
        port map (
      I0 => SW_IBUF(15),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(15),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[15]_inst_i_2_n_0\
    );
\LED_OBUF[15]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \LED_OBUF[11]_inst_i_4_n_0\,
      CO(3) => \NLW_LED_OBUF[15]_inst_i_3_CO_UNCONNECTED\(3),
      CO(2) => \LED_OBUF[15]_inst_i_3_n_1\,
      CO(1) => \LED_OBUF[15]_inst_i_3_n_2\,
      CO(0) => \LED_OBUF[15]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => x2(14 downto 12),
      O(3 downto 0) => plusOp(15 downto 12),
      S(3) => \LED_OBUF[15]_inst_i_4_n_0\,
      S(2) => \LED_OBUF[15]_inst_i_5_n_0\,
      S(1) => \LED_OBUF[15]_inst_i_6_n_0\,
      S(0) => \LED_OBUF[15]_inst_i_7_n_0\
    );
\LED_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(15),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(15),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[15]_inst_i_4_n_0\
    );
\LED_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(14),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(14),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[15]_inst_i_5_n_0\
    );
\LED_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(13),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(13),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[15]_inst_i_6_n_0\
    );
\LED_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(12),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(12),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[15]_inst_i_7_n_0\
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(1),
      I2 => x2(1),
      I3 => f_IBUF,
      I4 => plusOp(1),
      O => LED_OBUF(1)
    );
\LED_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(1),
      O => y2(1)
    );
\LED_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(1),
      O => x2(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(2),
      O => LED(2)
    );
\LED_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(2),
      I2 => x2(2),
      I3 => f_IBUF,
      I4 => plusOp(2),
      O => LED_OBUF(2)
    );
\LED_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(2),
      O => y2(2)
    );
\LED_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(2),
      O => x2(2)
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(3),
      O => LED(3)
    );
\LED_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(3),
      I2 => x2(3),
      I3 => f_IBUF,
      I4 => plusOp(3),
      O => LED_OBUF(3)
    );
\LED_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(3),
      O => y2(3)
    );
\LED_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(3),
      O => x2(3)
    );
\LED_OBUF[3]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \LED_OBUF[3]_inst_i_4_n_0\,
      CO(2) => \LED_OBUF[3]_inst_i_4_n_1\,
      CO(1) => \LED_OBUF[3]_inst_i_4_n_2\,
      CO(0) => \LED_OBUF[3]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x2(3 downto 0),
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \LED_OBUF[3]_inst_i_5_n_0\,
      S(2) => \LED_OBUF[3]_inst_i_6_n_0\,
      S(1) => \LED_OBUF[3]_inst_i_7_n_0\,
      S(0) => \LED_OBUF[3]_inst_i_8_n_0\
    );
\LED_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(3),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(3),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[3]_inst_i_5_n_0\
    );
\LED_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(2),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(2),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[3]_inst_i_6_n_0\
    );
\LED_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(1),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(1),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[3]_inst_i_7_n_0\
    );
\LED_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(0),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(0),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[3]_inst_i_8_n_0\
    );
\LED_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(4),
      O => LED(4)
    );
\LED_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(4),
      I2 => x2(4),
      I3 => f_IBUF,
      I4 => plusOp(4),
      O => LED_OBUF(4)
    );
\LED_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(4),
      O => y2(4)
    );
\LED_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(4),
      O => x2(4)
    );
\LED_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(5),
      O => LED(5)
    );
\LED_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(5),
      I2 => x2(5),
      I3 => f_IBUF,
      I4 => plusOp(5),
      O => LED_OBUF(5)
    );
\LED_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(5),
      O => y2(5)
    );
\LED_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(5),
      O => x2(5)
    );
\LED_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(6),
      O => LED(6)
    );
\LED_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(6),
      I2 => x2(6),
      I3 => f_IBUF,
      I4 => plusOp(6),
      O => LED_OBUF(6)
    );
\LED_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(6),
      O => y2(6)
    );
\LED_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(6),
      O => x2(6)
    );
\LED_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(7),
      O => LED(7)
    );
\LED_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(7),
      I2 => x2(7),
      I3 => f_IBUF,
      I4 => plusOp(7),
      O => LED_OBUF(7)
    );
\LED_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(7),
      O => y2(7)
    );
\LED_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(7),
      O => x2(7)
    );
\LED_OBUF[7]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \LED_OBUF[3]_inst_i_4_n_0\,
      CO(3) => \LED_OBUF[7]_inst_i_4_n_0\,
      CO(2) => \LED_OBUF[7]_inst_i_4_n_1\,
      CO(1) => \LED_OBUF[7]_inst_i_4_n_2\,
      CO(0) => \LED_OBUF[7]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x2(7 downto 4),
      O(3 downto 0) => plusOp(7 downto 4),
      S(3) => \LED_OBUF[7]_inst_i_5_n_0\,
      S(2) => \LED_OBUF[7]_inst_i_6_n_0\,
      S(1) => \LED_OBUF[7]_inst_i_7_n_0\,
      S(0) => \LED_OBUF[7]_inst_i_8_n_0\
    );
\LED_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(7),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(7),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[7]_inst_i_5_n_0\
    );
\LED_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(6),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(6),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[7]_inst_i_6_n_0\
    );
\LED_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(5),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(5),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[7]_inst_i_7_n_0\
    );
\LED_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2DD22DD2D22DD2"
    )
        port map (
      I0 => SW_IBUF(4),
      I1 => zx_IBUF,
      I2 => nx_IBUF,
      I3 => y_IBUF(4),
      I4 => zy_IBUF,
      I5 => ny_IBUF,
      O => \LED_OBUF[7]_inst_i_8_n_0\
    );
\LED_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(8),
      O => LED(8)
    );
\LED_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(8),
      I2 => x2(8),
      I3 => f_IBUF,
      I4 => plusOp(8),
      O => LED_OBUF(8)
    );
\LED_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(8),
      O => y2(8)
    );
\LED_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(8),
      O => x2(8)
    );
\LED_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(9),
      O => LED(9)
    );
\LED_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => no_IBUF,
      I1 => y2(9),
      I2 => x2(9),
      I3 => f_IBUF,
      I4 => plusOp(9),
      O => LED_OBUF(9)
    );
\LED_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => ny_IBUF,
      I1 => zy_IBUF,
      I2 => y_IBUF(9),
      O => y2(9)
    );
\LED_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => nx_IBUF,
      I1 => zx_IBUF,
      I2 => SW_IBUF(9),
      O => x2(9)
    );
\SW_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(0),
      O => SW_IBUF(0)
    );
\SW_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(10),
      O => SW_IBUF(10)
    );
\SW_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(11),
      O => SW_IBUF(11)
    );
\SW_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(12),
      O => SW_IBUF(12)
    );
\SW_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(13),
      O => SW_IBUF(13)
    );
\SW_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(14),
      O => SW_IBUF(14)
    );
\SW_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(15),
      O => SW_IBUF(15)
    );
\SW_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(1),
      O => SW_IBUF(1)
    );
\SW_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(2),
      O => SW_IBUF(2)
    );
\SW_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(3),
      O => SW_IBUF(3)
    );
\SW_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(4),
      O => SW_IBUF(4)
    );
\SW_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(5),
      O => SW_IBUF(5)
    );
\SW_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(6),
      O => SW_IBUF(6)
    );
\SW_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(7),
      O => SW_IBUF(7)
    );
\SW_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(8),
      O => SW_IBUF(8)
    );
\SW_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(9),
      O => SW_IBUF(9)
    );
f_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => f,
      O => f_IBUF
    );
ng_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ng
    );
no_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => no,
      O => no_IBUF
    );
nx_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => nx,
      O => nx_IBUF
    );
ny_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ny,
      O => ny_IBUF
    );
\y_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(0),
      O => y_IBUF(0)
    );
\y_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(10),
      O => y_IBUF(10)
    );
\y_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(11),
      O => y_IBUF(11)
    );
\y_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(12),
      O => y_IBUF(12)
    );
\y_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(13),
      O => y_IBUF(13)
    );
\y_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(14),
      O => y_IBUF(14)
    );
\y_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(15),
      O => y_IBUF(15)
    );
\y_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(1),
      O => y_IBUF(1)
    );
\y_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(2),
      O => y_IBUF(2)
    );
\y_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(3),
      O => y_IBUF(3)
    );
\y_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(4),
      O => y_IBUF(4)
    );
\y_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(5),
      O => y_IBUF(5)
    );
\y_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(6),
      O => y_IBUF(6)
    );
\y_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(7),
      O => y_IBUF(7)
    );
\y_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(8),
      O => y_IBUF(8)
    );
\y_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(9),
      O => y_IBUF(9)
    );
zr_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => zr
    );
zx_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => zx,
      O => zx_IBUF
    );
zy_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => zy,
      O => zy_IBUF
    );
end STRUCTURE;
