-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Fri Apr 07 00:23:28 2017
-- Host        : Luke-laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Luke/Documents/EGR426/Project03_cpu/cpu.sim/sim_1/synth/func/cputb2_func_synth.vhd
-- Design      : top_level
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alu is
  port (
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_data_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_data_reg_0 : out STD_LOGIC;
    mem_data_reg_1 : out STD_LOGIC;
    mem_data_reg_2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_data_reg_3 : out STD_LOGIC;
    \B_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_data_reg_4 : out STD_LOGIC;
    mem_data_reg_5 : out STD_LOGIC;
    A_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \A_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \IR_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \IR_reg[4]_0\ : in STD_LOGIC;
    \IR_reg[5]\ : in STD_LOGIC;
    \IR_reg[3]\ : in STD_LOGIC;
    \B_reg[1]\ : in STD_LOGIC;
    \IR_reg[4]_1\ : in STD_LOGIC;
    \IR_reg[6]\ : in STD_LOGIC;
    \A_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \IR_reg[1]\ : in STD_LOGIC;
    deb1_reg : in STD_LOGIC;
    \IR_reg[2]\ : in STD_LOGIC;
    \B_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \IR_reg[1]_0\ : in STD_LOGIC;
    \CurrState_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \B_reg[0]_1\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \IR_reg[6]_0\ : in STD_LOGIC;
    mem_data_reg_6 : in STD_LOGIC;
    \IR_reg[4]_2\ : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \B_reg[7]\ : in STD_LOGIC;
    \B_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end alu;

architecture STRUCTURE of alu is
  signal \^mem_data_reg_3\ : STD_LOGIC;
  signal mem_data_reg_i_50_n_0 : STD_LOGIC;
  signal mem_data_reg_i_57_n_0 : STD_LOGIC;
  signal mem_data_reg_i_59_n_0 : STD_LOGIC;
  signal mem_data_reg_i_67_n_0 : STD_LOGIC;
  signal mem_data_reg_i_71_n_0 : STD_LOGIC;
  signal mem_data_reg_i_75_n_0 : STD_LOGIC;
  signal mem_data_reg_i_77_n_0 : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \NLW_minusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  mem_data_reg_3 <= \^mem_data_reg_3\;
\A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777444444474"
    )
        port map (
      I0 => \A_reg[0]\(0),
      I1 => \IR_reg[1]\,
      I2 => deb1_reg,
      I3 => Q(0),
      I4 => \IR_reg[2]\,
      I5 => \^mem_data_reg_3\,
      O => D(0)
    );
\B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777747744447444"
    )
        port map (
      I0 => \B_reg[0]_0\(0),
      I1 => \IR_reg[1]_0\,
      I2 => deb1_reg,
      I3 => Q(0),
      I4 => \IR_reg[2]\,
      I5 => \^mem_data_reg_3\,
      O => \B_reg[0]\(0)
    );
mem_data_reg_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => mem_data_reg_i_50_n_0,
      I1 => \CurrState_reg[1]\(0),
      I2 => \B_reg[0]_1\,
      I3 => \CurrState_reg[1]\(1),
      I4 => DOADO(0),
      O => \^mem_data_reg_3\
    );
mem_data_reg_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCCCCCCDDFCCC"
    )
        port map (
      I0 => \IR_reg[4]_2\,
      I1 => mem_data_reg_i_57_n_0,
      I2 => A_0(6),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(1),
      O => mem_data_reg_4
    );
mem_data_reg_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBFBBBBBB"
    )
        port map (
      I0 => mem_data_reg_i_59_n_0,
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \B_reg[7]\,
      O => mem_data_reg_5
    );
mem_data_reg_i_38: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FF4700"
    )
        port map (
      I0 => \IR_reg[4]\,
      I1 => Q(2),
      I2 => \IR_reg[4]_0\,
      I3 => Q(3),
      I4 => mem_data_reg_i_67_n_0,
      O => mem_data_reg_0
    );
mem_data_reg_i_45: unisim.vcomponents.MUXF7
     port map (
      I0 => mem_data_reg_i_71_n_0,
      I1 => \IR_reg[5]\,
      O => mem_data_reg_1,
      S => Q(3)
    );
mem_data_reg_i_47: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A808"
    )
        port map (
      I0 => \IR_reg[3]\,
      I1 => \B_reg[1]\,
      I2 => Q(4),
      I3 => \IR_reg[4]_1\,
      I4 => \IR_reg[6]\,
      I5 => mem_data_reg_i_75_n_0,
      O => mem_data_reg_2
    );
mem_data_reg_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \IR_reg[6]_0\,
      I1 => mem_data_reg_i_77_n_0,
      I2 => Q(4),
      I3 => \B_reg[0]_1\,
      I4 => \IR_reg[3]\,
      I5 => mem_data_reg_6,
      O => mem_data_reg_i_50_n_0
    );
mem_data_reg_i_57: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10111000FFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => p_2_in,
      I3 => Q(1),
      I4 => \B_reg[6]\(0),
      I5 => Q(4),
      O => mem_data_reg_i_57_n_0
    );
mem_data_reg_i_59: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010041401110515"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => A_0(5),
      I4 => \minusOp_carry__0_n_5\,
      I5 => data0(4),
      O => mem_data_reg_i_59_n_0
    );
mem_data_reg_i_67: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A_0(5),
      I1 => A_0(3),
      I2 => Q(2),
      I3 => \minusOp_carry__0_n_7\,
      I4 => Q(1),
      I5 => data0(3),
      O => mem_data_reg_i_67_n_0
    );
mem_data_reg_i_71: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A_0(3),
      I1 => A_0(1),
      I2 => Q(2),
      I3 => minusOp_carry_n_5,
      I4 => Q(1),
      I5 => data0(2),
      O => mem_data_reg_i_71_n_0
    );
mem_data_reg_i_75: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => minusOp_carry_n_6,
      I1 => Q(1),
      I2 => data0(1),
      I3 => Q(3),
      I4 => Q(2),
      O => mem_data_reg_i_75_n_0
    );
mem_data_reg_i_77: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => data0(0),
      I1 => Q(1),
      I2 => minusOp_carry_n_7,
      I3 => Q(2),
      I4 => A_0(1),
      I5 => Q(3),
      O => mem_data_reg_i_77_n_0
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => A_0(3 downto 0),
      O(3) => O(0),
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3 downto 0) => S(3 downto 0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \NLW_minusOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => A_0(6 downto 4),
      O(3) => p_2_in,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => mem_data_reg(0),
      O(0) => \minusOp_carry__0_n_7\,
      S(3 downto 0) => \A_reg[7]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_div is
  port (
    clk1Hz : out STD_LOGIC;
    clk250Hz : out STD_LOGIC;
    clk100MHz_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end clk_div;

architecture STRUCTURE of clk_div is
  signal \^clk1hz\ : STD_LOGIC;
  signal clk1Hz_i_1_n_0 : STD_LOGIC;
  signal \^clk250hz\ : STD_LOGIC;
  signal clk250Hz_i_1_n_0 : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_5_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_5_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_5_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_6_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_6_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_6_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_7_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_7_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_7_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__0_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_4_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_4_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_5_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_5_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_5_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz1_carry__1_n_3\ : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_10_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_11_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_12_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_13_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_14_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_15_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_16_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_17_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_18_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_19_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_1_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_2_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_3_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_4_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_5_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_5_n_1 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_5_n_2 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_5_n_3 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_6_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_6_n_1 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_6_n_2 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_6_n_3 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_7_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_7_n_1 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_7_n_2 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_7_n_3 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_8_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_i_9_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_n_0 : STD_LOGIC;
  signal clkCnt1Hz1_carry_n_1 : STD_LOGIC;
  signal clkCnt1Hz1_carry_n_2 : STD_LOGIC;
  signal clkCnt1Hz1_carry_n_3 : STD_LOGIC;
  signal clkCnt1Hz2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \clkCnt1Hz[0]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[0]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[0]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[0]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[0]_i_6_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[12]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[12]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[12]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[12]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[16]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[16]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[16]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[16]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[20]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[20]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[20]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[20]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[24]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[24]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[24]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[24]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[28]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[28]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[28]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[28]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[4]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[4]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[4]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[4]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[8]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[8]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[8]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz[8]_i_5_n_0\ : STD_LOGIC;
  signal clkCnt1Hz_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clkCnt1Hz_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt1Hz_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_5_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_5_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_5_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_6_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_6_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_6_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_7_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_7_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_7_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__0_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_4_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_4_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_5_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_5_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_5_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz1_carry__1_n_3\ : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_10_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_11_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_12_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_13_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_14_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_15_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_16_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_17_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_18_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_19_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_1_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_2_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_3_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_4_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_5_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_5_n_1 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_5_n_2 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_5_n_3 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_6_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_6_n_1 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_6_n_2 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_6_n_3 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_7_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_7_n_1 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_7_n_2 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_7_n_3 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_8_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_i_9_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_n_0 : STD_LOGIC;
  signal clkCnt250Hz1_carry_n_1 : STD_LOGIC;
  signal clkCnt250Hz1_carry_n_2 : STD_LOGIC;
  signal clkCnt250Hz1_carry_n_3 : STD_LOGIC;
  signal clkCnt250Hz2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \clkCnt250Hz[0]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[0]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[0]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[0]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[0]_i_6_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[12]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[12]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[12]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[12]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[16]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[16]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[16]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[16]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[20]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[20]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[20]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[20]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[24]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[24]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[24]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[24]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[28]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[28]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[28]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[28]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[4]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[4]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[4]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[4]_i_5_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[8]_i_2_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[8]_i_3_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[8]_i_4_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz[8]_i_5_n_0\ : STD_LOGIC;
  signal clkCnt250Hz_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clkCnt250Hz_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clkCnt250Hz_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal NLW_clkCnt1Hz1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clkCnt1Hz1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clkCnt1Hz1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_clkCnt1Hz1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clkCnt1Hz1_carry__1_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clkCnt1Hz1_carry__1_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_clkCnt1Hz_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_clkCnt250Hz1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clkCnt250Hz1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clkCnt250Hz1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_clkCnt250Hz1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clkCnt250Hz1_carry__1_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clkCnt250Hz1_carry__1_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_clkCnt250Hz_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  clk1Hz <= \^clk1hz\;
  clk250Hz <= \^clk250hz\;
clk1Hz_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => load,
      I1 => \^clk1hz\,
      O => clk1Hz_i_1_n_0
    );
clk1Hz_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => clk1Hz_i_1_n_0,
      Q => \^clk1hz\
    );
clk250Hz_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clkCnt250Hz1_carry__1_n_1\,
      I1 => \^clk250hz\,
      O => clk250Hz_i_1_n_0
    );
clk250Hz_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => clk250Hz_i_1_n_0,
      Q => \^clk250hz\
    );
clkCnt1Hz1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clkCnt1Hz1_carry_n_0,
      CO(2) => clkCnt1Hz1_carry_n_1,
      CO(1) => clkCnt1Hz1_carry_n_2,
      CO(0) => clkCnt1Hz1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_clkCnt1Hz1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => clkCnt1Hz1_carry_i_1_n_0,
      S(2) => clkCnt1Hz1_carry_i_2_n_0,
      S(1) => clkCnt1Hz1_carry_i_3_n_0,
      S(0) => clkCnt1Hz1_carry_i_4_n_0
    );
\clkCnt1Hz1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clkCnt1Hz1_carry_n_0,
      CO(3) => \clkCnt1Hz1_carry__0_n_0\,
      CO(2) => \clkCnt1Hz1_carry__0_n_1\,
      CO(1) => \clkCnt1Hz1_carry__0_n_2\,
      CO(0) => \clkCnt1Hz1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_clkCnt1Hz1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \clkCnt1Hz1_carry__0_i_1_n_0\,
      S(2) => \clkCnt1Hz1_carry__0_i_2_n_0\,
      S(1) => \clkCnt1Hz1_carry__0_i_3_n_0\,
      S(0) => \clkCnt1Hz1_carry__0_i_4_n_0\
    );
\clkCnt1Hz1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => clkCnt1Hz2(21),
      I1 => clkCnt1Hz2(22),
      I2 => clkCnt1Hz2(23),
      O => \clkCnt1Hz1_carry__0_i_1_n_0\
    );
\clkCnt1Hz1_carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(22),
      O => \clkCnt1Hz1_carry__0_i_10_n_0\
    );
\clkCnt1Hz1_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(21),
      O => \clkCnt1Hz1_carry__0_i_11_n_0\
    );
\clkCnt1Hz1_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(20),
      O => \clkCnt1Hz1_carry__0_i_12_n_0\
    );
\clkCnt1Hz1_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(19),
      O => \clkCnt1Hz1_carry__0_i_13_n_0\
    );
\clkCnt1Hz1_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(18),
      O => \clkCnt1Hz1_carry__0_i_14_n_0\
    );
\clkCnt1Hz1_carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(17),
      O => \clkCnt1Hz1_carry__0_i_15_n_0\
    );
\clkCnt1Hz1_carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(16),
      O => \clkCnt1Hz1_carry__0_i_16_n_0\
    );
\clkCnt1Hz1_carry__0_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(15),
      O => \clkCnt1Hz1_carry__0_i_17_n_0\
    );
\clkCnt1Hz1_carry__0_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(14),
      O => \clkCnt1Hz1_carry__0_i_18_n_0\
    );
\clkCnt1Hz1_carry__0_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(13),
      O => \clkCnt1Hz1_carry__0_i_19_n_0\
    );
\clkCnt1Hz1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => clkCnt1Hz2(18),
      I1 => clkCnt1Hz2(19),
      I2 => clkCnt1Hz2(20),
      O => \clkCnt1Hz1_carry__0_i_2_n_0\
    );
\clkCnt1Hz1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => clkCnt1Hz2(16),
      I1 => clkCnt1Hz2(17),
      I2 => clkCnt1Hz2(15),
      O => \clkCnt1Hz1_carry__0_i_3_n_0\
    );
\clkCnt1Hz1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clkCnt1Hz2(12),
      I1 => clkCnt1Hz2(14),
      I2 => clkCnt1Hz2(13),
      O => \clkCnt1Hz1_carry__0_i_4_n_0\
    );
\clkCnt1Hz1_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz1_carry__0_i_6_n_0\,
      CO(3) => \clkCnt1Hz1_carry__0_i_5_n_0\,
      CO(2) => \clkCnt1Hz1_carry__0_i_5_n_1\,
      CO(1) => \clkCnt1Hz1_carry__0_i_5_n_2\,
      CO(0) => \clkCnt1Hz1_carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt1Hz2(24 downto 21),
      S(3) => \clkCnt1Hz1_carry__0_i_8_n_0\,
      S(2) => \clkCnt1Hz1_carry__0_i_9_n_0\,
      S(1) => \clkCnt1Hz1_carry__0_i_10_n_0\,
      S(0) => \clkCnt1Hz1_carry__0_i_11_n_0\
    );
\clkCnt1Hz1_carry__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz1_carry__0_i_7_n_0\,
      CO(3) => \clkCnt1Hz1_carry__0_i_6_n_0\,
      CO(2) => \clkCnt1Hz1_carry__0_i_6_n_1\,
      CO(1) => \clkCnt1Hz1_carry__0_i_6_n_2\,
      CO(0) => \clkCnt1Hz1_carry__0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt1Hz2(20 downto 17),
      S(3) => \clkCnt1Hz1_carry__0_i_12_n_0\,
      S(2) => \clkCnt1Hz1_carry__0_i_13_n_0\,
      S(1) => \clkCnt1Hz1_carry__0_i_14_n_0\,
      S(0) => \clkCnt1Hz1_carry__0_i_15_n_0\
    );
\clkCnt1Hz1_carry__0_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => clkCnt1Hz1_carry_i_5_n_0,
      CO(3) => \clkCnt1Hz1_carry__0_i_7_n_0\,
      CO(2) => \clkCnt1Hz1_carry__0_i_7_n_1\,
      CO(1) => \clkCnt1Hz1_carry__0_i_7_n_2\,
      CO(0) => \clkCnt1Hz1_carry__0_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt1Hz2(16 downto 13),
      S(3) => \clkCnt1Hz1_carry__0_i_16_n_0\,
      S(2) => \clkCnt1Hz1_carry__0_i_17_n_0\,
      S(1) => \clkCnt1Hz1_carry__0_i_18_n_0\,
      S(0) => \clkCnt1Hz1_carry__0_i_19_n_0\
    );
\clkCnt1Hz1_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(24),
      O => \clkCnt1Hz1_carry__0_i_8_n_0\
    );
\clkCnt1Hz1_carry__0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(23),
      O => \clkCnt1Hz1_carry__0_i_9_n_0\
    );
\clkCnt1Hz1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz1_carry__0_n_0\,
      CO(3) => \NLW_clkCnt1Hz1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => load,
      CO(1) => \clkCnt1Hz1_carry__1_n_2\,
      CO(0) => \clkCnt1Hz1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_clkCnt1Hz1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \clkCnt1Hz1_carry__1_i_1_n_0\,
      S(1) => \clkCnt1Hz1_carry__1_i_2_n_0\,
      S(0) => \clkCnt1Hz1_carry__1_i_3_n_0\
    );
\clkCnt1Hz1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clkCnt1Hz2(31),
      I1 => clkCnt1Hz2(30),
      O => \clkCnt1Hz1_carry__1_i_1_n_0\
    );
\clkCnt1Hz1_carry__1_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(27),
      O => \clkCnt1Hz1_carry__1_i_10_n_0\
    );
\clkCnt1Hz1_carry__1_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(26),
      O => \clkCnt1Hz1_carry__1_i_11_n_0\
    );
\clkCnt1Hz1_carry__1_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(25),
      O => \clkCnt1Hz1_carry__1_i_12_n_0\
    );
\clkCnt1Hz1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt1Hz2(28),
      I1 => clkCnt1Hz2(29),
      I2 => clkCnt1Hz2(27),
      O => \clkCnt1Hz1_carry__1_i_2_n_0\
    );
\clkCnt1Hz1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt1Hz2(25),
      I1 => clkCnt1Hz2(26),
      I2 => clkCnt1Hz2(24),
      O => \clkCnt1Hz1_carry__1_i_3_n_0\
    );
\clkCnt1Hz1_carry__1_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz1_carry__1_i_5_n_0\,
      CO(3 downto 2) => \NLW_clkCnt1Hz1_carry__1_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \clkCnt1Hz1_carry__1_i_4_n_2\,
      CO(0) => \clkCnt1Hz1_carry__1_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clkCnt1Hz1_carry__1_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => clkCnt1Hz2(31 downto 29),
      S(3) => '0',
      S(2) => \clkCnt1Hz1_carry__1_i_6_n_0\,
      S(1) => \clkCnt1Hz1_carry__1_i_7_n_0\,
      S(0) => \clkCnt1Hz1_carry__1_i_8_n_0\
    );
\clkCnt1Hz1_carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz1_carry__0_i_5_n_0\,
      CO(3) => \clkCnt1Hz1_carry__1_i_5_n_0\,
      CO(2) => \clkCnt1Hz1_carry__1_i_5_n_1\,
      CO(1) => \clkCnt1Hz1_carry__1_i_5_n_2\,
      CO(0) => \clkCnt1Hz1_carry__1_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt1Hz2(28 downto 25),
      S(3) => \clkCnt1Hz1_carry__1_i_9_n_0\,
      S(2) => \clkCnt1Hz1_carry__1_i_10_n_0\,
      S(1) => \clkCnt1Hz1_carry__1_i_11_n_0\,
      S(0) => \clkCnt1Hz1_carry__1_i_12_n_0\
    );
\clkCnt1Hz1_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(31),
      O => \clkCnt1Hz1_carry__1_i_6_n_0\
    );
\clkCnt1Hz1_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(30),
      O => \clkCnt1Hz1_carry__1_i_7_n_0\
    );
\clkCnt1Hz1_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(29),
      O => \clkCnt1Hz1_carry__1_i_8_n_0\
    );
\clkCnt1Hz1_carry__1_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(28),
      O => \clkCnt1Hz1_carry__1_i_9_n_0\
    );
clkCnt1Hz1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt1Hz2(10),
      I1 => clkCnt1Hz2(11),
      I2 => clkCnt1Hz2(9),
      O => clkCnt1Hz1_carry_i_1_n_0
    );
clkCnt1Hz1_carry_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(10),
      O => clkCnt1Hz1_carry_i_10_n_0
    );
clkCnt1Hz1_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(9),
      O => clkCnt1Hz1_carry_i_11_n_0
    );
clkCnt1Hz1_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(8),
      O => clkCnt1Hz1_carry_i_12_n_0
    );
clkCnt1Hz1_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(7),
      O => clkCnt1Hz1_carry_i_13_n_0
    );
clkCnt1Hz1_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(6),
      O => clkCnt1Hz1_carry_i_14_n_0
    );
clkCnt1Hz1_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(5),
      O => clkCnt1Hz1_carry_i_15_n_0
    );
clkCnt1Hz1_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(4),
      O => clkCnt1Hz1_carry_i_16_n_0
    );
clkCnt1Hz1_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(3),
      O => clkCnt1Hz1_carry_i_17_n_0
    );
clkCnt1Hz1_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(2),
      O => clkCnt1Hz1_carry_i_18_n_0
    );
clkCnt1Hz1_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(1),
      O => clkCnt1Hz1_carry_i_19_n_0
    );
clkCnt1Hz1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt1Hz2(7),
      I1 => clkCnt1Hz2(8),
      I2 => clkCnt1Hz2(6),
      O => clkCnt1Hz1_carry_i_2_n_0
    );
clkCnt1Hz1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clkCnt1Hz2(3),
      I1 => clkCnt1Hz2(5),
      I2 => clkCnt1Hz2(4),
      O => clkCnt1Hz1_carry_i_3_n_0
    );
clkCnt1Hz1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clkCnt1Hz2(1),
      I1 => clkCnt1Hz_reg(0),
      I2 => clkCnt1Hz2(2),
      O => clkCnt1Hz1_carry_i_4_n_0
    );
clkCnt1Hz1_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => clkCnt1Hz1_carry_i_6_n_0,
      CO(3) => clkCnt1Hz1_carry_i_5_n_0,
      CO(2) => clkCnt1Hz1_carry_i_5_n_1,
      CO(1) => clkCnt1Hz1_carry_i_5_n_2,
      CO(0) => clkCnt1Hz1_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt1Hz2(12 downto 9),
      S(3) => clkCnt1Hz1_carry_i_8_n_0,
      S(2) => clkCnt1Hz1_carry_i_9_n_0,
      S(1) => clkCnt1Hz1_carry_i_10_n_0,
      S(0) => clkCnt1Hz1_carry_i_11_n_0
    );
clkCnt1Hz1_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => clkCnt1Hz1_carry_i_7_n_0,
      CO(3) => clkCnt1Hz1_carry_i_6_n_0,
      CO(2) => clkCnt1Hz1_carry_i_6_n_1,
      CO(1) => clkCnt1Hz1_carry_i_6_n_2,
      CO(0) => clkCnt1Hz1_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt1Hz2(8 downto 5),
      S(3) => clkCnt1Hz1_carry_i_12_n_0,
      S(2) => clkCnt1Hz1_carry_i_13_n_0,
      S(1) => clkCnt1Hz1_carry_i_14_n_0,
      S(0) => clkCnt1Hz1_carry_i_15_n_0
    );
clkCnt1Hz1_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clkCnt1Hz1_carry_i_7_n_0,
      CO(2) => clkCnt1Hz1_carry_i_7_n_1,
      CO(1) => clkCnt1Hz1_carry_i_7_n_2,
      CO(0) => clkCnt1Hz1_carry_i_7_n_3,
      CYINIT => clkCnt1Hz_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt1Hz2(4 downto 1),
      S(3) => clkCnt1Hz1_carry_i_16_n_0,
      S(2) => clkCnt1Hz1_carry_i_17_n_0,
      S(1) => clkCnt1Hz1_carry_i_18_n_0,
      S(0) => clkCnt1Hz1_carry_i_19_n_0
    );
clkCnt1Hz1_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(12),
      O => clkCnt1Hz1_carry_i_8_n_0
    );
clkCnt1Hz1_carry_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(11),
      O => clkCnt1Hz1_carry_i_9_n_0
    );
\clkCnt1Hz[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(0),
      I1 => load,
      O => \clkCnt1Hz[0]_i_2_n_0\
    );
\clkCnt1Hz[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(3),
      I1 => load,
      O => \clkCnt1Hz[0]_i_3_n_0\
    );
\clkCnt1Hz[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(2),
      I1 => load,
      O => \clkCnt1Hz[0]_i_4_n_0\
    );
\clkCnt1Hz[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(1),
      I1 => load,
      O => \clkCnt1Hz[0]_i_5_n_0\
    );
\clkCnt1Hz[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clkCnt1Hz_reg(0),
      I1 => load,
      O => \clkCnt1Hz[0]_i_6_n_0\
    );
\clkCnt1Hz[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(15),
      I1 => load,
      O => \clkCnt1Hz[12]_i_2_n_0\
    );
\clkCnt1Hz[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(14),
      I1 => load,
      O => \clkCnt1Hz[12]_i_3_n_0\
    );
\clkCnt1Hz[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(13),
      I1 => load,
      O => \clkCnt1Hz[12]_i_4_n_0\
    );
\clkCnt1Hz[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(12),
      I1 => load,
      O => \clkCnt1Hz[12]_i_5_n_0\
    );
\clkCnt1Hz[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(19),
      I1 => load,
      O => \clkCnt1Hz[16]_i_2_n_0\
    );
\clkCnt1Hz[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(18),
      I1 => load,
      O => \clkCnt1Hz[16]_i_3_n_0\
    );
\clkCnt1Hz[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(17),
      I1 => load,
      O => \clkCnt1Hz[16]_i_4_n_0\
    );
\clkCnt1Hz[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(16),
      I1 => load,
      O => \clkCnt1Hz[16]_i_5_n_0\
    );
\clkCnt1Hz[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(23),
      I1 => load,
      O => \clkCnt1Hz[20]_i_2_n_0\
    );
\clkCnt1Hz[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(22),
      I1 => load,
      O => \clkCnt1Hz[20]_i_3_n_0\
    );
\clkCnt1Hz[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(21),
      I1 => load,
      O => \clkCnt1Hz[20]_i_4_n_0\
    );
\clkCnt1Hz[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(20),
      I1 => load,
      O => \clkCnt1Hz[20]_i_5_n_0\
    );
\clkCnt1Hz[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(27),
      I1 => load,
      O => \clkCnt1Hz[24]_i_2_n_0\
    );
\clkCnt1Hz[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(26),
      I1 => load,
      O => \clkCnt1Hz[24]_i_3_n_0\
    );
\clkCnt1Hz[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(25),
      I1 => load,
      O => \clkCnt1Hz[24]_i_4_n_0\
    );
\clkCnt1Hz[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(24),
      I1 => load,
      O => \clkCnt1Hz[24]_i_5_n_0\
    );
\clkCnt1Hz[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(31),
      I1 => load,
      O => \clkCnt1Hz[28]_i_2_n_0\
    );
\clkCnt1Hz[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(30),
      I1 => load,
      O => \clkCnt1Hz[28]_i_3_n_0\
    );
\clkCnt1Hz[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(29),
      I1 => load,
      O => \clkCnt1Hz[28]_i_4_n_0\
    );
\clkCnt1Hz[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(28),
      I1 => load,
      O => \clkCnt1Hz[28]_i_5_n_0\
    );
\clkCnt1Hz[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(7),
      I1 => load,
      O => \clkCnt1Hz[4]_i_2_n_0\
    );
\clkCnt1Hz[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(6),
      I1 => load,
      O => \clkCnt1Hz[4]_i_3_n_0\
    );
\clkCnt1Hz[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(5),
      I1 => load,
      O => \clkCnt1Hz[4]_i_4_n_0\
    );
\clkCnt1Hz[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(4),
      I1 => load,
      O => \clkCnt1Hz[4]_i_5_n_0\
    );
\clkCnt1Hz[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(11),
      I1 => load,
      O => \clkCnt1Hz[8]_i_2_n_0\
    );
\clkCnt1Hz[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(10),
      I1 => load,
      O => \clkCnt1Hz[8]_i_3_n_0\
    );
\clkCnt1Hz[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(9),
      I1 => load,
      O => \clkCnt1Hz[8]_i_4_n_0\
    );
\clkCnt1Hz[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt1Hz_reg(8),
      I1 => load,
      O => \clkCnt1Hz[8]_i_5_n_0\
    );
\clkCnt1Hz_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[0]_i_1_n_7\,
      Q => clkCnt1Hz_reg(0)
    );
\clkCnt1Hz_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clkCnt1Hz_reg[0]_i_1_n_0\,
      CO(2) => \clkCnt1Hz_reg[0]_i_1_n_1\,
      CO(1) => \clkCnt1Hz_reg[0]_i_1_n_2\,
      CO(0) => \clkCnt1Hz_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \clkCnt1Hz[0]_i_2_n_0\,
      O(3) => \clkCnt1Hz_reg[0]_i_1_n_4\,
      O(2) => \clkCnt1Hz_reg[0]_i_1_n_5\,
      O(1) => \clkCnt1Hz_reg[0]_i_1_n_6\,
      O(0) => \clkCnt1Hz_reg[0]_i_1_n_7\,
      S(3) => \clkCnt1Hz[0]_i_3_n_0\,
      S(2) => \clkCnt1Hz[0]_i_4_n_0\,
      S(1) => \clkCnt1Hz[0]_i_5_n_0\,
      S(0) => \clkCnt1Hz[0]_i_6_n_0\
    );
\clkCnt1Hz_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[8]_i_1_n_5\,
      Q => clkCnt1Hz_reg(10)
    );
\clkCnt1Hz_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[8]_i_1_n_4\,
      Q => clkCnt1Hz_reg(11)
    );
\clkCnt1Hz_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[12]_i_1_n_7\,
      Q => clkCnt1Hz_reg(12)
    );
\clkCnt1Hz_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz_reg[8]_i_1_n_0\,
      CO(3) => \clkCnt1Hz_reg[12]_i_1_n_0\,
      CO(2) => \clkCnt1Hz_reg[12]_i_1_n_1\,
      CO(1) => \clkCnt1Hz_reg[12]_i_1_n_2\,
      CO(0) => \clkCnt1Hz_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt1Hz_reg[12]_i_1_n_4\,
      O(2) => \clkCnt1Hz_reg[12]_i_1_n_5\,
      O(1) => \clkCnt1Hz_reg[12]_i_1_n_6\,
      O(0) => \clkCnt1Hz_reg[12]_i_1_n_7\,
      S(3) => \clkCnt1Hz[12]_i_2_n_0\,
      S(2) => \clkCnt1Hz[12]_i_3_n_0\,
      S(1) => \clkCnt1Hz[12]_i_4_n_0\,
      S(0) => \clkCnt1Hz[12]_i_5_n_0\
    );
\clkCnt1Hz_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[12]_i_1_n_6\,
      Q => clkCnt1Hz_reg(13)
    );
\clkCnt1Hz_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[12]_i_1_n_5\,
      Q => clkCnt1Hz_reg(14)
    );
\clkCnt1Hz_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[12]_i_1_n_4\,
      Q => clkCnt1Hz_reg(15)
    );
\clkCnt1Hz_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[16]_i_1_n_7\,
      Q => clkCnt1Hz_reg(16)
    );
\clkCnt1Hz_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz_reg[12]_i_1_n_0\,
      CO(3) => \clkCnt1Hz_reg[16]_i_1_n_0\,
      CO(2) => \clkCnt1Hz_reg[16]_i_1_n_1\,
      CO(1) => \clkCnt1Hz_reg[16]_i_1_n_2\,
      CO(0) => \clkCnt1Hz_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt1Hz_reg[16]_i_1_n_4\,
      O(2) => \clkCnt1Hz_reg[16]_i_1_n_5\,
      O(1) => \clkCnt1Hz_reg[16]_i_1_n_6\,
      O(0) => \clkCnt1Hz_reg[16]_i_1_n_7\,
      S(3) => \clkCnt1Hz[16]_i_2_n_0\,
      S(2) => \clkCnt1Hz[16]_i_3_n_0\,
      S(1) => \clkCnt1Hz[16]_i_4_n_0\,
      S(0) => \clkCnt1Hz[16]_i_5_n_0\
    );
\clkCnt1Hz_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[16]_i_1_n_6\,
      Q => clkCnt1Hz_reg(17)
    );
\clkCnt1Hz_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[16]_i_1_n_5\,
      Q => clkCnt1Hz_reg(18)
    );
\clkCnt1Hz_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[16]_i_1_n_4\,
      Q => clkCnt1Hz_reg(19)
    );
\clkCnt1Hz_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[0]_i_1_n_6\,
      Q => clkCnt1Hz_reg(1)
    );
\clkCnt1Hz_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[20]_i_1_n_7\,
      Q => clkCnt1Hz_reg(20)
    );
\clkCnt1Hz_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz_reg[16]_i_1_n_0\,
      CO(3) => \clkCnt1Hz_reg[20]_i_1_n_0\,
      CO(2) => \clkCnt1Hz_reg[20]_i_1_n_1\,
      CO(1) => \clkCnt1Hz_reg[20]_i_1_n_2\,
      CO(0) => \clkCnt1Hz_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt1Hz_reg[20]_i_1_n_4\,
      O(2) => \clkCnt1Hz_reg[20]_i_1_n_5\,
      O(1) => \clkCnt1Hz_reg[20]_i_1_n_6\,
      O(0) => \clkCnt1Hz_reg[20]_i_1_n_7\,
      S(3) => \clkCnt1Hz[20]_i_2_n_0\,
      S(2) => \clkCnt1Hz[20]_i_3_n_0\,
      S(1) => \clkCnt1Hz[20]_i_4_n_0\,
      S(0) => \clkCnt1Hz[20]_i_5_n_0\
    );
\clkCnt1Hz_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[20]_i_1_n_6\,
      Q => clkCnt1Hz_reg(21)
    );
\clkCnt1Hz_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[20]_i_1_n_5\,
      Q => clkCnt1Hz_reg(22)
    );
\clkCnt1Hz_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[20]_i_1_n_4\,
      Q => clkCnt1Hz_reg(23)
    );
\clkCnt1Hz_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[24]_i_1_n_7\,
      Q => clkCnt1Hz_reg(24)
    );
\clkCnt1Hz_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz_reg[20]_i_1_n_0\,
      CO(3) => \clkCnt1Hz_reg[24]_i_1_n_0\,
      CO(2) => \clkCnt1Hz_reg[24]_i_1_n_1\,
      CO(1) => \clkCnt1Hz_reg[24]_i_1_n_2\,
      CO(0) => \clkCnt1Hz_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt1Hz_reg[24]_i_1_n_4\,
      O(2) => \clkCnt1Hz_reg[24]_i_1_n_5\,
      O(1) => \clkCnt1Hz_reg[24]_i_1_n_6\,
      O(0) => \clkCnt1Hz_reg[24]_i_1_n_7\,
      S(3) => \clkCnt1Hz[24]_i_2_n_0\,
      S(2) => \clkCnt1Hz[24]_i_3_n_0\,
      S(1) => \clkCnt1Hz[24]_i_4_n_0\,
      S(0) => \clkCnt1Hz[24]_i_5_n_0\
    );
\clkCnt1Hz_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[24]_i_1_n_6\,
      Q => clkCnt1Hz_reg(25)
    );
\clkCnt1Hz_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[24]_i_1_n_5\,
      Q => clkCnt1Hz_reg(26)
    );
\clkCnt1Hz_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[24]_i_1_n_4\,
      Q => clkCnt1Hz_reg(27)
    );
\clkCnt1Hz_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[28]_i_1_n_7\,
      Q => clkCnt1Hz_reg(28)
    );
\clkCnt1Hz_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz_reg[24]_i_1_n_0\,
      CO(3) => \NLW_clkCnt1Hz_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clkCnt1Hz_reg[28]_i_1_n_1\,
      CO(1) => \clkCnt1Hz_reg[28]_i_1_n_2\,
      CO(0) => \clkCnt1Hz_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt1Hz_reg[28]_i_1_n_4\,
      O(2) => \clkCnt1Hz_reg[28]_i_1_n_5\,
      O(1) => \clkCnt1Hz_reg[28]_i_1_n_6\,
      O(0) => \clkCnt1Hz_reg[28]_i_1_n_7\,
      S(3) => \clkCnt1Hz[28]_i_2_n_0\,
      S(2) => \clkCnt1Hz[28]_i_3_n_0\,
      S(1) => \clkCnt1Hz[28]_i_4_n_0\,
      S(0) => \clkCnt1Hz[28]_i_5_n_0\
    );
\clkCnt1Hz_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[28]_i_1_n_6\,
      Q => clkCnt1Hz_reg(29)
    );
\clkCnt1Hz_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[0]_i_1_n_5\,
      Q => clkCnt1Hz_reg(2)
    );
\clkCnt1Hz_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[28]_i_1_n_5\,
      Q => clkCnt1Hz_reg(30)
    );
\clkCnt1Hz_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[28]_i_1_n_4\,
      Q => clkCnt1Hz_reg(31)
    );
\clkCnt1Hz_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[0]_i_1_n_4\,
      Q => clkCnt1Hz_reg(3)
    );
\clkCnt1Hz_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[4]_i_1_n_7\,
      Q => clkCnt1Hz_reg(4)
    );
\clkCnt1Hz_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz_reg[0]_i_1_n_0\,
      CO(3) => \clkCnt1Hz_reg[4]_i_1_n_0\,
      CO(2) => \clkCnt1Hz_reg[4]_i_1_n_1\,
      CO(1) => \clkCnt1Hz_reg[4]_i_1_n_2\,
      CO(0) => \clkCnt1Hz_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt1Hz_reg[4]_i_1_n_4\,
      O(2) => \clkCnt1Hz_reg[4]_i_1_n_5\,
      O(1) => \clkCnt1Hz_reg[4]_i_1_n_6\,
      O(0) => \clkCnt1Hz_reg[4]_i_1_n_7\,
      S(3) => \clkCnt1Hz[4]_i_2_n_0\,
      S(2) => \clkCnt1Hz[4]_i_3_n_0\,
      S(1) => \clkCnt1Hz[4]_i_4_n_0\,
      S(0) => \clkCnt1Hz[4]_i_5_n_0\
    );
\clkCnt1Hz_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[4]_i_1_n_6\,
      Q => clkCnt1Hz_reg(5)
    );
\clkCnt1Hz_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[4]_i_1_n_5\,
      Q => clkCnt1Hz_reg(6)
    );
\clkCnt1Hz_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[4]_i_1_n_4\,
      Q => clkCnt1Hz_reg(7)
    );
\clkCnt1Hz_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[8]_i_1_n_7\,
      Q => clkCnt1Hz_reg(8)
    );
\clkCnt1Hz_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt1Hz_reg[4]_i_1_n_0\,
      CO(3) => \clkCnt1Hz_reg[8]_i_1_n_0\,
      CO(2) => \clkCnt1Hz_reg[8]_i_1_n_1\,
      CO(1) => \clkCnt1Hz_reg[8]_i_1_n_2\,
      CO(0) => \clkCnt1Hz_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt1Hz_reg[8]_i_1_n_4\,
      O(2) => \clkCnt1Hz_reg[8]_i_1_n_5\,
      O(1) => \clkCnt1Hz_reg[8]_i_1_n_6\,
      O(0) => \clkCnt1Hz_reg[8]_i_1_n_7\,
      S(3) => \clkCnt1Hz[8]_i_2_n_0\,
      S(2) => \clkCnt1Hz[8]_i_3_n_0\,
      S(1) => \clkCnt1Hz[8]_i_4_n_0\,
      S(0) => \clkCnt1Hz[8]_i_5_n_0\
    );
\clkCnt1Hz_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt1Hz_reg[8]_i_1_n_6\,
      Q => clkCnt1Hz_reg(9)
    );
clkCnt250Hz1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clkCnt250Hz1_carry_n_0,
      CO(2) => clkCnt250Hz1_carry_n_1,
      CO(1) => clkCnt250Hz1_carry_n_2,
      CO(0) => clkCnt250Hz1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_clkCnt250Hz1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => clkCnt250Hz1_carry_i_1_n_0,
      S(2) => clkCnt250Hz1_carry_i_2_n_0,
      S(1) => clkCnt250Hz1_carry_i_3_n_0,
      S(0) => clkCnt250Hz1_carry_i_4_n_0
    );
\clkCnt250Hz1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clkCnt250Hz1_carry_n_0,
      CO(3) => \clkCnt250Hz1_carry__0_n_0\,
      CO(2) => \clkCnt250Hz1_carry__0_n_1\,
      CO(1) => \clkCnt250Hz1_carry__0_n_2\,
      CO(0) => \clkCnt250Hz1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_clkCnt250Hz1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \clkCnt250Hz1_carry__0_i_1_n_0\,
      S(2) => \clkCnt250Hz1_carry__0_i_2_n_0\,
      S(1) => \clkCnt250Hz1_carry__0_i_3_n_0\,
      S(0) => \clkCnt250Hz1_carry__0_i_4_n_0\
    );
\clkCnt250Hz1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt250Hz2(22),
      I1 => clkCnt250Hz2(23),
      I2 => clkCnt250Hz2(21),
      O => \clkCnt250Hz1_carry__0_i_1_n_0\
    );
\clkCnt250Hz1_carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(22),
      O => \clkCnt250Hz1_carry__0_i_10_n_0\
    );
\clkCnt250Hz1_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(21),
      O => \clkCnt250Hz1_carry__0_i_11_n_0\
    );
\clkCnt250Hz1_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(20),
      O => \clkCnt250Hz1_carry__0_i_12_n_0\
    );
\clkCnt250Hz1_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(19),
      O => \clkCnt250Hz1_carry__0_i_13_n_0\
    );
\clkCnt250Hz1_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(18),
      O => \clkCnt250Hz1_carry__0_i_14_n_0\
    );
\clkCnt250Hz1_carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(17),
      O => \clkCnt250Hz1_carry__0_i_15_n_0\
    );
\clkCnt250Hz1_carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(16),
      O => \clkCnt250Hz1_carry__0_i_16_n_0\
    );
\clkCnt250Hz1_carry__0_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(15),
      O => \clkCnt250Hz1_carry__0_i_17_n_0\
    );
\clkCnt250Hz1_carry__0_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(14),
      O => \clkCnt250Hz1_carry__0_i_18_n_0\
    );
\clkCnt250Hz1_carry__0_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(13),
      O => \clkCnt250Hz1_carry__0_i_19_n_0\
    );
\clkCnt250Hz1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt250Hz2(19),
      I1 => clkCnt250Hz2(20),
      I2 => clkCnt250Hz2(18),
      O => \clkCnt250Hz1_carry__0_i_2_n_0\
    );
\clkCnt250Hz1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clkCnt250Hz2(16),
      I1 => clkCnt250Hz2(17),
      I2 => clkCnt250Hz2(15),
      O => \clkCnt250Hz1_carry__0_i_3_n_0\
    );
\clkCnt250Hz1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt250Hz2(13),
      I1 => clkCnt250Hz2(14),
      I2 => clkCnt250Hz2(12),
      O => \clkCnt250Hz1_carry__0_i_4_n_0\
    );
\clkCnt250Hz1_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz1_carry__0_i_6_n_0\,
      CO(3) => \clkCnt250Hz1_carry__0_i_5_n_0\,
      CO(2) => \clkCnt250Hz1_carry__0_i_5_n_1\,
      CO(1) => \clkCnt250Hz1_carry__0_i_5_n_2\,
      CO(0) => \clkCnt250Hz1_carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt250Hz2(24 downto 21),
      S(3) => \clkCnt250Hz1_carry__0_i_8_n_0\,
      S(2) => \clkCnt250Hz1_carry__0_i_9_n_0\,
      S(1) => \clkCnt250Hz1_carry__0_i_10_n_0\,
      S(0) => \clkCnt250Hz1_carry__0_i_11_n_0\
    );
\clkCnt250Hz1_carry__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz1_carry__0_i_7_n_0\,
      CO(3) => \clkCnt250Hz1_carry__0_i_6_n_0\,
      CO(2) => \clkCnt250Hz1_carry__0_i_6_n_1\,
      CO(1) => \clkCnt250Hz1_carry__0_i_6_n_2\,
      CO(0) => \clkCnt250Hz1_carry__0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt250Hz2(20 downto 17),
      S(3) => \clkCnt250Hz1_carry__0_i_12_n_0\,
      S(2) => \clkCnt250Hz1_carry__0_i_13_n_0\,
      S(1) => \clkCnt250Hz1_carry__0_i_14_n_0\,
      S(0) => \clkCnt250Hz1_carry__0_i_15_n_0\
    );
\clkCnt250Hz1_carry__0_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => clkCnt250Hz1_carry_i_5_n_0,
      CO(3) => \clkCnt250Hz1_carry__0_i_7_n_0\,
      CO(2) => \clkCnt250Hz1_carry__0_i_7_n_1\,
      CO(1) => \clkCnt250Hz1_carry__0_i_7_n_2\,
      CO(0) => \clkCnt250Hz1_carry__0_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt250Hz2(16 downto 13),
      S(3) => \clkCnt250Hz1_carry__0_i_16_n_0\,
      S(2) => \clkCnt250Hz1_carry__0_i_17_n_0\,
      S(1) => \clkCnt250Hz1_carry__0_i_18_n_0\,
      S(0) => \clkCnt250Hz1_carry__0_i_19_n_0\
    );
\clkCnt250Hz1_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(24),
      O => \clkCnt250Hz1_carry__0_i_8_n_0\
    );
\clkCnt250Hz1_carry__0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(23),
      O => \clkCnt250Hz1_carry__0_i_9_n_0\
    );
\clkCnt250Hz1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz1_carry__0_n_0\,
      CO(3) => \NLW_clkCnt250Hz1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \clkCnt250Hz1_carry__1_n_1\,
      CO(1) => \clkCnt250Hz1_carry__1_n_2\,
      CO(0) => \clkCnt250Hz1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_clkCnt250Hz1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \clkCnt250Hz1_carry__1_i_1_n_0\,
      S(1) => \clkCnt250Hz1_carry__1_i_2_n_0\,
      S(0) => \clkCnt250Hz1_carry__1_i_3_n_0\
    );
\clkCnt250Hz1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clkCnt250Hz2(31),
      I1 => clkCnt250Hz2(30),
      O => \clkCnt250Hz1_carry__1_i_1_n_0\
    );
\clkCnt250Hz1_carry__1_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(27),
      O => \clkCnt250Hz1_carry__1_i_10_n_0\
    );
\clkCnt250Hz1_carry__1_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(26),
      O => \clkCnt250Hz1_carry__1_i_11_n_0\
    );
\clkCnt250Hz1_carry__1_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(25),
      O => \clkCnt250Hz1_carry__1_i_12_n_0\
    );
\clkCnt250Hz1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt250Hz2(28),
      I1 => clkCnt250Hz2(29),
      I2 => clkCnt250Hz2(27),
      O => \clkCnt250Hz1_carry__1_i_2_n_0\
    );
\clkCnt250Hz1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt250Hz2(25),
      I1 => clkCnt250Hz2(26),
      I2 => clkCnt250Hz2(24),
      O => \clkCnt250Hz1_carry__1_i_3_n_0\
    );
\clkCnt250Hz1_carry__1_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz1_carry__1_i_5_n_0\,
      CO(3 downto 2) => \NLW_clkCnt250Hz1_carry__1_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \clkCnt250Hz1_carry__1_i_4_n_2\,
      CO(0) => \clkCnt250Hz1_carry__1_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clkCnt250Hz1_carry__1_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => clkCnt250Hz2(31 downto 29),
      S(3) => '0',
      S(2) => \clkCnt250Hz1_carry__1_i_6_n_0\,
      S(1) => \clkCnt250Hz1_carry__1_i_7_n_0\,
      S(0) => \clkCnt250Hz1_carry__1_i_8_n_0\
    );
\clkCnt250Hz1_carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz1_carry__0_i_5_n_0\,
      CO(3) => \clkCnt250Hz1_carry__1_i_5_n_0\,
      CO(2) => \clkCnt250Hz1_carry__1_i_5_n_1\,
      CO(1) => \clkCnt250Hz1_carry__1_i_5_n_2\,
      CO(0) => \clkCnt250Hz1_carry__1_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt250Hz2(28 downto 25),
      S(3) => \clkCnt250Hz1_carry__1_i_9_n_0\,
      S(2) => \clkCnt250Hz1_carry__1_i_10_n_0\,
      S(1) => \clkCnt250Hz1_carry__1_i_11_n_0\,
      S(0) => \clkCnt250Hz1_carry__1_i_12_n_0\
    );
\clkCnt250Hz1_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(31),
      O => \clkCnt250Hz1_carry__1_i_6_n_0\
    );
\clkCnt250Hz1_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(30),
      O => \clkCnt250Hz1_carry__1_i_7_n_0\
    );
\clkCnt250Hz1_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(29),
      O => \clkCnt250Hz1_carry__1_i_8_n_0\
    );
\clkCnt250Hz1_carry__1_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(28),
      O => \clkCnt250Hz1_carry__1_i_9_n_0\
    );
clkCnt250Hz1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clkCnt250Hz2(10),
      I1 => clkCnt250Hz2(11),
      I2 => clkCnt250Hz2(9),
      O => clkCnt250Hz1_carry_i_1_n_0
    );
clkCnt250Hz1_carry_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(10),
      O => clkCnt250Hz1_carry_i_10_n_0
    );
clkCnt250Hz1_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(9),
      O => clkCnt250Hz1_carry_i_11_n_0
    );
clkCnt250Hz1_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(8),
      O => clkCnt250Hz1_carry_i_12_n_0
    );
clkCnt250Hz1_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(7),
      O => clkCnt250Hz1_carry_i_13_n_0
    );
clkCnt250Hz1_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(6),
      O => clkCnt250Hz1_carry_i_14_n_0
    );
clkCnt250Hz1_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(5),
      O => clkCnt250Hz1_carry_i_15_n_0
    );
clkCnt250Hz1_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(4),
      O => clkCnt250Hz1_carry_i_16_n_0
    );
clkCnt250Hz1_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(3),
      O => clkCnt250Hz1_carry_i_17_n_0
    );
clkCnt250Hz1_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(2),
      O => clkCnt250Hz1_carry_i_18_n_0
    );
clkCnt250Hz1_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(1),
      O => clkCnt250Hz1_carry_i_19_n_0
    );
clkCnt250Hz1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clkCnt250Hz2(6),
      I1 => clkCnt250Hz2(8),
      I2 => clkCnt250Hz2(7),
      O => clkCnt250Hz1_carry_i_2_n_0
    );
clkCnt250Hz1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clkCnt250Hz2(4),
      I1 => clkCnt250Hz2(5),
      I2 => clkCnt250Hz2(3),
      O => clkCnt250Hz1_carry_i_3_n_0
    );
clkCnt250Hz1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => clkCnt250Hz2(2),
      I1 => clkCnt250Hz_reg(0),
      I2 => clkCnt250Hz2(1),
      O => clkCnt250Hz1_carry_i_4_n_0
    );
clkCnt250Hz1_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => clkCnt250Hz1_carry_i_6_n_0,
      CO(3) => clkCnt250Hz1_carry_i_5_n_0,
      CO(2) => clkCnt250Hz1_carry_i_5_n_1,
      CO(1) => clkCnt250Hz1_carry_i_5_n_2,
      CO(0) => clkCnt250Hz1_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt250Hz2(12 downto 9),
      S(3) => clkCnt250Hz1_carry_i_8_n_0,
      S(2) => clkCnt250Hz1_carry_i_9_n_0,
      S(1) => clkCnt250Hz1_carry_i_10_n_0,
      S(0) => clkCnt250Hz1_carry_i_11_n_0
    );
clkCnt250Hz1_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => clkCnt250Hz1_carry_i_7_n_0,
      CO(3) => clkCnt250Hz1_carry_i_6_n_0,
      CO(2) => clkCnt250Hz1_carry_i_6_n_1,
      CO(1) => clkCnt250Hz1_carry_i_6_n_2,
      CO(0) => clkCnt250Hz1_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt250Hz2(8 downto 5),
      S(3) => clkCnt250Hz1_carry_i_12_n_0,
      S(2) => clkCnt250Hz1_carry_i_13_n_0,
      S(1) => clkCnt250Hz1_carry_i_14_n_0,
      S(0) => clkCnt250Hz1_carry_i_15_n_0
    );
clkCnt250Hz1_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clkCnt250Hz1_carry_i_7_n_0,
      CO(2) => clkCnt250Hz1_carry_i_7_n_1,
      CO(1) => clkCnt250Hz1_carry_i_7_n_2,
      CO(0) => clkCnt250Hz1_carry_i_7_n_3,
      CYINIT => clkCnt250Hz_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clkCnt250Hz2(4 downto 1),
      S(3) => clkCnt250Hz1_carry_i_16_n_0,
      S(2) => clkCnt250Hz1_carry_i_17_n_0,
      S(1) => clkCnt250Hz1_carry_i_18_n_0,
      S(0) => clkCnt250Hz1_carry_i_19_n_0
    );
clkCnt250Hz1_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(12),
      O => clkCnt250Hz1_carry_i_8_n_0
    );
clkCnt250Hz1_carry_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(11),
      O => clkCnt250Hz1_carry_i_9_n_0
    );
\clkCnt250Hz[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(0),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[0]_i_2_n_0\
    );
\clkCnt250Hz[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(3),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[0]_i_3_n_0\
    );
\clkCnt250Hz[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(2),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[0]_i_4_n_0\
    );
\clkCnt250Hz[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(1),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[0]_i_5_n_0\
    );
\clkCnt250Hz[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clkCnt250Hz_reg(0),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[0]_i_6_n_0\
    );
\clkCnt250Hz[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(15),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[12]_i_2_n_0\
    );
\clkCnt250Hz[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(14),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[12]_i_3_n_0\
    );
\clkCnt250Hz[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(13),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[12]_i_4_n_0\
    );
\clkCnt250Hz[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(12),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[12]_i_5_n_0\
    );
\clkCnt250Hz[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(19),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[16]_i_2_n_0\
    );
\clkCnt250Hz[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(18),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[16]_i_3_n_0\
    );
\clkCnt250Hz[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(17),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[16]_i_4_n_0\
    );
\clkCnt250Hz[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(16),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[16]_i_5_n_0\
    );
\clkCnt250Hz[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(23),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[20]_i_2_n_0\
    );
\clkCnt250Hz[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(22),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[20]_i_3_n_0\
    );
\clkCnt250Hz[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(21),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[20]_i_4_n_0\
    );
\clkCnt250Hz[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(20),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[20]_i_5_n_0\
    );
\clkCnt250Hz[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(27),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[24]_i_2_n_0\
    );
\clkCnt250Hz[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(26),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[24]_i_3_n_0\
    );
\clkCnt250Hz[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(25),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[24]_i_4_n_0\
    );
\clkCnt250Hz[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(24),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[24]_i_5_n_0\
    );
\clkCnt250Hz[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(31),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[28]_i_2_n_0\
    );
\clkCnt250Hz[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(30),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[28]_i_3_n_0\
    );
\clkCnt250Hz[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(29),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[28]_i_4_n_0\
    );
\clkCnt250Hz[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(28),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[28]_i_5_n_0\
    );
\clkCnt250Hz[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(7),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[4]_i_2_n_0\
    );
\clkCnt250Hz[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(6),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[4]_i_3_n_0\
    );
\clkCnt250Hz[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(5),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[4]_i_4_n_0\
    );
\clkCnt250Hz[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(4),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[4]_i_5_n_0\
    );
\clkCnt250Hz[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(11),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[8]_i_2_n_0\
    );
\clkCnt250Hz[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(10),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[8]_i_3_n_0\
    );
\clkCnt250Hz[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(9),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[8]_i_4_n_0\
    );
\clkCnt250Hz[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clkCnt250Hz_reg(8),
      I1 => \clkCnt250Hz1_carry__1_n_1\,
      O => \clkCnt250Hz[8]_i_5_n_0\
    );
\clkCnt250Hz_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[0]_i_1_n_7\,
      Q => clkCnt250Hz_reg(0)
    );
\clkCnt250Hz_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clkCnt250Hz_reg[0]_i_1_n_0\,
      CO(2) => \clkCnt250Hz_reg[0]_i_1_n_1\,
      CO(1) => \clkCnt250Hz_reg[0]_i_1_n_2\,
      CO(0) => \clkCnt250Hz_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \clkCnt250Hz[0]_i_2_n_0\,
      O(3) => \clkCnt250Hz_reg[0]_i_1_n_4\,
      O(2) => \clkCnt250Hz_reg[0]_i_1_n_5\,
      O(1) => \clkCnt250Hz_reg[0]_i_1_n_6\,
      O(0) => \clkCnt250Hz_reg[0]_i_1_n_7\,
      S(3) => \clkCnt250Hz[0]_i_3_n_0\,
      S(2) => \clkCnt250Hz[0]_i_4_n_0\,
      S(1) => \clkCnt250Hz[0]_i_5_n_0\,
      S(0) => \clkCnt250Hz[0]_i_6_n_0\
    );
\clkCnt250Hz_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[8]_i_1_n_5\,
      Q => clkCnt250Hz_reg(10)
    );
\clkCnt250Hz_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[8]_i_1_n_4\,
      Q => clkCnt250Hz_reg(11)
    );
\clkCnt250Hz_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[12]_i_1_n_7\,
      Q => clkCnt250Hz_reg(12)
    );
\clkCnt250Hz_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz_reg[8]_i_1_n_0\,
      CO(3) => \clkCnt250Hz_reg[12]_i_1_n_0\,
      CO(2) => \clkCnt250Hz_reg[12]_i_1_n_1\,
      CO(1) => \clkCnt250Hz_reg[12]_i_1_n_2\,
      CO(0) => \clkCnt250Hz_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt250Hz_reg[12]_i_1_n_4\,
      O(2) => \clkCnt250Hz_reg[12]_i_1_n_5\,
      O(1) => \clkCnt250Hz_reg[12]_i_1_n_6\,
      O(0) => \clkCnt250Hz_reg[12]_i_1_n_7\,
      S(3) => \clkCnt250Hz[12]_i_2_n_0\,
      S(2) => \clkCnt250Hz[12]_i_3_n_0\,
      S(1) => \clkCnt250Hz[12]_i_4_n_0\,
      S(0) => \clkCnt250Hz[12]_i_5_n_0\
    );
\clkCnt250Hz_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[12]_i_1_n_6\,
      Q => clkCnt250Hz_reg(13)
    );
\clkCnt250Hz_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[12]_i_1_n_5\,
      Q => clkCnt250Hz_reg(14)
    );
\clkCnt250Hz_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[12]_i_1_n_4\,
      Q => clkCnt250Hz_reg(15)
    );
\clkCnt250Hz_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[16]_i_1_n_7\,
      Q => clkCnt250Hz_reg(16)
    );
\clkCnt250Hz_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz_reg[12]_i_1_n_0\,
      CO(3) => \clkCnt250Hz_reg[16]_i_1_n_0\,
      CO(2) => \clkCnt250Hz_reg[16]_i_1_n_1\,
      CO(1) => \clkCnt250Hz_reg[16]_i_1_n_2\,
      CO(0) => \clkCnt250Hz_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt250Hz_reg[16]_i_1_n_4\,
      O(2) => \clkCnt250Hz_reg[16]_i_1_n_5\,
      O(1) => \clkCnt250Hz_reg[16]_i_1_n_6\,
      O(0) => \clkCnt250Hz_reg[16]_i_1_n_7\,
      S(3) => \clkCnt250Hz[16]_i_2_n_0\,
      S(2) => \clkCnt250Hz[16]_i_3_n_0\,
      S(1) => \clkCnt250Hz[16]_i_4_n_0\,
      S(0) => \clkCnt250Hz[16]_i_5_n_0\
    );
\clkCnt250Hz_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[16]_i_1_n_6\,
      Q => clkCnt250Hz_reg(17)
    );
\clkCnt250Hz_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[16]_i_1_n_5\,
      Q => clkCnt250Hz_reg(18)
    );
\clkCnt250Hz_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[16]_i_1_n_4\,
      Q => clkCnt250Hz_reg(19)
    );
\clkCnt250Hz_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[0]_i_1_n_6\,
      Q => clkCnt250Hz_reg(1)
    );
\clkCnt250Hz_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[20]_i_1_n_7\,
      Q => clkCnt250Hz_reg(20)
    );
\clkCnt250Hz_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz_reg[16]_i_1_n_0\,
      CO(3) => \clkCnt250Hz_reg[20]_i_1_n_0\,
      CO(2) => \clkCnt250Hz_reg[20]_i_1_n_1\,
      CO(1) => \clkCnt250Hz_reg[20]_i_1_n_2\,
      CO(0) => \clkCnt250Hz_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt250Hz_reg[20]_i_1_n_4\,
      O(2) => \clkCnt250Hz_reg[20]_i_1_n_5\,
      O(1) => \clkCnt250Hz_reg[20]_i_1_n_6\,
      O(0) => \clkCnt250Hz_reg[20]_i_1_n_7\,
      S(3) => \clkCnt250Hz[20]_i_2_n_0\,
      S(2) => \clkCnt250Hz[20]_i_3_n_0\,
      S(1) => \clkCnt250Hz[20]_i_4_n_0\,
      S(0) => \clkCnt250Hz[20]_i_5_n_0\
    );
\clkCnt250Hz_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[20]_i_1_n_6\,
      Q => clkCnt250Hz_reg(21)
    );
\clkCnt250Hz_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[20]_i_1_n_5\,
      Q => clkCnt250Hz_reg(22)
    );
\clkCnt250Hz_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[20]_i_1_n_4\,
      Q => clkCnt250Hz_reg(23)
    );
\clkCnt250Hz_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[24]_i_1_n_7\,
      Q => clkCnt250Hz_reg(24)
    );
\clkCnt250Hz_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz_reg[20]_i_1_n_0\,
      CO(3) => \clkCnt250Hz_reg[24]_i_1_n_0\,
      CO(2) => \clkCnt250Hz_reg[24]_i_1_n_1\,
      CO(1) => \clkCnt250Hz_reg[24]_i_1_n_2\,
      CO(0) => \clkCnt250Hz_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt250Hz_reg[24]_i_1_n_4\,
      O(2) => \clkCnt250Hz_reg[24]_i_1_n_5\,
      O(1) => \clkCnt250Hz_reg[24]_i_1_n_6\,
      O(0) => \clkCnt250Hz_reg[24]_i_1_n_7\,
      S(3) => \clkCnt250Hz[24]_i_2_n_0\,
      S(2) => \clkCnt250Hz[24]_i_3_n_0\,
      S(1) => \clkCnt250Hz[24]_i_4_n_0\,
      S(0) => \clkCnt250Hz[24]_i_5_n_0\
    );
\clkCnt250Hz_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[24]_i_1_n_6\,
      Q => clkCnt250Hz_reg(25)
    );
\clkCnt250Hz_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[24]_i_1_n_5\,
      Q => clkCnt250Hz_reg(26)
    );
\clkCnt250Hz_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[24]_i_1_n_4\,
      Q => clkCnt250Hz_reg(27)
    );
\clkCnt250Hz_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[28]_i_1_n_7\,
      Q => clkCnt250Hz_reg(28)
    );
\clkCnt250Hz_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz_reg[24]_i_1_n_0\,
      CO(3) => \NLW_clkCnt250Hz_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clkCnt250Hz_reg[28]_i_1_n_1\,
      CO(1) => \clkCnt250Hz_reg[28]_i_1_n_2\,
      CO(0) => \clkCnt250Hz_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt250Hz_reg[28]_i_1_n_4\,
      O(2) => \clkCnt250Hz_reg[28]_i_1_n_5\,
      O(1) => \clkCnt250Hz_reg[28]_i_1_n_6\,
      O(0) => \clkCnt250Hz_reg[28]_i_1_n_7\,
      S(3) => \clkCnt250Hz[28]_i_2_n_0\,
      S(2) => \clkCnt250Hz[28]_i_3_n_0\,
      S(1) => \clkCnt250Hz[28]_i_4_n_0\,
      S(0) => \clkCnt250Hz[28]_i_5_n_0\
    );
\clkCnt250Hz_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[28]_i_1_n_6\,
      Q => clkCnt250Hz_reg(29)
    );
\clkCnt250Hz_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[0]_i_1_n_5\,
      Q => clkCnt250Hz_reg(2)
    );
\clkCnt250Hz_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[28]_i_1_n_5\,
      Q => clkCnt250Hz_reg(30)
    );
\clkCnt250Hz_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[28]_i_1_n_4\,
      Q => clkCnt250Hz_reg(31)
    );
\clkCnt250Hz_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[0]_i_1_n_4\,
      Q => clkCnt250Hz_reg(3)
    );
\clkCnt250Hz_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[4]_i_1_n_7\,
      Q => clkCnt250Hz_reg(4)
    );
\clkCnt250Hz_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz_reg[0]_i_1_n_0\,
      CO(3) => \clkCnt250Hz_reg[4]_i_1_n_0\,
      CO(2) => \clkCnt250Hz_reg[4]_i_1_n_1\,
      CO(1) => \clkCnt250Hz_reg[4]_i_1_n_2\,
      CO(0) => \clkCnt250Hz_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt250Hz_reg[4]_i_1_n_4\,
      O(2) => \clkCnt250Hz_reg[4]_i_1_n_5\,
      O(1) => \clkCnt250Hz_reg[4]_i_1_n_6\,
      O(0) => \clkCnt250Hz_reg[4]_i_1_n_7\,
      S(3) => \clkCnt250Hz[4]_i_2_n_0\,
      S(2) => \clkCnt250Hz[4]_i_3_n_0\,
      S(1) => \clkCnt250Hz[4]_i_4_n_0\,
      S(0) => \clkCnt250Hz[4]_i_5_n_0\
    );
\clkCnt250Hz_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[4]_i_1_n_6\,
      Q => clkCnt250Hz_reg(5)
    );
\clkCnt250Hz_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[4]_i_1_n_5\,
      Q => clkCnt250Hz_reg(6)
    );
\clkCnt250Hz_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[4]_i_1_n_4\,
      Q => clkCnt250Hz_reg(7)
    );
\clkCnt250Hz_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[8]_i_1_n_7\,
      Q => clkCnt250Hz_reg(8)
    );
\clkCnt250Hz_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkCnt250Hz_reg[4]_i_1_n_0\,
      CO(3) => \clkCnt250Hz_reg[8]_i_1_n_0\,
      CO(2) => \clkCnt250Hz_reg[8]_i_1_n_1\,
      CO(1) => \clkCnt250Hz_reg[8]_i_1_n_2\,
      CO(0) => \clkCnt250Hz_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkCnt250Hz_reg[8]_i_1_n_4\,
      O(2) => \clkCnt250Hz_reg[8]_i_1_n_5\,
      O(1) => \clkCnt250Hz_reg[8]_i_1_n_6\,
      O(0) => \clkCnt250Hz_reg[8]_i_1_n_7\,
      S(3) => \clkCnt250Hz[8]_i_2_n_0\,
      S(2) => \clkCnt250Hz[8]_i_3_n_0\,
      S(1) => \clkCnt250Hz[8]_i_4_n_0\,
      S(0) => \clkCnt250Hz[8]_i_5_n_0\
    );
\clkCnt250Hz_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100MHz_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \clkCnt250Hz_reg[8]_i_1_n_6\,
      Q => clkCnt250Hz_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microram_sim_inc is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 0 to 0 );
    BCD_Num : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_data_reg_0 : out STD_LOGIC;
    mem_data_reg_1 : out STD_LOGIC;
    mem_data_reg_2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \temp_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \PC_reg[0]\ : out STD_LOGIC;
    \CurrState_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \A_reg[7]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \B_reg[7]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    mem_data_reg_3 : out STD_LOGIC;
    A_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    mem_data_reg_4 : out STD_LOGIC;
    \sevport2_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    mem_data_reg_5 : out STD_LOGIC;
    mem_data_reg_6 : out STD_LOGIC;
    mem_data_reg_7 : out STD_LOGIC;
    mem_data_reg_8 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mem_data_reg_9 : out STD_LOGIC;
    mem_data_reg_10 : out STD_LOGIC;
    mem_data_reg_11 : out STD_LOGIC;
    mem_data_reg_12 : out STD_LOGIC;
    mem_data_reg_13 : out STD_LOGIC;
    mem_data_reg_14 : out STD_LOGIC;
    mem_data_reg_15 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_data_reg_16 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_data_reg_17 : out STD_LOGIC;
    clk1Hz_BUFG : in STD_LOGIC;
    \CurrState_reg[0]\ : in STD_LOGIC;
    \CurrState_reg[0]_0\ : in STD_LOGIC;
    \IR_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \A_reg[4]\ : in STD_LOGIC;
    \IR_reg[1]\ : in STD_LOGIC;
    \IR_reg[0]_0\ : in STD_LOGIC;
    \B_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \B_reg[4]\ : in STD_LOGIC;
    \IR_reg[1]_0\ : in STD_LOGIC;
    \IR_reg[7]\ : in STD_LOGIC;
    \IR_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \A_reg[3]\ : in STD_LOGIC;
    \B_reg[3]\ : in STD_LOGIC;
    \A_reg[2]\ : in STD_LOGIC;
    \B_reg[2]\ : in STD_LOGIC;
    \IR_reg[5]\ : in STD_LOGIC;
    \A_reg[1]\ : in STD_LOGIC;
    \B_reg[0]\ : in STD_LOGIC;
    \CurrState_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \IR_reg[6]\ : in STD_LOGIC;
    \IR_reg[7]_1\ : in STD_LOGIC;
    \IR_reg[5]_0\ : in STD_LOGIC;
    \B_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    Inport0_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Inport1_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \MDR_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \PC_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end microram_sim_inc;

architecture STRUCTURE of microram_sim_inc is
  signal ADDRESS : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^a_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^bcd_num\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \CurrState[1]_i_2_n_0\ : STD_LOGIC;
  signal \^doado\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^pc_reg[0]\ : STD_LOGIC;
  signal RAM_DATA_OUT : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal WE : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^mem_data_reg_0\ : STD_LOGIC;
  signal \^mem_data_reg_1\ : STD_LOGIC;
  signal \^mem_data_reg_11\ : STD_LOGIC;
  signal \^mem_data_reg_13\ : STD_LOGIC;
  signal \^mem_data_reg_2\ : STD_LOGIC;
  signal \^mem_data_reg_3\ : STD_LOGIC;
  signal \^mem_data_reg_6\ : STD_LOGIC;
  signal mem_data_reg_i_19_n_0 : STD_LOGIC;
  signal mem_data_reg_i_20_n_0 : STD_LOGIC;
  signal mem_data_reg_i_23_n_0 : STD_LOGIC;
  signal mem_data_reg_i_24_n_0 : STD_LOGIC;
  signal mem_data_reg_i_25_n_0 : STD_LOGIC;
  signal mem_data_reg_i_27_n_0 : STD_LOGIC;
  signal mem_data_reg_i_29_n_0 : STD_LOGIC;
  signal mem_data_reg_i_30_n_0 : STD_LOGIC;
  signal mem_data_reg_i_31_n_0 : STD_LOGIC;
  signal mem_data_reg_i_32_n_0 : STD_LOGIC;
  signal mem_data_reg_i_33_n_0 : STD_LOGIC;
  signal mem_data_reg_i_34_n_0 : STD_LOGIC;
  signal mem_data_reg_i_35_n_0 : STD_LOGIC;
  signal mem_data_reg_i_36_n_0 : STD_LOGIC;
  signal mem_data_reg_i_37_n_0 : STD_LOGIC;
  signal mem_data_reg_i_39_n_0 : STD_LOGIC;
  signal mem_data_reg_i_40_n_0 : STD_LOGIC;
  signal mem_data_reg_i_41_n_0 : STD_LOGIC;
  signal mem_data_reg_i_42_n_0 : STD_LOGIC;
  signal mem_data_reg_i_43_n_0 : STD_LOGIC;
  signal mem_data_reg_i_44_n_0 : STD_LOGIC;
  signal mem_data_reg_i_46_n_0 : STD_LOGIC;
  signal mem_data_reg_i_48_n_0 : STD_LOGIC;
  signal mem_data_reg_i_52_n_0 : STD_LOGIC;
  signal mem_data_reg_i_53_n_0 : STD_LOGIC;
  signal mem_data_reg_i_54_n_0 : STD_LOGIC;
  signal mem_data_reg_i_58_n_0 : STD_LOGIC;
  signal mem_data_reg_i_60_n_0 : STD_LOGIC;
  signal mem_data_reg_i_61_n_0 : STD_LOGIC;
  signal mem_data_reg_i_62_n_0 : STD_LOGIC;
  signal mem_data_reg_i_63_n_0 : STD_LOGIC;
  signal mem_data_reg_i_64_n_0 : STD_LOGIC;
  signal mem_data_reg_i_68_n_0 : STD_LOGIC;
  signal mem_data_reg_i_69_n_0 : STD_LOGIC;
  signal mem_data_reg_i_70_n_0 : STD_LOGIC;
  signal mem_data_reg_i_79_n_1 : STD_LOGIC;
  signal mem_data_reg_i_79_n_2 : STD_LOGIC;
  signal mem_data_reg_i_79_n_3 : STD_LOGIC;
  signal mem_data_reg_i_80_n_0 : STD_LOGIC;
  signal mem_data_reg_i_80_n_1 : STD_LOGIC;
  signal mem_data_reg_i_80_n_2 : STD_LOGIC;
  signal mem_data_reg_i_80_n_3 : STD_LOGIC;
  signal mem_data_reg_i_81_n_0 : STD_LOGIC;
  signal mem_data_reg_i_82_n_0 : STD_LOGIC;
  signal mem_data_reg_i_83_n_0 : STD_LOGIC;
  signal mem_data_reg_i_84_n_0 : STD_LOGIC;
  signal mem_data_reg_i_85_n_0 : STD_LOGIC;
  signal mem_data_reg_i_86_n_0 : STD_LOGIC;
  signal mem_data_reg_i_87_n_0 : STD_LOGIC;
  signal mem_data_reg_i_88_n_0 : STD_LOGIC;
  signal mem_data_reg_i_89_n_0 : STD_LOGIC;
  signal minusOp_carry_i_10_n_0 : STD_LOGIC;
  signal minusOp_carry_i_11_n_0 : STD_LOGIC;
  signal minusOp_carry_i_9_n_0 : STD_LOGIC;
  signal NLW_mem_data_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_mem_data_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_data_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_data_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_data_reg_i_79_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CurrState[1]_i_2\ : label is "soft_lutpair14";
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of mem_data_reg : label is "INDEPENDENT";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_data_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_data_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_data_reg : label is 4096;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_data_reg : label is "mem_data";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_data_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_data_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_data_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_data_reg : label is 7;
  attribute SOFT_HLUTNM of mem_data_reg_i_22 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of mem_data_reg_i_37 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of mem_data_reg_i_42 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of mem_data_reg_i_44 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of mem_data_reg_i_49 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of mem_data_reg_i_51 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of mem_data_reg_i_52 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of mem_data_reg_i_53 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of mem_data_reg_i_55 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of mem_data_reg_i_56 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of mem_data_reg_i_60 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of mem_data_reg_i_64 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of mem_data_reg_i_66 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of mem_data_reg_i_70 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of mem_data_reg_i_74 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of mem_data_reg_i_76 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of minusOp_carry_i_10 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sevport0[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sevport0[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sevport0[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sevport0[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sevport0[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sevport0[6]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sevport1[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sevport1[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sevport1[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sevport1[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sevport1[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sevport1[6]_i_1\ : label is "soft_lutpair9";
begin
  A_0(6 downto 0) <= \^a_0\(6 downto 0);
  BCD_Num(3 downto 0) <= \^bcd_num\(3 downto 0);
  DOADO(0) <= \^doado\(0);
  \PC_reg[0]\ <= \^pc_reg[0]\;
  mem_data_reg_0 <= \^mem_data_reg_0\;
  mem_data_reg_1 <= \^mem_data_reg_1\;
  mem_data_reg_11 <= \^mem_data_reg_11\;
  mem_data_reg_13 <= \^mem_data_reg_13\;
  mem_data_reg_2 <= \^mem_data_reg_2\;
  mem_data_reg_3 <= \^mem_data_reg_3\;
  mem_data_reg_6 <= \^mem_data_reg_6\;
\A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]\,
      I1 => \^mem_data_reg_2\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \IR_reg[1]\,
      O => \A_reg[7]\(0)
    );
\A[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \IR_reg[0]\,
      I1 => \^mem_data_reg_1\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \IR_reg[1]\,
      O => \A_reg[7]\(1)
    );
\A[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]\,
      I1 => \^mem_data_reg_0\,
      I2 => Q(3),
      I3 => \A_reg[1]\,
      I4 => \IR_reg[1]\,
      O => \A_reg[7]\(2)
    );
\A[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]\,
      I1 => \^bcd_num\(0),
      I2 => Q(4),
      I3 => \A_reg[2]\,
      I4 => \IR_reg[1]\,
      O => \A_reg[7]\(3)
    );
\A[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]\,
      I1 => \^bcd_num\(1),
      I2 => Q(5),
      I3 => \A_reg[3]\,
      I4 => \IR_reg[1]\,
      O => \A_reg[7]\(4)
    );
\A[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]\,
      I1 => \^bcd_num\(2),
      I2 => Q(6),
      I3 => \A_reg[4]\,
      I4 => \IR_reg[1]\,
      O => \A_reg[7]\(5)
    );
\A[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \IR_reg[0]\,
      I1 => \^bcd_num\(3),
      I2 => Q(7),
      I3 => \A_reg[4]\,
      I4 => Q(6),
      I5 => \IR_reg[1]\,
      O => \A_reg[7]\(6)
    );
\B[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]_0\,
      I1 => \^mem_data_reg_2\,
      I2 => \B_reg[7]_0\(1),
      I3 => \B_reg[7]_0\(0),
      I4 => \IR_reg[1]_0\,
      O => \B_reg[7]\(0)
    );
\B[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \IR_reg[0]_0\,
      I1 => \^mem_data_reg_1\,
      I2 => \B_reg[7]_0\(2),
      I3 => \B_reg[7]_0\(0),
      I4 => \B_reg[7]_0\(1),
      I5 => \IR_reg[1]_0\,
      O => \B_reg[7]\(1)
    );
\B[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]_0\,
      I1 => \^mem_data_reg_0\,
      I2 => \B_reg[7]_0\(3),
      I3 => \B_reg[0]\,
      I4 => \IR_reg[1]_0\,
      O => \B_reg[7]\(2)
    );
\B[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]_0\,
      I1 => \^bcd_num\(0),
      I2 => \B_reg[7]_0\(4),
      I3 => \B_reg[2]\,
      I4 => \IR_reg[1]_0\,
      O => \B_reg[7]\(3)
    );
\B[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]_0\,
      I1 => \^bcd_num\(1),
      I2 => \B_reg[7]_0\(5),
      I3 => \B_reg[3]\,
      I4 => \IR_reg[1]_0\,
      O => \B_reg[7]\(4)
    );
\B[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44444"
    )
        port map (
      I0 => \IR_reg[0]_0\,
      I1 => \^bcd_num\(2),
      I2 => \B_reg[7]_0\(6),
      I3 => \B_reg[4]\,
      I4 => \IR_reg[1]_0\,
      O => \B_reg[7]\(5)
    );
\B[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \IR_reg[0]_0\,
      I1 => \^bcd_num\(3),
      I2 => \B_reg[7]_0\(7),
      I3 => \B_reg[7]_0\(6),
      I4 => \B_reg[4]\,
      I5 => \IR_reg[1]_0\,
      O => \B_reg[7]\(6)
    );
\CurrState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAAAAAAAAA8"
    )
        port map (
      I0 => \^pc_reg[0]\,
      I1 => \CurrState[1]_i_2_n_0\,
      I2 => \^bcd_num\(0),
      I3 => \^bcd_num\(3),
      I4 => \^bcd_num\(2),
      I5 => \^bcd_num\(1),
      O => \CurrState_reg[1]\(0)
    );
\CurrState[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => RAM_DATA_OUT(3),
      I1 => \CurrState_reg[1]_0\(0),
      I2 => \CurrState_reg[1]_0\(1),
      O => \CurrState[1]_i_2_n_0\
    );
\PC[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000009FFFFFFFF"
    )
        port map (
      I0 => \^bcd_num\(1),
      I1 => \^bcd_num\(2),
      I2 => \^bcd_num\(3),
      I3 => \^bcd_num\(0),
      I4 => \CurrState[1]_i_2_n_0\,
      I5 => \^pc_reg[0]\,
      O => E(0)
    );
mem_data_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00F000F000F000F000F000F000F000F000F000F000F000080034006000F100F0",
      INIT_01 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_02 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_03 => X"00F000F000F000F000F000F000F000F000F000F0000700070007000700F000F0",
      INIT_04 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_05 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_06 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_07 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_08 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_09 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_0A => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_0B => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_0C => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_0D => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_0E => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_0F => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_10 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_11 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_12 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_13 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_14 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_15 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_16 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_17 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_18 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_19 => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_1A => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_1B => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_1C => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_1D => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_1E => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_1F => X"00F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12 downto 4) => ADDRESS(8 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk1Hz_BUFG,
      CLKBWRCLK => '0',
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 4) => \^bcd_num\(3 downto 0),
      DIADI(3) => \^mem_data_reg_0\,
      DIADI(2) => \^mem_data_reg_1\,
      DIADI(1) => \^mem_data_reg_2\,
      DIADI(0) => \CurrState_reg[0]\,
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 8) => NLW_mem_data_reg_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 1) => RAM_DATA_OUT(7 downto 1),
      DOADO(0) => \^doado\(0),
      DOBDO(15 downto 0) => NLW_mem_data_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_data_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_data_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WE,
      WEA(0) => WE,
      WEBWE(3 downto 0) => B"0000"
    );
mem_data_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \IR_reg[7]_0\(1),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \PC_reg[8]\(8),
      O => ADDRESS(8)
    );
mem_data_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF51"
    )
        port map (
      I0 => mem_data_reg_i_19_n_0,
      I1 => mem_data_reg_i_20_n_0,
      I2 => \IR_reg[5]_0\,
      I3 => \^pc_reg[0]\,
      I4 => mem_data_reg_i_23_n_0,
      I5 => mem_data_reg_i_24_n_0,
      O => \^bcd_num\(3)
    );
mem_data_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF2F00"
    )
        port map (
      I0 => mem_data_reg_i_25_n_0,
      I1 => \IR_reg[7]\,
      I2 => mem_data_reg_i_27_n_0,
      I3 => \^mem_data_reg_3\,
      I4 => mem_data_reg_i_29_n_0,
      I5 => mem_data_reg_i_30_n_0,
      O => \^bcd_num\(2)
    );
mem_data_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF51"
    )
        port map (
      I0 => mem_data_reg_i_31_n_0,
      I1 => mem_data_reg_i_32_n_0,
      I2 => mem_data_reg_i_33_n_0,
      I3 => \^pc_reg[0]\,
      I4 => mem_data_reg_i_34_n_0,
      I5 => mem_data_reg_i_35_n_0,
      O => \^bcd_num\(1)
    );
mem_data_reg_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEAAAEA"
    )
        port map (
      I0 => mem_data_reg_i_36_n_0,
      I1 => \^mem_data_reg_3\,
      I2 => mem_data_reg_i_37_n_0,
      I3 => \IR_reg[7]_0\(7),
      I4 => \IR_reg[5]\,
      I5 => mem_data_reg_i_39_n_0,
      O => \^bcd_num\(0)
    );
mem_data_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFE0FFEF00E000"
    )
        port map (
      I0 => mem_data_reg_i_40_n_0,
      I1 => mem_data_reg_i_41_n_0,
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \CurrState_reg[1]_0\(1),
      I4 => mem_data_reg_i_42_n_0,
      I5 => RAM_DATA_OUT(3),
      O => \^mem_data_reg_0\
    );
mem_data_reg_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEAAAEA"
    )
        port map (
      I0 => mem_data_reg_i_43_n_0,
      I1 => \^mem_data_reg_3\,
      I2 => mem_data_reg_i_44_n_0,
      I3 => \IR_reg[7]_0\(7),
      I4 => \IR_reg[6]\,
      I5 => mem_data_reg_i_46_n_0,
      O => \^mem_data_reg_1\
    );
mem_data_reg_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \IR_reg[7]_1\,
      I1 => mem_data_reg_i_48_n_0,
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \^mem_data_reg_6\,
      I4 => \CurrState_reg[1]_0\(1),
      I5 => RAM_DATA_OUT(1),
      O => \^mem_data_reg_2\
    );
mem_data_reg_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \IR_reg[7]_0\(7),
      I1 => \IR_reg[7]_0\(4),
      I2 => mem_data_reg_i_52_n_0,
      I3 => \IR_reg[7]_0\(2),
      I4 => \IR_reg[7]_0\(3),
      I5 => mem_data_reg_i_53_n_0,
      O => WE
    );
mem_data_reg_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => \B_reg[7]_0\(7),
      I1 => \IR_reg[7]_0\(0),
      I2 => Q(7),
      I3 => \IR_reg[7]_0\(7),
      I4 => \^mem_data_reg_3\,
      O => mem_data_reg_i_19_n_0
    );
mem_data_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \MDR_reg[7]\(7),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \PC_reg[8]\(7),
      O => ADDRESS(7)
    );
mem_data_reg_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD2FFFFFF"
    )
        port map (
      I0 => mem_data_reg_i_54_n_0,
      I1 => \^a_0\(6),
      I2 => \^mem_data_reg_13\,
      I3 => \IR_reg[7]_0\(6),
      I4 => \IR_reg[7]_0\(5),
      I5 => \IR_reg[7]_0\(4),
      O => mem_data_reg_i_20_n_0
    );
mem_data_reg_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \CurrState_reg[1]_0\(1),
      I1 => \CurrState_reg[1]_0\(0),
      O => \^pc_reg[0]\
    );
mem_data_reg_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => Inport0_IBUF(7),
      I1 => \IR_reg[7]_0\(1),
      I2 => Inport1_IBUF(7),
      I3 => mem_data_reg_i_58_n_0,
      I4 => RAM_DATA_OUT(7),
      I5 => \^mem_data_reg_3\,
      O => mem_data_reg_i_23_n_0
    );
mem_data_reg_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005555303F5555"
    )
        port map (
      I0 => RAM_DATA_OUT(7),
      I1 => \B_reg[7]_0\(7),
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(7),
      I4 => \CurrState_reg[1]_0\(1),
      I5 => \CurrState_reg[1]_0\(0),
      O => mem_data_reg_i_24_n_0
    );
mem_data_reg_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3B3737333FFFF3"
    )
        port map (
      I0 => mem_data_reg_i_54_n_0,
      I1 => \IR_reg[7]_0\(6),
      I2 => \IR_reg[7]_0\(4),
      I3 => \B_reg[7]_0\(6),
      I4 => \^a_0\(6),
      I5 => \IR_reg[7]_0\(5),
      O => mem_data_reg_i_25_n_0
    );
mem_data_reg_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \IR_reg[7]_0\(7),
      I1 => Q(6),
      I2 => \IR_reg[7]_0\(0),
      I3 => \B_reg[7]_0\(6),
      O => mem_data_reg_i_27_n_0
    );
mem_data_reg_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0507050705070505"
    )
        port map (
      I0 => mem_data_reg_i_58_n_0,
      I1 => \IR_reg[7]_0\(3),
      I2 => \IR_reg[7]_0\(2),
      I3 => \IR_reg[7]_0\(1),
      I4 => \IR_reg[7]_0\(7),
      I5 => mem_data_reg_i_60_n_0,
      O => \^mem_data_reg_3\
    );
mem_data_reg_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F777F7F7F777777"
    )
        port map (
      I0 => \CurrState_reg[1]_0\(0),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \^mem_data_reg_3\,
      I3 => RAM_DATA_OUT(6),
      I4 => mem_data_reg_i_58_n_0,
      I5 => mem_data_reg_i_61_n_0,
      O => mem_data_reg_i_29_n_0
    );
mem_data_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \MDR_reg[7]\(6),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \PC_reg[8]\(6),
      O => ADDRESS(6)
    );
mem_data_reg_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005555303F5555"
    )
        port map (
      I0 => RAM_DATA_OUT(6),
      I1 => \B_reg[7]_0\(6),
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(6),
      I4 => \CurrState_reg[1]_0\(1),
      I5 => \CurrState_reg[1]_0\(0),
      O => mem_data_reg_i_30_n_0
    );
mem_data_reg_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => \B_reg[7]_0\(5),
      I1 => \IR_reg[7]_0\(0),
      I2 => Q(5),
      I3 => \IR_reg[7]_0\(7),
      I4 => \^mem_data_reg_3\,
      O => mem_data_reg_i_31_n_0
    );
mem_data_reg_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3C9FCC9FFFFFFFF"
    )
        port map (
      I0 => \B_reg[7]_0\(5),
      I1 => \^a_0\(5),
      I2 => \IR_reg[7]_0\(4),
      I3 => \IR_reg[7]_0\(5),
      I4 => mem_data_reg_i_62_n_0,
      I5 => \IR_reg[7]_0\(6),
      O => mem_data_reg_i_32_n_0
    );
mem_data_reg_i_33: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \IR_reg[7]_0\(6),
      I1 => mem_data_reg_i_63_n_0,
      I2 => \IR_reg[7]_0\(7),
      O => mem_data_reg_i_33_n_0
    );
mem_data_reg_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => Inport0_IBUF(5),
      I1 => \IR_reg[7]_0\(1),
      I2 => Inport1_IBUF(5),
      I3 => mem_data_reg_i_58_n_0,
      I4 => RAM_DATA_OUT(5),
      I5 => \^mem_data_reg_3\,
      O => mem_data_reg_i_34_n_0
    );
mem_data_reg_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005555303F5555"
    )
        port map (
      I0 => RAM_DATA_OUT(5),
      I1 => \B_reg[7]_0\(5),
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(5),
      I4 => \CurrState_reg[1]_0\(1),
      I5 => \CurrState_reg[1]_0\(0),
      O => mem_data_reg_i_35_n_0
    );
mem_data_reg_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F777F7F7F777777"
    )
        port map (
      I0 => \CurrState_reg[1]_0\(0),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \^mem_data_reg_3\,
      I3 => RAM_DATA_OUT(4),
      I4 => mem_data_reg_i_58_n_0,
      I5 => mem_data_reg_i_64_n_0,
      O => mem_data_reg_i_36_n_0
    );
mem_data_reg_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_reg[7]_0\(4),
      I1 => \IR_reg[7]_0\(0),
      I2 => Q(4),
      O => mem_data_reg_i_37_n_0
    );
mem_data_reg_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005555303F5555"
    )
        port map (
      I0 => RAM_DATA_OUT(4),
      I1 => \B_reg[7]_0\(4),
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(4),
      I4 => \CurrState_reg[1]_0\(1),
      I5 => \CurrState_reg[1]_0\(0),
      O => mem_data_reg_i_39_n_0
    );
mem_data_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \MDR_reg[7]\(5),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \PC_reg[8]\(5),
      O => ADDRESS(5)
    );
mem_data_reg_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => Inport0_IBUF(3),
      I1 => \IR_reg[7]_0\(1),
      I2 => Inport1_IBUF(3),
      I3 => mem_data_reg_i_58_n_0,
      I4 => RAM_DATA_OUT(3),
      I5 => \^mem_data_reg_3\,
      O => mem_data_reg_i_40_n_0
    );
mem_data_reg_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \^mem_data_reg_3\,
      I1 => mem_data_reg_i_42_n_0,
      I2 => \IR_reg[7]_0\(7),
      I3 => mem_data_reg_i_68_n_0,
      I4 => \IR_reg[7]_0\(6),
      I5 => mem_data_reg_i_69_n_0,
      O => mem_data_reg_i_41_n_0
    );
mem_data_reg_i_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_reg[7]_0\(3),
      I1 => \IR_reg[7]_0\(0),
      I2 => Q(3),
      O => mem_data_reg_i_42_n_0
    );
mem_data_reg_i_43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F777F7F7F777777"
    )
        port map (
      I0 => \CurrState_reg[1]_0\(0),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \^mem_data_reg_3\,
      I3 => RAM_DATA_OUT(2),
      I4 => mem_data_reg_i_58_n_0,
      I5 => mem_data_reg_i_70_n_0,
      O => mem_data_reg_i_43_n_0
    );
mem_data_reg_i_44: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_reg[7]_0\(2),
      I1 => \IR_reg[7]_0\(0),
      I2 => Q(2),
      O => mem_data_reg_i_44_n_0
    );
mem_data_reg_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005555303F5555"
    )
        port map (
      I0 => RAM_DATA_OUT(2),
      I1 => \B_reg[7]_0\(2),
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(2),
      I4 => \CurrState_reg[1]_0\(1),
      I5 => \CurrState_reg[1]_0\(0),
      O => mem_data_reg_i_46_n_0
    );
mem_data_reg_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => Inport0_IBUF(1),
      I1 => \IR_reg[7]_0\(1),
      I2 => Inport1_IBUF(1),
      I3 => mem_data_reg_i_58_n_0,
      I4 => RAM_DATA_OUT(1),
      I5 => \^mem_data_reg_3\,
      O => mem_data_reg_i_48_n_0
    );
mem_data_reg_i_49: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_reg[7]_0\(1),
      I1 => \IR_reg[7]_0\(0),
      I2 => Q(1),
      O => \^mem_data_reg_6\
    );
mem_data_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \MDR_reg[7]\(4),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \PC_reg[8]\(4),
      O => ADDRESS(4)
    );
mem_data_reg_i_51: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_reg[7]_0\(0),
      I1 => \IR_reg[7]_0\(0),
      I2 => Q(0),
      O => \^mem_data_reg_11\
    );
mem_data_reg_i_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \IR_reg[7]_0\(6),
      I1 => \IR_reg[7]_0\(5),
      O => mem_data_reg_i_52_n_0
    );
mem_data_reg_i_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \CurrState_reg[1]_0\(1),
      I1 => \CurrState_reg[1]_0\(0),
      O => mem_data_reg_i_53_n_0
    );
mem_data_reg_i_54: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^a_0\(4),
      I1 => \^a_0\(2),
      I2 => \^a_0\(0),
      I3 => \^a_0\(1),
      I4 => \^a_0\(3),
      I5 => \^a_0\(5),
      O => mem_data_reg_i_54_n_0
    );
mem_data_reg_i_55: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => minusOp_carry_i_11_n_0,
      I1 => \B_reg[7]_0\(7),
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(7),
      O => \^mem_data_reg_13\
    );
mem_data_reg_i_56: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC99FC59"
    )
        port map (
      I0 => \IR_reg[7]_0\(4),
      I1 => Q(7),
      I2 => \IR_reg[7]_0\(0),
      I3 => \B_reg[7]_0\(7),
      I4 => minusOp_carry_i_11_n_0,
      O => mem_data_reg_12
    );
mem_data_reg_i_58: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \IR_reg[7]_0\(3),
      I1 => \IR_reg[7]_0\(7),
      I2 => \IR_reg[7]_0\(4),
      I3 => \IR_reg[7]_0\(6),
      I4 => \IR_reg[7]_0\(5),
      O => mem_data_reg_i_58_n_0
    );
mem_data_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \MDR_reg[7]\(3),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \PC_reg[8]\(3),
      O => ADDRESS(3)
    );
mem_data_reg_i_60: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \IR_reg[7]_0\(5),
      I1 => \IR_reg[7]_0\(6),
      I2 => \IR_reg[7]_0\(4),
      O => mem_data_reg_i_60_n_0
    );
mem_data_reg_i_61: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Inport1_IBUF(6),
      I1 => \IR_reg[7]_0\(1),
      I2 => Inport0_IBUF(6),
      O => mem_data_reg_i_61_n_0
    );
mem_data_reg_i_62: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^a_0\(3),
      I1 => \^a_0\(1),
      I2 => \^a_0\(0),
      I3 => \^a_0\(2),
      I4 => \^a_0\(4),
      O => mem_data_reg_i_62_n_0
    );
mem_data_reg_i_63: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^a_0\(6),
      I1 => \^a_0\(4),
      I2 => \IR_reg[7]_0\(5),
      I3 => \B_reg[6]\(0),
      I4 => \IR_reg[7]_0\(4),
      I5 => data0(5),
      O => mem_data_reg_i_63_n_0
    );
mem_data_reg_i_64: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Inport1_IBUF(4),
      I1 => \IR_reg[7]_0\(1),
      I2 => Inport0_IBUF(4),
      O => mem_data_reg_i_64_n_0
    );
mem_data_reg_i_65: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAB"
    )
        port map (
      I0 => \IR_reg[7]_0\(4),
      I1 => \^a_0\(2),
      I2 => \^a_0\(0),
      I3 => \^a_0\(1),
      I4 => \^a_0\(3),
      I5 => \^a_0\(4),
      O => mem_data_reg_9
    );
mem_data_reg_i_66: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFC9959"
    )
        port map (
      I0 => \IR_reg[7]_0\(4),
      I1 => Q(4),
      I2 => \IR_reg[7]_0\(0),
      I3 => minusOp_carry_i_11_n_0,
      I4 => \B_reg[7]_0\(4),
      O => mem_data_reg_4
    );
mem_data_reg_i_68: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^a_0\(4),
      I1 => \^a_0\(2),
      I2 => \IR_reg[7]_0\(5),
      I3 => O(0),
      I4 => \IR_reg[7]_0\(4),
      I5 => data0(3),
      O => mem_data_reg_i_68_n_0
    );
mem_data_reg_i_69: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F20DF2FD0"
    )
        port map (
      I0 => mem_data_reg_i_81_n_0,
      I1 => \^a_0\(2),
      I2 => \IR_reg[7]_0\(5),
      I3 => \^a_0\(3),
      I4 => \B_reg[7]_0\(3),
      I5 => \IR_reg[7]_0\(4),
      O => mem_data_reg_i_69_n_0
    );
mem_data_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \MDR_reg[7]\(2),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \PC_reg[8]\(2),
      O => ADDRESS(2)
    );
mem_data_reg_i_70: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Inport1_IBUF(2),
      I1 => \IR_reg[7]_0\(1),
      I2 => Inport0_IBUF(2),
      O => mem_data_reg_i_70_n_0
    );
mem_data_reg_i_72: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F10EF1FE0"
    )
        port map (
      I0 => \^a_0\(0),
      I1 => \^a_0\(1),
      I2 => \IR_reg[7]_0\(5),
      I3 => \^a_0\(2),
      I4 => \B_reg[7]_0\(2),
      I5 => \IR_reg[7]_0\(4),
      O => mem_data_reg_5
    );
mem_data_reg_i_73: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1156225600000000"
    )
        port map (
      I0 => \^a_0\(1),
      I1 => \IR_reg[7]_0\(4),
      I2 => \B_reg[7]_0\(1),
      I3 => \IR_reg[7]_0\(5),
      I4 => \^a_0\(0),
      I5 => \IR_reg[7]_0\(6),
      O => mem_data_reg_17
    );
mem_data_reg_i_74: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \IR_reg[7]_0\(6),
      I1 => \IR_reg[7]_0\(5),
      I2 => \^a_0\(0),
      I3 => \IR_reg[7]_0\(4),
      I4 => \^a_0\(2),
      O => mem_data_reg_10
    );
mem_data_reg_i_76: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20220A08"
    )
        port map (
      I0 => \IR_reg[7]_0\(6),
      I1 => \IR_reg[7]_0\(4),
      I2 => \IR_reg[7]_0\(5),
      I3 => \B_reg[7]_0\(0),
      I4 => \^a_0\(0),
      O => mem_data_reg_7
    );
mem_data_reg_i_78: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^doado\(0),
      I1 => mem_data_reg_i_58_n_0,
      I2 => Inport1_IBUF(0),
      I3 => \IR_reg[7]_0\(1),
      I4 => Inport0_IBUF(0),
      O => mem_data_reg_14
    );
mem_data_reg_i_79: unisim.vcomponents.CARRY4
     port map (
      CI => mem_data_reg_i_80_n_0,
      CO(3) => NLW_mem_data_reg_i_79_CO_UNCONNECTED(3),
      CO(2) => mem_data_reg_i_79_n_1,
      CO(1) => mem_data_reg_i_79_n_2,
      CO(0) => mem_data_reg_i_79_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^a_0\(6 downto 4),
      O(3) => mem_data_reg_15(0),
      O(2) => mem_data_reg_8(4),
      O(1) => data0(5),
      O(0) => mem_data_reg_8(3),
      S(3) => mem_data_reg_i_82_n_0,
      S(2) => mem_data_reg_i_83_n_0,
      S(1) => mem_data_reg_i_84_n_0,
      S(0) => mem_data_reg_i_85_n_0
    );
mem_data_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \MDR_reg[7]\(1),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \PC_reg[8]\(1),
      O => ADDRESS(1)
    );
mem_data_reg_i_80: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mem_data_reg_i_80_n_0,
      CO(2) => mem_data_reg_i_80_n_1,
      CO(1) => mem_data_reg_i_80_n_2,
      CO(0) => mem_data_reg_i_80_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^a_0\(3 downto 0),
      O(3) => data0(3),
      O(2 downto 0) => mem_data_reg_8(2 downto 0),
      S(3) => mem_data_reg_i_86_n_0,
      S(2) => mem_data_reg_i_87_n_0,
      S(1) => mem_data_reg_i_88_n_0,
      S(0) => mem_data_reg_i_89_n_0
    );
mem_data_reg_i_81: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000533333305"
    )
        port map (
      I0 => \^mem_data_reg_11\,
      I1 => Q(0),
      I2 => \^mem_data_reg_6\,
      I3 => minusOp_carry_i_10_n_0,
      I4 => minusOp_carry_i_9_n_0,
      I5 => Q(1),
      O => mem_data_reg_i_81_n_0
    );
mem_data_reg_i_82: unisim.vcomponents.LUT4
    generic map(
      INIT => X"238C"
    )
        port map (
      I0 => minusOp_carry_i_11_n_0,
      I1 => \B_reg[7]_0\(7),
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(7),
      O => mem_data_reg_i_82_n_0
    );
mem_data_reg_i_83: unisim.vcomponents.LUT4
    generic map(
      INIT => X"51A2"
    )
        port map (
      I0 => Q(6),
      I1 => \IR_reg[7]_0\(0),
      I2 => minusOp_carry_i_11_n_0,
      I3 => \B_reg[7]_0\(6),
      O => mem_data_reg_i_83_n_0
    );
mem_data_reg_i_84: unisim.vcomponents.LUT4
    generic map(
      INIT => X"51A2"
    )
        port map (
      I0 => Q(5),
      I1 => \IR_reg[7]_0\(0),
      I2 => minusOp_carry_i_11_n_0,
      I3 => \B_reg[7]_0\(5),
      O => mem_data_reg_i_84_n_0
    );
mem_data_reg_i_85: unisim.vcomponents.LUT4
    generic map(
      INIT => X"51A2"
    )
        port map (
      I0 => Q(4),
      I1 => \IR_reg[7]_0\(0),
      I2 => minusOp_carry_i_11_n_0,
      I3 => \B_reg[7]_0\(4),
      O => mem_data_reg_i_85_n_0
    );
mem_data_reg_i_86: unisim.vcomponents.LUT4
    generic map(
      INIT => X"51A2"
    )
        port map (
      I0 => Q(3),
      I1 => \IR_reg[7]_0\(0),
      I2 => minusOp_carry_i_11_n_0,
      I3 => \B_reg[7]_0\(3),
      O => mem_data_reg_i_86_n_0
    );
mem_data_reg_i_87: unisim.vcomponents.LUT4
    generic map(
      INIT => X"51A2"
    )
        port map (
      I0 => Q(2),
      I1 => \IR_reg[7]_0\(0),
      I2 => minusOp_carry_i_11_n_0,
      I3 => \B_reg[7]_0\(2),
      O => mem_data_reg_i_87_n_0
    );
mem_data_reg_i_88: unisim.vcomponents.LUT4
    generic map(
      INIT => X"51A2"
    )
        port map (
      I0 => Q(1),
      I1 => \IR_reg[7]_0\(0),
      I2 => minusOp_carry_i_11_n_0,
      I3 => \B_reg[7]_0\(1),
      O => mem_data_reg_i_88_n_0
    );
mem_data_reg_i_89: unisim.vcomponents.LUT4
    generic map(
      INIT => X"51A2"
    )
        port map (
      I0 => Q(0),
      I1 => \IR_reg[7]_0\(0),
      I2 => minusOp_carry_i_11_n_0,
      I3 => \B_reg[7]_0\(0),
      O => mem_data_reg_i_89_n_0
    );
mem_data_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \MDR_reg[7]\(0),
      I1 => \CurrState_reg[1]_0\(1),
      I2 => \CurrState_reg[1]_0\(0),
      I3 => \PC_reg[8]\(0),
      O => ADDRESS(0)
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => minusOp_carry_i_9_n_0,
      I1 => minusOp_carry_i_10_n_0,
      I2 => \B_reg[7]_0\(6),
      I3 => \IR_reg[7]_0\(0),
      I4 => Q(6),
      O => \^a_0\(6)
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => minusOp_carry_i_9_n_0,
      I1 => minusOp_carry_i_10_n_0,
      I2 => \B_reg[7]_0\(5),
      I3 => \IR_reg[7]_0\(0),
      I4 => Q(5),
      O => \^a_0\(5)
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => minusOp_carry_i_9_n_0,
      I1 => minusOp_carry_i_10_n_0,
      I2 => \B_reg[7]_0\(4),
      I3 => \IR_reg[7]_0\(0),
      I4 => Q(4),
      O => \^a_0\(4)
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A5ED"
    )
        port map (
      I0 => Q(7),
      I1 => \IR_reg[7]_0\(0),
      I2 => \B_reg[7]_0\(7),
      I3 => minusOp_carry_i_11_n_0,
      O => mem_data_reg_16(3)
    );
\minusOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA75"
    )
        port map (
      I0 => \B_reg[7]_0\(6),
      I1 => minusOp_carry_i_11_n_0,
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(6),
      O => mem_data_reg_16(2)
    );
\minusOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA75"
    )
        port map (
      I0 => \B_reg[7]_0\(5),
      I1 => minusOp_carry_i_11_n_0,
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(5),
      O => mem_data_reg_16(1)
    );
\minusOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA75"
    )
        port map (
      I0 => \B_reg[7]_0\(4),
      I1 => minusOp_carry_i_11_n_0,
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(4),
      O => mem_data_reg_16(0)
    );
minusOp_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => minusOp_carry_i_9_n_0,
      I1 => minusOp_carry_i_10_n_0,
      I2 => \B_reg[7]_0\(3),
      I3 => \IR_reg[7]_0\(0),
      I4 => Q(3),
      O => \^a_0\(3)
    );
minusOp_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F77F77FF"
    )
        port map (
      I0 => \CurrState_reg[1]_0\(1),
      I1 => \CurrState_reg[1]_0\(0),
      I2 => \IR_reg[7]_0\(6),
      I3 => \IR_reg[7]_0\(5),
      I4 => \IR_reg[7]_0\(4),
      O => minusOp_carry_i_10_n_0
    );
minusOp_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBAFFFFFFFFFFFFF"
    )
        port map (
      I0 => minusOp_carry_i_9_n_0,
      I1 => \IR_reg[7]_0\(4),
      I2 => \IR_reg[7]_0\(5),
      I3 => \IR_reg[7]_0\(6),
      I4 => \CurrState_reg[1]_0\(0),
      I5 => \CurrState_reg[1]_0\(1),
      O => minusOp_carry_i_11_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => minusOp_carry_i_9_n_0,
      I1 => minusOp_carry_i_10_n_0,
      I2 => \B_reg[7]_0\(2),
      I3 => \IR_reg[7]_0\(0),
      I4 => Q(2),
      O => \^a_0\(2)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => minusOp_carry_i_9_n_0,
      I1 => minusOp_carry_i_10_n_0,
      I2 => \B_reg[7]_0\(1),
      I3 => \IR_reg[7]_0\(0),
      I4 => Q(1),
      O => \^a_0\(1)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => minusOp_carry_i_9_n_0,
      I1 => minusOp_carry_i_10_n_0,
      I2 => \B_reg[7]_0\(0),
      I3 => \IR_reg[7]_0\(0),
      I4 => Q(0),
      O => \^a_0\(0)
    );
minusOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA75"
    )
        port map (
      I0 => \B_reg[7]_0\(3),
      I1 => minusOp_carry_i_11_n_0,
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(3),
      O => S(3)
    );
minusOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA75"
    )
        port map (
      I0 => \B_reg[7]_0\(2),
      I1 => minusOp_carry_i_11_n_0,
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(2),
      O => S(2)
    );
minusOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA75"
    )
        port map (
      I0 => \B_reg[7]_0\(1),
      I1 => minusOp_carry_i_11_n_0,
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(1),
      O => S(1)
    );
minusOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA75"
    )
        port map (
      I0 => \B_reg[7]_0\(0),
      I1 => minusOp_carry_i_11_n_0,
      I2 => \IR_reg[7]_0\(0),
      I3 => Q(0),
      O => S(0)
    );
minusOp_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \IR_reg[7]_0\(1),
      I1 => \IR_reg[7]_0\(2),
      I2 => \IR_reg[7]_0\(3),
      I3 => \IR_reg[7]_0\(7),
      O => minusOp_carry_i_9_n_0
    );
\sevport0[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4011"
    )
        port map (
      I0 => \^mem_data_reg_0\,
      I1 => \^mem_data_reg_2\,
      I2 => \CurrState_reg[0]\,
      I3 => \^mem_data_reg_1\,
      O => \sevport2_reg[6]\(0)
    );
\sevport0[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAD4"
    )
        port map (
      I0 => \^mem_data_reg_1\,
      I1 => \CurrState_reg[0]\,
      I2 => \^mem_data_reg_2\,
      I3 => \^mem_data_reg_0\,
      O => \sevport2_reg[6]\(1)
    );
\sevport0[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FECE"
    )
        port map (
      I0 => \^mem_data_reg_1\,
      I1 => \CurrState_reg[0]\,
      I2 => \^mem_data_reg_2\,
      I3 => \^mem_data_reg_0\,
      O => \sevport2_reg[6]\(2)
    );
\sevport0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA94"
    )
        port map (
      I0 => \^mem_data_reg_2\,
      I1 => \CurrState_reg[0]\,
      I2 => \^mem_data_reg_1\,
      I3 => \^mem_data_reg_0\,
      O => \sevport2_reg[6]\(3)
    );
\sevport0[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB0"
    )
        port map (
      I0 => \^mem_data_reg_0\,
      I1 => \CurrState_reg[0]\,
      I2 => \^mem_data_reg_2\,
      I3 => \^mem_data_reg_1\,
      O => \sevport2_reg[6]\(4)
    );
\sevport0[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEC8"
    )
        port map (
      I0 => \^mem_data_reg_0\,
      I1 => \^mem_data_reg_1\,
      I2 => \CurrState_reg[0]\,
      I3 => \^mem_data_reg_2\,
      O => \sevport2_reg[6]\(5)
    );
\sevport0[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE12"
    )
        port map (
      I0 => \^mem_data_reg_1\,
      I1 => \^mem_data_reg_2\,
      I2 => \CurrState_reg[0]\,
      I3 => \^mem_data_reg_0\,
      O => \sevport2_reg[6]\(6)
    );
\sevport1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0085"
    )
        port map (
      I0 => \^bcd_num\(2),
      I1 => \^bcd_num\(0),
      I2 => \^bcd_num\(1),
      I3 => \^bcd_num\(3),
      O => D(0)
    );
\sevport1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAD4"
    )
        port map (
      I0 => \^bcd_num\(2),
      I1 => \^bcd_num\(0),
      I2 => \^bcd_num\(1),
      I3 => \^bcd_num\(3),
      O => D(1)
    );
\sevport1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FECE"
    )
        port map (
      I0 => \^bcd_num\(2),
      I1 => \^bcd_num\(0),
      I2 => \^bcd_num\(1),
      I3 => \^bcd_num\(3),
      O => D(2)
    );
\sevport1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA9C"
    )
        port map (
      I0 => \^bcd_num\(3),
      I1 => \^bcd_num\(2),
      I2 => \^bcd_num\(0),
      I3 => \^bcd_num\(1),
      O => D(3)
    );
\sevport1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB0"
    )
        port map (
      I0 => \^bcd_num\(3),
      I1 => \^bcd_num\(0),
      I2 => \^bcd_num\(1),
      I3 => \^bcd_num\(2),
      O => D(4)
    );
\sevport1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE88"
    )
        port map (
      I0 => \^bcd_num\(3),
      I1 => \^bcd_num\(1),
      I2 => \^bcd_num\(0),
      I3 => \^bcd_num\(2),
      O => D(5)
    );
\sevport1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C9CA"
    )
        port map (
      I0 => \^bcd_num\(2),
      I1 => \^bcd_num\(3),
      I2 => \^bcd_num\(1),
      I3 => \^bcd_num\(0),
      O => D(6)
    );
\temp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000001"
    )
        port map (
      I0 => \CurrState[1]_i_2_n_0\,
      I1 => \^bcd_num\(0),
      I2 => \^bcd_num\(3),
      I3 => \^bcd_num\(2),
      I4 => \^bcd_num\(1),
      I5 => \CurrState_reg[0]_0\,
      O => \temp_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seg_mux is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    digit_seg_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_IBUF : in STD_LOGIC;
    clk250Hz : in STD_LOGIC;
    \sevport2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \sevport0_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \sevport3_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \sevport1_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end seg_mux;

architecture STRUCTURE of seg_mux is
  signal digCounter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dig[1]_i_1_n_0\ : STD_LOGIC;
  signal \dig[2]_i_1_n_0\ : STD_LOGIC;
  signal \dig[2]_i_2_n_0\ : STD_LOGIC;
  signal \dig[2]_i_3_n_0\ : STD_LOGIC;
  signal \dig[3]_i_1_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \seg[0]_i_1_n_0\ : STD_LOGIC;
  signal \seg[1]_i_1_n_0\ : STD_LOGIC;
  signal \seg[2]_i_1_n_0\ : STD_LOGIC;
  signal \seg[3]_i_1_n_0\ : STD_LOGIC;
  signal \seg[4]_i_1_n_0\ : STD_LOGIC;
  signal \seg[5]_i_1_n_0\ : STD_LOGIC;
  signal \seg[6]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \digCounter[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dig[2]_i_3\ : label is "soft_lutpair28";
begin
\digCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => digCounter(0),
      O => plusOp(0)
    );
\digCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => digCounter(0),
      I1 => digCounter(1),
      O => plusOp(1)
    );
\digCounter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250Hz,
      CE => '1',
      CLR => reset_IBUF,
      D => plusOp(0),
      Q => digCounter(0)
    );
\digCounter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250Hz,
      CE => '1',
      CLR => reset_IBUF,
      D => plusOp(1),
      Q => digCounter(1)
    );
\dig[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => digCounter(1),
      I1 => digCounter(0),
      I2 => reset_IBUF,
      O => \dig[1]_i_1_n_0\
    );
\dig[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => digCounter(0),
      I1 => reset_IBUF,
      O => \dig[2]_i_1_n_0\
    );
\dig[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_IBUF,
      O => \dig[2]_i_2_n_0\
    );
\dig[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => digCounter(1),
      I1 => digCounter(0),
      O => \dig[2]_i_3_n_0\
    );
\dig[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => digCounter(0),
      I1 => reset_IBUF,
      O => \dig[3]_i_1_n_0\
    );
\dig_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250Hz,
      CE => \dig[2]_i_2_n_0\,
      D => plusOp(1),
      Q => digit_seg_OBUF(0),
      S => \dig[2]_i_1_n_0\
    );
\dig_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250Hz,
      CE => \dig[2]_i_2_n_0\,
      D => digCounter(0),
      Q => digit_seg_OBUF(1),
      S => \dig[1]_i_1_n_0\
    );
\dig_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250Hz,
      CE => \dig[2]_i_2_n_0\,
      D => \dig[2]_i_3_n_0\,
      Q => digit_seg_OBUF(2),
      S => \dig[2]_i_1_n_0\
    );
\dig_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250Hz,
      CE => \dig[2]_i_2_n_0\,
      D => \dig[2]_i_3_n_0\,
      Q => digit_seg_OBUF(3),
      S => \dig[3]_i_1_n_0\
    );
\seg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \sevport2_reg[6]\(0),
      I1 => \sevport0_reg[6]\(0),
      I2 => digCounter(0),
      I3 => \sevport3_reg[6]\(0),
      I4 => digCounter(1),
      I5 => \sevport1_reg[6]\(0),
      O => \seg[0]_i_1_n_0\
    );
\seg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \sevport2_reg[6]\(1),
      I1 => \sevport0_reg[6]\(1),
      I2 => digCounter(0),
      I3 => \sevport3_reg[6]\(1),
      I4 => digCounter(1),
      I5 => \sevport1_reg[6]\(1),
      O => \seg[1]_i_1_n_0\
    );
\seg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \sevport2_reg[6]\(2),
      I1 => \sevport0_reg[6]\(2),
      I2 => digCounter(0),
      I3 => \sevport3_reg[6]\(2),
      I4 => digCounter(1),
      I5 => \sevport1_reg[6]\(2),
      O => \seg[2]_i_1_n_0\
    );
\seg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \sevport2_reg[6]\(3),
      I1 => \sevport0_reg[6]\(3),
      I2 => digCounter(0),
      I3 => \sevport3_reg[6]\(3),
      I4 => digCounter(1),
      I5 => \sevport1_reg[6]\(3),
      O => \seg[3]_i_1_n_0\
    );
\seg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \sevport2_reg[6]\(4),
      I1 => \sevport0_reg[6]\(4),
      I2 => digCounter(0),
      I3 => \sevport3_reg[6]\(4),
      I4 => digCounter(1),
      I5 => \sevport1_reg[6]\(4),
      O => \seg[4]_i_1_n_0\
    );
\seg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \sevport2_reg[6]\(5),
      I1 => \sevport0_reg[6]\(5),
      I2 => digCounter(0),
      I3 => \sevport3_reg[6]\(5),
      I4 => digCounter(1),
      I5 => \sevport1_reg[6]\(5),
      O => \seg[5]_i_1_n_0\
    );
\seg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \sevport2_reg[6]\(6),
      I1 => \sevport0_reg[6]\(6),
      I2 => digCounter(0),
      I3 => \sevport3_reg[6]\(6),
      I4 => digCounter(1),
      I5 => \sevport1_reg[6]\(6),
      O => \seg[6]_i_1_n_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk250Hz,
      CE => '1',
      D => \seg[0]_i_1_n_0\,
      PRE => reset_IBUF,
      Q => Q(0)
    );
\seg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk250Hz,
      CE => '1',
      D => \seg[1]_i_1_n_0\,
      PRE => reset_IBUF,
      Q => Q(1)
    );
\seg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk250Hz,
      CE => '1',
      D => \seg[2]_i_1_n_0\,
      PRE => reset_IBUF,
      Q => Q(2)
    );
\seg_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk250Hz,
      CE => '1',
      D => \seg[3]_i_1_n_0\,
      PRE => reset_IBUF,
      Q => Q(3)
    );
\seg_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk250Hz,
      CE => '1',
      D => \seg[4]_i_1_n_0\,
      PRE => reset_IBUF,
      Q => Q(4)
    );
\seg_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk250Hz,
      CE => '1',
      D => \seg[5]_i_1_n_0\,
      PRE => reset_IBUF,
      Q => Q(5)
    );
\seg_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk250Hz,
      CE => '1',
      D => \seg[6]_i_1_n_0\,
      PRE => reset_IBUF,
      Q => Q(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \Outport1[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \seg_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \seg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \seg_reg[6]_1\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \seg_reg[6]_2\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk1Hz_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    Inport0_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Inport1_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end cpu;

architecture STRUCTURE of cpu is
  signal A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \A[0]_i_2_n_0\ : STD_LOGIC;
  signal \A[3]_i_2_n_0\ : STD_LOGIC;
  signal \A[4]_i_2_n_0\ : STD_LOGIC;
  signal \A[5]_i_2_n_0\ : STD_LOGIC;
  signal \A[7]_i_10_n_0\ : STD_LOGIC;
  signal \A[7]_i_1_n_0\ : STD_LOGIC;
  signal \A[7]_i_3_n_0\ : STD_LOGIC;
  signal \A[7]_i_4_n_0\ : STD_LOGIC;
  signal \A[7]_i_5_n_0\ : STD_LOGIC;
  signal \A[7]_i_6_n_0\ : STD_LOGIC;
  signal \A[7]_i_7_n_0\ : STD_LOGIC;
  signal \A[7]_i_8_n_0\ : STD_LOGIC;
  signal \A[7]_i_9_n_0\ : STD_LOGIC;
  signal A_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal BCD_Num : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \B[3]_i_2_n_0\ : STD_LOGIC;
  signal \B[4]_i_2_n_0\ : STD_LOGIC;
  signal \B[5]_i_2_n_0\ : STD_LOGIC;
  signal \B[7]_i_1_n_0\ : STD_LOGIC;
  signal \B[7]_i_3_n_0\ : STD_LOGIC;
  signal \B[7]_i_4_n_0\ : STD_LOGIC;
  signal \B[7]_i_5_n_0\ : STD_LOGIC;
  signal \B_reg_n_0_[0]\ : STD_LOGIC;
  signal \B_reg_n_0_[1]\ : STD_LOGIC;
  signal \B_reg_n_0_[2]\ : STD_LOGIC;
  signal \B_reg_n_0_[3]\ : STD_LOGIC;
  signal \B_reg_n_0_[4]\ : STD_LOGIC;
  signal \B_reg_n_0_[5]\ : STD_LOGIC;
  signal \B_reg_n_0_[6]\ : STD_LOGIC;
  signal \B_reg_n_0_[7]\ : STD_LOGIC;
  signal CurrState : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \CurrState[0]_i_1_n_0\ : STD_LOGIC;
  signal F : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \IR[7]_i_1_n_0\ : STD_LOGIC;
  signal \IR_reg_n_0_[0]\ : STD_LOGIC;
  signal \IR_reg_n_0_[2]\ : STD_LOGIC;
  signal \IR_reg_n_0_[3]\ : STD_LOGIC;
  signal \IR_reg_n_0_[7]\ : STD_LOGIC;
  signal MDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \MDR[7]_i_1_n_0\ : STD_LOGIC;
  signal PC : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \PC[0]_i_1_n_0\ : STD_LOGIC;
  signal \PC[1]_i_1_n_0\ : STD_LOGIC;
  signal \PC[2]_i_1_n_0\ : STD_LOGIC;
  signal \PC[3]_i_1_n_0\ : STD_LOGIC;
  signal \PC[4]_i_1_n_0\ : STD_LOGIC;
  signal \PC[5]_i_1_n_0\ : STD_LOGIC;
  signal \PC[5]_i_2_n_0\ : STD_LOGIC;
  signal \PC[6]_i_1_n_0\ : STD_LOGIC;
  signal \PC[7]_i_1_n_0\ : STD_LOGIC;
  signal \PC[8]_i_10_n_0\ : STD_LOGIC;
  signal \PC[8]_i_11_n_0\ : STD_LOGIC;
  signal \PC[8]_i_12_n_0\ : STD_LOGIC;
  signal \PC[8]_i_2_n_0\ : STD_LOGIC;
  signal \PC[8]_i_3_n_0\ : STD_LOGIC;
  signal \PC[8]_i_4_n_0\ : STD_LOGIC;
  signal \PC[8]_i_5_n_0\ : STD_LOGIC;
  signal \PC[8]_i_6_n_0\ : STD_LOGIC;
  signal \PC[8]_i_7_n_0\ : STD_LOGIC;
  signal \PC[8]_i_8_n_0\ : STD_LOGIC;
  signal \PC[8]_i_9_n_0\ : STD_LOGIC;
  signal RAM_DATA_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SEV_SEG : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal U1_n_0 : STD_LOGIC;
  signal U1_n_1 : STD_LOGIC;
  signal U1_n_2 : STD_LOGIC;
  signal U1_n_3 : STD_LOGIC;
  signal U1_n_4 : STD_LOGIC;
  signal U1_n_5 : STD_LOGIC;
  signal U1_n_6 : STD_LOGIC;
  signal U1_n_8 : STD_LOGIC;
  signal U1_n_9 : STD_LOGIC;
  signal U2_n_10 : STD_LOGIC;
  signal U2_n_11 : STD_LOGIC;
  signal U2_n_12 : STD_LOGIC;
  signal U2_n_13 : STD_LOGIC;
  signal U2_n_14 : STD_LOGIC;
  signal U2_n_15 : STD_LOGIC;
  signal U2_n_16 : STD_LOGIC;
  signal U2_n_17 : STD_LOGIC;
  signal U2_n_18 : STD_LOGIC;
  signal U2_n_19 : STD_LOGIC;
  signal U2_n_20 : STD_LOGIC;
  signal U2_n_21 : STD_LOGIC;
  signal U2_n_22 : STD_LOGIC;
  signal U2_n_23 : STD_LOGIC;
  signal U2_n_24 : STD_LOGIC;
  signal U2_n_25 : STD_LOGIC;
  signal U2_n_33 : STD_LOGIC;
  signal U2_n_41 : STD_LOGIC;
  signal U2_n_49 : STD_LOGIC;
  signal U2_n_5 : STD_LOGIC;
  signal U2_n_50 : STD_LOGIC;
  signal U2_n_51 : STD_LOGIC;
  signal U2_n_57 : STD_LOGIC;
  signal U2_n_58 : STD_LOGIC;
  signal U2_n_59 : STD_LOGIC;
  signal U2_n_6 : STD_LOGIC;
  signal U2_n_60 : STD_LOGIC;
  signal U2_n_61 : STD_LOGIC;
  signal U2_n_62 : STD_LOGIC;
  signal U2_n_64 : STD_LOGIC;
  signal U2_n_65 : STD_LOGIC;
  signal U2_n_66 : STD_LOGIC;
  signal U2_n_67 : STD_LOGIC;
  signal U2_n_68 : STD_LOGIC;
  signal U2_n_69 : STD_LOGIC;
  signal U2_n_7 : STD_LOGIC;
  signal U2_n_70 : STD_LOGIC;
  signal U2_n_71 : STD_LOGIC;
  signal U2_n_72 : STD_LOGIC;
  signal U2_n_8 : STD_LOGIC;
  signal U2_n_9 : STD_LOGIC;
  signal cnt0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cnt00 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal cnt010_in : STD_LOGIC;
  signal \cnt01_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt01_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt01_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt01_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt01_carry__0_n_0\ : STD_LOGIC;
  signal \cnt01_carry__0_n_1\ : STD_LOGIC;
  signal \cnt01_carry__0_n_2\ : STD_LOGIC;
  signal \cnt01_carry__0_n_3\ : STD_LOGIC;
  signal \cnt01_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt01_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt01_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt01_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt01_carry__1_n_0\ : STD_LOGIC;
  signal \cnt01_carry__1_n_1\ : STD_LOGIC;
  signal \cnt01_carry__1_n_2\ : STD_LOGIC;
  signal \cnt01_carry__1_n_3\ : STD_LOGIC;
  signal \cnt01_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt01_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt01_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt01_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cnt01_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \cnt01_carry__2_n_1\ : STD_LOGIC;
  signal \cnt01_carry__2_n_2\ : STD_LOGIC;
  signal \cnt01_carry__2_n_3\ : STD_LOGIC;
  signal cnt01_carry_i_1_n_0 : STD_LOGIC;
  signal cnt01_carry_i_2_n_0 : STD_LOGIC;
  signal cnt01_carry_i_3_n_0 : STD_LOGIC;
  signal cnt01_carry_i_4_n_0 : STD_LOGIC;
  signal cnt01_carry_i_5_n_0 : STD_LOGIC;
  signal cnt01_carry_i_6_n_0 : STD_LOGIC;
  signal cnt01_carry_n_0 : STD_LOGIC;
  signal cnt01_carry_n_1 : STD_LOGIC;
  signal cnt01_carry_n_2 : STD_LOGIC;
  signal cnt01_carry_n_3 : STD_LOGIC;
  signal \cnt0[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[13]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[14]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[17]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[18]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[19]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[21]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[22]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[23]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[25]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[26]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[27]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[28]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[29]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[30]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[31]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[9]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt0_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt0_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt0_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt0_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cnt0_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cnt0_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cnt0_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \cnt0_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \cnt0_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \cnt0_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \cnt0_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \cnt0_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \cnt0_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \cnt0_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[31]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt0_reg_n_0_[9]\ : STD_LOGIC;
  signal cnt1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cnt10 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal cnt112_in : STD_LOGIC;
  signal \cnt11_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt11_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt11_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt11_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt11_carry__0_n_0\ : STD_LOGIC;
  signal \cnt11_carry__0_n_1\ : STD_LOGIC;
  signal \cnt11_carry__0_n_2\ : STD_LOGIC;
  signal \cnt11_carry__0_n_3\ : STD_LOGIC;
  signal \cnt11_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt11_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt11_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt11_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt11_carry__1_n_0\ : STD_LOGIC;
  signal \cnt11_carry__1_n_1\ : STD_LOGIC;
  signal \cnt11_carry__1_n_2\ : STD_LOGIC;
  signal \cnt11_carry__1_n_3\ : STD_LOGIC;
  signal \cnt11_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt11_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt11_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt11_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cnt11_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \cnt11_carry__2_n_1\ : STD_LOGIC;
  signal \cnt11_carry__2_n_2\ : STD_LOGIC;
  signal \cnt11_carry__2_n_3\ : STD_LOGIC;
  signal cnt11_carry_i_1_n_0 : STD_LOGIC;
  signal cnt11_carry_i_2_n_0 : STD_LOGIC;
  signal cnt11_carry_i_3_n_0 : STD_LOGIC;
  signal cnt11_carry_i_4_n_0 : STD_LOGIC;
  signal cnt11_carry_i_5_n_0 : STD_LOGIC;
  signal cnt11_carry_i_6_n_0 : STD_LOGIC;
  signal cnt11_carry_n_0 : STD_LOGIC;
  signal cnt11_carry_n_1 : STD_LOGIC;
  signal cnt11_carry_n_2 : STD_LOGIC;
  signal cnt11_carry_n_3 : STD_LOGIC;
  signal \cnt1[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[13]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[14]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[17]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[18]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[19]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[21]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[22]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[23]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[25]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[26]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[27]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[28]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[29]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[30]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[31]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[9]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt1_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt1_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt1_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt1_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt1_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt1_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt1_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt1_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt1_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cnt1_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cnt1_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cnt1_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt1_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \cnt1_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \cnt1_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \cnt1_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt1_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \cnt1_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \cnt1_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \cnt1_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \cnt1_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \cnt1_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt1_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt1_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt1_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[31]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt1_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal deb0_i_1_n_0 : STD_LOGIC;
  signal deb0_reg_n_0 : STD_LOGIC;
  signal deb1_i_1_n_0 : STD_LOGIC;
  signal deb1_reg_n_0 : STD_LOGIC;
  signal \ledport0[7]_i_1_n_0\ : STD_LOGIC;
  signal \ledport0[7]_i_2_n_0\ : STD_LOGIC;
  signal \ledport0[7]_i_3_n_0\ : STD_LOGIC;
  signal \ledport1[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_2_in3_in : STD_LOGIC;
  signal \sevport0[6]_i_1_n_0\ : STD_LOGIC;
  signal \sevport0[6]_i_3_n_0\ : STD_LOGIC;
  signal \sevport2[6]_i_1_n_0\ : STD_LOGIC;
  signal \temp[0]_i_3_n_0\ : STD_LOGIC;
  signal \temp[0]_i_4_n_0\ : STD_LOGIC;
  signal \temp[0]_i_5_n_0\ : STD_LOGIC;
  signal \temp[0]_i_6_n_0\ : STD_LOGIC;
  signal \temp[0]_i_7_n_0\ : STD_LOGIC;
  signal \temp[12]_i_2_n_0\ : STD_LOGIC;
  signal \temp[12]_i_3_n_0\ : STD_LOGIC;
  signal \temp[12]_i_4_n_0\ : STD_LOGIC;
  signal \temp[12]_i_5_n_0\ : STD_LOGIC;
  signal \temp[16]_i_2_n_0\ : STD_LOGIC;
  signal \temp[16]_i_3_n_0\ : STD_LOGIC;
  signal \temp[16]_i_4_n_0\ : STD_LOGIC;
  signal \temp[16]_i_5_n_0\ : STD_LOGIC;
  signal \temp[20]_i_2_n_0\ : STD_LOGIC;
  signal \temp[20]_i_3_n_0\ : STD_LOGIC;
  signal \temp[20]_i_4_n_0\ : STD_LOGIC;
  signal \temp[20]_i_5_n_0\ : STD_LOGIC;
  signal \temp[24]_i_2_n_0\ : STD_LOGIC;
  signal \temp[24]_i_3_n_0\ : STD_LOGIC;
  signal \temp[24]_i_4_n_0\ : STD_LOGIC;
  signal \temp[24]_i_5_n_0\ : STD_LOGIC;
  signal \temp[28]_i_2_n_0\ : STD_LOGIC;
  signal \temp[28]_i_3_n_0\ : STD_LOGIC;
  signal \temp[28]_i_4_n_0\ : STD_LOGIC;
  signal \temp[28]_i_5_n_0\ : STD_LOGIC;
  signal \temp[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp[4]_i_3_n_0\ : STD_LOGIC;
  signal \temp[4]_i_4_n_0\ : STD_LOGIC;
  signal \temp[4]_i_5_n_0\ : STD_LOGIC;
  signal \temp[8]_i_2_n_0\ : STD_LOGIC;
  signal \temp[8]_i_3_n_0\ : STD_LOGIC;
  signal \temp[8]_i_4_n_0\ : STD_LOGIC;
  signal \temp[8]_i_5_n_0\ : STD_LOGIC;
  signal temp_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \temp_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \temp_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \temp_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \temp_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \temp_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \temp_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \temp_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \temp_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \temp_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \temp_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \temp_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \temp_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \temp_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \temp_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \temp_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \temp_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \temp_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \temp_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \temp_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \temp_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \temp_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \temp_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \temp_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \temp_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \temp_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \temp_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \temp_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \temp_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \temp_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \temp_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \temp_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal NLW_cnt01_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt01_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt01_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt01_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt0_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt0_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_cnt11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt11_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt11_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt1_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt1_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_temp_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A[4]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \A[5]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \A[7]_i_6\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \A[7]_i_8\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \A[7]_i_9\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \B[4]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \B[5]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \B[7]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \CurrState[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \PC[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \PC[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \PC[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \PC[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \PC[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \PC[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \PC[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \PC[8]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt0[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt0[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt0[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt1[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt1[21]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt1[23]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of deb0_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of deb1_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ledport0[7]_i_3\ : label is "soft_lutpair27";
begin
\A[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => deb1_reg_n_0,
      I1 => p_0_in,
      I2 => deb0_reg_n_0,
      O => \A[0]_i_2_n_0\
    );
\A[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => A(1),
      I1 => A(0),
      I2 => A(2),
      O => \A[3]_i_2_n_0\
    );
\A[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => A(2),
      I1 => A(0),
      I2 => A(1),
      I3 => A(3),
      O => \A[4]_i_2_n_0\
    );
\A[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => A(3),
      I1 => A(1),
      I2 => A(0),
      I3 => A(2),
      I4 => A(4),
      O => \A[5]_i_2_n_0\
    );
\A[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFB"
    )
        port map (
      I0 => \A[7]_i_3_n_0\,
      I1 => \A[7]_i_4_n_0\,
      I2 => \A[7]_i_5_n_0\,
      I3 => \IR_reg_n_0_[0]\,
      O => \A[7]_i_1_n_0\
    );
\A[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000001001"
    )
        port map (
      I0 => F(0),
      I1 => \IR_reg_n_0_[7]\,
      I2 => \IR_reg_n_0_[3]\,
      I3 => \IR_reg_n_0_[2]\,
      I4 => F(1),
      I5 => F(2),
      O => \A[7]_i_10_n_0\
    );
\A[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => p_0_in,
      I1 => F(0),
      I2 => F(1),
      I3 => \IR_reg_n_0_[2]\,
      I4 => F(2),
      I5 => \A[7]_i_8_n_0\,
      O => \A[7]_i_3_n_0\
    );
\A[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \IR_reg_n_0_[2]\,
      I1 => F(0),
      I2 => U2_n_17,
      I3 => \A[7]_i_9_n_0\,
      I4 => \IR_reg_n_0_[3]\,
      I5 => \IR_reg_n_0_[7]\,
      O => \A[7]_i_4_n_0\
    );
\A[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444544444444"
    )
        port map (
      I0 => U2_n_17,
      I1 => \A[7]_i_10_n_0\,
      I2 => p_0_in,
      I3 => \IR_reg_n_0_[2]\,
      I4 => \IR_reg_n_0_[3]\,
      I5 => \IR_reg_n_0_[7]\,
      O => \A[7]_i_5_n_0\
    );
\A[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \A[7]_i_3_n_0\,
      I1 => \A[7]_i_4_n_0\,
      I2 => \IR_reg_n_0_[0]\,
      O => \A[7]_i_6_n_0\
    );
\A[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => A(4),
      I1 => A(2),
      I2 => A(0),
      I3 => A(1),
      I4 => A(3),
      I5 => A(5),
      O => \A[7]_i_7_n_0\
    );
\A[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => CurrState(0),
      I1 => CurrState(1),
      I2 => \IR_reg_n_0_[7]\,
      I3 => \IR_reg_n_0_[3]\,
      O => \A[7]_i_8_n_0\
    );
\A[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => F(2),
      I1 => F(1),
      O => \A[7]_i_9_n_0\
    );
\A_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \A[7]_i_1_n_0\,
      D => U1_n_5,
      PRE => reset_IBUF,
      Q => A(0)
    );
\A_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \A[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_25,
      Q => A(1)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \A[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_24,
      Q => A(2)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \A[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_23,
      Q => A(3)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \A[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_22,
      Q => A(4)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \A[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_21,
      Q => A(5)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \A[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_20,
      Q => A(6)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \A[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_19,
      Q => A(7)
    );
\B[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \B_reg_n_0_[0]\,
      I1 => \B_reg_n_0_[1]\,
      I2 => \B_reg_n_0_[2]\,
      O => \B[3]_i_2_n_0\
    );
\B[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \B_reg_n_0_[2]\,
      I1 => \B_reg_n_0_[1]\,
      I2 => \B_reg_n_0_[0]\,
      I3 => \B_reg_n_0_[3]\,
      O => \B[4]_i_2_n_0\
    );
\B[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \B_reg_n_0_[3]\,
      I1 => \B_reg_n_0_[0]\,
      I2 => \B_reg_n_0_[1]\,
      I3 => \B_reg_n_0_[2]\,
      I4 => \B_reg_n_0_[4]\,
      O => \B[5]_i_2_n_0\
    );
\B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \B[7]_i_3_n_0\,
      I1 => \IR_reg_n_0_[0]\,
      I2 => \A[7]_i_5_n_0\,
      O => \B[7]_i_1_n_0\
    );
\B[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \B[7]_i_5_n_0\,
      I1 => \A[7]_i_4_n_0\,
      I2 => \IR_reg_n_0_[0]\,
      O => \B[7]_i_3_n_0\
    );
\B[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \B_reg_n_0_[4]\,
      I1 => \B_reg_n_0_[2]\,
      I2 => \B_reg_n_0_[1]\,
      I3 => \B_reg_n_0_[0]\,
      I4 => \B_reg_n_0_[3]\,
      I5 => \B_reg_n_0_[5]\,
      O => \B[7]_i_4_n_0\
    );
\B[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => p_0_in,
      I1 => F(0),
      I2 => F(1),
      I3 => \IR_reg_n_0_[2]\,
      I4 => F(2),
      I5 => \A[7]_i_8_n_0\,
      O => \B[7]_i_5_n_0\
    );
\B_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \B[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(0),
      Q => \B_reg_n_0_[0]\
    );
\B_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \B[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(1),
      Q => \B_reg_n_0_[1]\
    );
\B_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \B[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(2),
      Q => \B_reg_n_0_[2]\
    );
\B_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \B[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(3),
      Q => \B_reg_n_0_[3]\
    );
\B_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \B[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(4),
      Q => \B_reg_n_0_[4]\
    );
\B_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \B[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(5),
      Q => \B_reg_n_0_[5]\
    );
\B_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \B[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(6),
      Q => \B_reg_n_0_[6]\
    );
\B_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \B[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(7),
      Q => \B_reg_n_0_[7]\
    );
\CurrState[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CurrState(0),
      O => \CurrState[0]_i_1_n_0\
    );
\CurrState_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \CurrState[0]_i_1_n_0\,
      Q => CurrState(0)
    );
\CurrState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => U2_n_18,
      Q => CurrState(1)
    );
\IR[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CurrState(1),
      I1 => CurrState(0),
      O => \IR[7]_i_1_n_0\
    );
\IR_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \IR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U1_n_6,
      Q => \IR_reg_n_0_[0]\
    );
\IR_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \IR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_7,
      Q => p_0_in
    );
\IR_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \IR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_6,
      Q => \IR_reg_n_0_[2]\
    );
\IR_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \IR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_5,
      Q => \IR_reg_n_0_[3]\
    );
\IR_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \IR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(0),
      Q => F(0)
    );
\IR_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \IR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(1),
      Q => F(1)
    );
\IR_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \IR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(2),
      Q => F(2)
    );
\IR_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \IR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(3),
      Q => \IR_reg_n_0_[7]\
    );
\MDR[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrState(0),
      I1 => CurrState(1),
      O => \MDR[7]_i_1_n_0\
    );
\MDR_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \MDR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U1_n_6,
      Q => MDR(0)
    );
\MDR_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \MDR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_7,
      Q => MDR(1)
    );
\MDR_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \MDR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_6,
      Q => MDR(2)
    );
\MDR_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \MDR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_5,
      Q => MDR(3)
    );
\MDR_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \MDR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(0),
      Q => MDR(4)
    );
\MDR_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \MDR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(1),
      Q => MDR(5)
    );
\MDR_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \MDR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(2),
      Q => MDR(6)
    );
\MDR_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \MDR[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(3),
      Q => MDR(7)
    );
\PC[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \PC[8]_i_4_n_0\,
      I1 => PC(0),
      O => \PC[0]_i_1_n_0\
    );
\PC[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => PC(1),
      I1 => PC(0),
      I2 => \PC[8]_i_4_n_0\,
      O => \PC[1]_i_1_n_0\
    );
\PC[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \PC[8]_i_4_n_0\,
      I1 => PC(0),
      I2 => PC(1),
      I3 => PC(2),
      O => \PC[2]_i_1_n_0\
    );
\PC[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \PC[8]_i_4_n_0\,
      I1 => PC(1),
      I2 => PC(0),
      I3 => PC(2),
      I4 => PC(3),
      O => \PC[3]_i_1_n_0\
    );
\PC[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \PC[8]_i_4_n_0\,
      I1 => PC(2),
      I2 => PC(0),
      I3 => PC(1),
      I4 => PC(3),
      I5 => PC(4),
      O => \PC[4]_i_1_n_0\
    );
\PC[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \PC[8]_i_4_n_0\,
      I1 => \PC[5]_i_2_n_0\,
      I2 => PC(5),
      O => \PC[5]_i_1_n_0\
    );
\PC[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => PC(3),
      I1 => PC(1),
      I2 => PC(0),
      I3 => PC(2),
      I4 => PC(4),
      O => \PC[5]_i_2_n_0\
    );
\PC[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \PC[8]_i_4_n_0\,
      I1 => \PC[8]_i_3_n_0\,
      I2 => PC(6),
      O => \PC[6]_i_1_n_0\
    );
\PC[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \PC[8]_i_4_n_0\,
      I1 => PC(7),
      I2 => \PC[8]_i_3_n_0\,
      I3 => PC(6),
      O => \PC[7]_i_1_n_0\
    );
\PC[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => temp_reg(28),
      I1 => temp_reg(11),
      I2 => temp_reg(15),
      I3 => temp_reg(13),
      O => \PC[8]_i_10_n_0\
    );
\PC[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => temp_reg(3),
      I1 => temp_reg(0),
      I2 => temp_reg(8),
      I3 => temp_reg(31),
      O => \PC[8]_i_11_n_0\
    );
\PC[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => temp_reg(19),
      I1 => temp_reg(14),
      I2 => temp_reg(30),
      I3 => temp_reg(24),
      O => \PC[8]_i_12_n_0\
    );
\PC[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => PC(6),
      I1 => \PC[8]_i_3_n_0\,
      I2 => PC(7),
      I3 => \PC[8]_i_4_n_0\,
      I4 => PC(8),
      O => \PC[8]_i_2_n_0\
    );
\PC[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => PC(4),
      I1 => PC(2),
      I2 => PC(0),
      I3 => PC(1),
      I4 => PC(3),
      I5 => PC(5),
      O => \PC[8]_i_3_n_0\
    );
\PC[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \PC[8]_i_5_n_0\,
      I1 => \PC[8]_i_6_n_0\,
      I2 => \PC[8]_i_7_n_0\,
      I3 => \PC[8]_i_8_n_0\,
      I4 => CurrState(1),
      O => \PC[8]_i_4_n_0\
    );
\PC[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => temp_reg(5),
      I1 => temp_reg(23),
      I2 => temp_reg(20),
      I3 => temp_reg(25),
      I4 => \PC[8]_i_9_n_0\,
      O => \PC[8]_i_5_n_0\
    );
\PC[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => temp_reg(9),
      I1 => temp_reg(12),
      I2 => temp_reg(17),
      I3 => temp_reg(22),
      I4 => \PC[8]_i_10_n_0\,
      O => \PC[8]_i_6_n_0\
    );
\PC[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => temp_reg(2),
      I1 => temp_reg(1),
      I2 => temp_reg(10),
      I3 => temp_reg(16),
      I4 => \PC[8]_i_11_n_0\,
      O => \PC[8]_i_7_n_0\
    );
\PC[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => temp_reg(7),
      I1 => temp_reg(29),
      I2 => temp_reg(4),
      I3 => temp_reg(27),
      I4 => \PC[8]_i_12_n_0\,
      O => \PC[8]_i_8_n_0\
    );
\PC[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => temp_reg(21),
      I1 => temp_reg(18),
      I2 => temp_reg(26),
      I3 => temp_reg(6),
      O => \PC[8]_i_9_n_0\
    );
\PC_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_16,
      CLR => reset_IBUF,
      D => \PC[0]_i_1_n_0\,
      Q => PC(0)
    );
\PC_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_16,
      CLR => reset_IBUF,
      D => \PC[1]_i_1_n_0\,
      Q => PC(1)
    );
\PC_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_16,
      CLR => reset_IBUF,
      D => \PC[2]_i_1_n_0\,
      Q => PC(2)
    );
\PC_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_16,
      CLR => reset_IBUF,
      D => \PC[3]_i_1_n_0\,
      Q => PC(3)
    );
\PC_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_16,
      CLR => reset_IBUF,
      D => \PC[4]_i_1_n_0\,
      Q => PC(4)
    );
\PC_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_16,
      CLR => reset_IBUF,
      D => \PC[5]_i_1_n_0\,
      Q => PC(5)
    );
\PC_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_16,
      CLR => reset_IBUF,
      D => \PC[6]_i_1_n_0\,
      Q => PC(6)
    );
\PC_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_16,
      CLR => reset_IBUF,
      D => \PC[7]_i_1_n_0\,
      Q => PC(7)
    );
\PC_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_16,
      CLR => reset_IBUF,
      D => \PC[8]_i_2_n_0\,
      Q => PC(8)
    );
U1: entity work.alu
     port map (
      A_0(6 downto 0) => A_0(6 downto 0),
      \A_reg[0]\(0) => A(0),
      \A_reg[7]\(3) => U2_n_64,
      \A_reg[7]\(2) => U2_n_65,
      \A_reg[7]\(1) => U2_n_66,
      \A_reg[7]\(0) => U2_n_67,
      \B_reg[0]\(0) => p_1_in(0),
      \B_reg[0]_0\(0) => \B_reg_n_0_[0]\,
      \B_reg[0]_1\ => U2_n_59,
      \B_reg[1]\ => U2_n_50,
      \B_reg[6]\(0) => p_2_in3_in,
      \B_reg[7]\ => U2_n_61,
      \CurrState_reg[1]\(1 downto 0) => CurrState(1 downto 0),
      D(0) => U1_n_5,
      DOADO(0) => RAM_DATA_OUT(0),
      \IR_reg[1]\ => \A[7]_i_3_n_0\,
      \IR_reg[1]_0\ => \B[7]_i_5_n_0\,
      \IR_reg[2]\ => \A[7]_i_4_n_0\,
      \IR_reg[3]\ => U2_n_33,
      \IR_reg[4]\ => U2_n_57,
      \IR_reg[4]_0\ => U2_n_41,
      \IR_reg[4]_1\ => U2_n_72,
      \IR_reg[4]_2\ => U2_n_60,
      \IR_reg[5]\ => U2_n_49,
      \IR_reg[6]\ => U2_n_58,
      \IR_reg[6]_0\ => U2_n_51,
      O(0) => U1_n_0,
      Q(4) => \IR_reg_n_0_[7]\,
      Q(3 downto 1) => F(2 downto 0),
      Q(0) => \IR_reg_n_0_[0]\,
      S(3) => U2_n_68,
      S(2) => U2_n_69,
      S(1) => U2_n_70,
      S(0) => U2_n_71,
      data0(4) => data0(6),
      data0(3) => data0(4),
      data0(2 downto 0) => data0(2 downto 0),
      deb1_reg => \A[0]_i_2_n_0\,
      mem_data_reg(0) => U1_n_1,
      mem_data_reg_0 => U1_n_2,
      mem_data_reg_1 => U1_n_3,
      mem_data_reg_2 => U1_n_4,
      mem_data_reg_3 => U1_n_6,
      mem_data_reg_4 => U1_n_8,
      mem_data_reg_5 => U1_n_9,
      mem_data_reg_6 => U2_n_62
    );
U2: entity work.microram_sim_inc
     port map (
      A_0(6 downto 0) => A_0(6 downto 0),
      \A_reg[1]\ => \A[3]_i_2_n_0\,
      \A_reg[2]\ => \A[4]_i_2_n_0\,
      \A_reg[3]\ => \A[5]_i_2_n_0\,
      \A_reg[4]\ => \A[7]_i_7_n_0\,
      \A_reg[7]\(6) => U2_n_19,
      \A_reg[7]\(5) => U2_n_20,
      \A_reg[7]\(4) => U2_n_21,
      \A_reg[7]\(3) => U2_n_22,
      \A_reg[7]\(2) => U2_n_23,
      \A_reg[7]\(1) => U2_n_24,
      \A_reg[7]\(0) => U2_n_25,
      BCD_Num(3 downto 0) => BCD_Num(3 downto 0),
      \B_reg[0]\ => \B[3]_i_2_n_0\,
      \B_reg[2]\ => \B[4]_i_2_n_0\,
      \B_reg[3]\ => \B[5]_i_2_n_0\,
      \B_reg[4]\ => \B[7]_i_4_n_0\,
      \B_reg[6]\(0) => U1_n_1,
      \B_reg[7]\(6 downto 0) => p_1_in(7 downto 1),
      \B_reg[7]_0\(7) => \B_reg_n_0_[7]\,
      \B_reg[7]_0\(6) => \B_reg_n_0_[6]\,
      \B_reg[7]_0\(5) => \B_reg_n_0_[5]\,
      \B_reg[7]_0\(4) => \B_reg_n_0_[4]\,
      \B_reg[7]_0\(3) => \B_reg_n_0_[3]\,
      \B_reg[7]_0\(2) => \B_reg_n_0_[2]\,
      \B_reg[7]_0\(1) => \B_reg_n_0_[1]\,
      \B_reg[7]_0\(0) => \B_reg_n_0_[0]\,
      \CurrState_reg[0]\ => U1_n_6,
      \CurrState_reg[0]_0\ => \temp[0]_i_3_n_0\,
      \CurrState_reg[1]\(0) => U2_n_18,
      \CurrState_reg[1]_0\(1 downto 0) => CurrState(1 downto 0),
      D(6) => U2_n_8,
      D(5) => U2_n_9,
      D(4) => U2_n_10,
      D(3) => U2_n_11,
      D(2) => U2_n_12,
      D(1) => U2_n_13,
      D(0) => U2_n_14,
      DOADO(0) => RAM_DATA_OUT(0),
      E(0) => U2_n_16,
      \IR_reg[0]\ => \A[7]_i_6_n_0\,
      \IR_reg[0]_0\ => \B[7]_i_3_n_0\,
      \IR_reg[1]\ => \A[7]_i_3_n_0\,
      \IR_reg[1]_0\ => \B[7]_i_5_n_0\,
      \IR_reg[5]\ => U1_n_2,
      \IR_reg[5]_0\ => U1_n_8,
      \IR_reg[6]\ => U1_n_3,
      \IR_reg[7]\ => U1_n_9,
      \IR_reg[7]_0\(7) => \IR_reg_n_0_[7]\,
      \IR_reg[7]_0\(6 downto 4) => F(2 downto 0),
      \IR_reg[7]_0\(3) => \IR_reg_n_0_[3]\,
      \IR_reg[7]_0\(2) => \IR_reg_n_0_[2]\,
      \IR_reg[7]_0\(1) => p_0_in,
      \IR_reg[7]_0\(0) => \IR_reg_n_0_[0]\,
      \IR_reg[7]_1\ => U1_n_4,
      Inport0_IBUF(7 downto 0) => Inport0_IBUF(7 downto 0),
      Inport1_IBUF(7 downto 0) => Inport1_IBUF(7 downto 0),
      \MDR_reg[7]\(7 downto 0) => MDR(7 downto 0),
      O(0) => U1_n_0,
      \PC_reg[0]\ => U2_n_17,
      \PC_reg[8]\(8 downto 0) => PC(8 downto 0),
      Q(7 downto 0) => A(7 downto 0),
      S(3) => U2_n_68,
      S(2) => U2_n_69,
      S(1) => U2_n_70,
      S(0) => U2_n_71,
      clk1Hz_BUFG => clk1Hz_BUFG,
      mem_data_reg_0 => U2_n_5,
      mem_data_reg_1 => U2_n_6,
      mem_data_reg_10 => U2_n_58,
      mem_data_reg_11 => U2_n_59,
      mem_data_reg_12 => U2_n_60,
      mem_data_reg_13 => U2_n_61,
      mem_data_reg_14 => U2_n_62,
      mem_data_reg_15(0) => p_2_in3_in,
      mem_data_reg_16(3) => U2_n_64,
      mem_data_reg_16(2) => U2_n_65,
      mem_data_reg_16(1) => U2_n_66,
      mem_data_reg_16(0) => U2_n_67,
      mem_data_reg_17 => U2_n_72,
      mem_data_reg_2 => U2_n_7,
      mem_data_reg_3 => U2_n_33,
      mem_data_reg_4 => U2_n_41,
      mem_data_reg_5 => U2_n_49,
      mem_data_reg_6 => U2_n_50,
      mem_data_reg_7 => U2_n_51,
      mem_data_reg_8(4) => data0(6),
      mem_data_reg_8(3) => data0(4),
      mem_data_reg_8(2 downto 0) => data0(2 downto 0),
      mem_data_reg_9 => U2_n_57,
      \sevport2_reg[6]\(6 downto 0) => SEV_SEG(6 downto 0),
      \temp_reg[0]\ => U2_n_15
    );
cnt01_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt01_carry_n_0,
      CO(2) => cnt01_carry_n_1,
      CO(1) => cnt01_carry_n_2,
      CO(0) => cnt01_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => cnt01_carry_i_1_n_0,
      DI(1) => '0',
      DI(0) => cnt01_carry_i_2_n_0,
      O(3 downto 0) => NLW_cnt01_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt01_carry_i_3_n_0,
      S(2) => cnt01_carry_i_4_n_0,
      S(1) => cnt01_carry_i_5_n_0,
      S(0) => cnt01_carry_i_6_n_0
    );
\cnt01_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt01_carry_n_0,
      CO(3) => \cnt01_carry__0_n_0\,
      CO(2) => \cnt01_carry__0_n_1\,
      CO(1) => \cnt01_carry__0_n_2\,
      CO(0) => \cnt01_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt01_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt01_carry__0_i_1_n_0\,
      S(2) => \cnt01_carry__0_i_2_n_0\,
      S(1) => \cnt01_carry__0_i_3_n_0\,
      S(0) => \cnt01_carry__0_i_4_n_0\
    );
\cnt01_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[15]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[14]\,
      O => \cnt01_carry__0_i_1_n_0\
    );
\cnt01_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[13]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[12]\,
      O => \cnt01_carry__0_i_2_n_0\
    );
\cnt01_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[11]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[10]\,
      O => \cnt01_carry__0_i_3_n_0\
    );
\cnt01_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[9]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[8]\,
      O => \cnt01_carry__0_i_4_n_0\
    );
\cnt01_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt01_carry__0_n_0\,
      CO(3) => \cnt01_carry__1_n_0\,
      CO(2) => \cnt01_carry__1_n_1\,
      CO(1) => \cnt01_carry__1_n_2\,
      CO(0) => \cnt01_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt01_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt01_carry__1_i_1_n_0\,
      S(2) => \cnt01_carry__1_i_2_n_0\,
      S(1) => \cnt01_carry__1_i_3_n_0\,
      S(0) => \cnt01_carry__1_i_4_n_0\
    );
\cnt01_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[23]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[22]\,
      O => \cnt01_carry__1_i_1_n_0\
    );
\cnt01_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[21]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[20]\,
      O => \cnt01_carry__1_i_2_n_0\
    );
\cnt01_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[19]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[18]\,
      O => \cnt01_carry__1_i_3_n_0\
    );
\cnt01_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[17]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[16]\,
      O => \cnt01_carry__1_i_4_n_0\
    );
\cnt01_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt01_carry__1_n_0\,
      CO(3) => cnt010_in,
      CO(2) => \cnt01_carry__2_n_1\,
      CO(1) => \cnt01_carry__2_n_2\,
      CO(0) => \cnt01_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \cnt01_carry__2_i_1_n_0\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_cnt01_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt01_carry__2_i_2_n_0\,
      S(2) => \cnt01_carry__2_i_3_n_0\,
      S(1) => \cnt01_carry__2_i_4_n_0\,
      S(0) => \cnt01_carry__2_i_5_n_0\
    );
\cnt01_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[31]\,
      I1 => Inport0_IBUF(0),
      O => \cnt01_carry__2_i_1_n_0\
    );
\cnt01_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[31]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[30]\,
      O => \cnt01_carry__2_i_2_n_0\
    );
\cnt01_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[29]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[28]\,
      O => \cnt01_carry__2_i_3_n_0\
    );
\cnt01_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[27]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[26]\,
      O => \cnt01_carry__2_i_4_n_0\
    );
\cnt01_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[25]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[24]\,
      O => \cnt01_carry__2_i_5_n_0\
    );
cnt01_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[4]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[5]\,
      O => cnt01_carry_i_1_n_0
    );
cnt01_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Inport0_IBUF(0),
      I1 => \cnt0_reg_n_0_[1]\,
      O => cnt01_carry_i_2_n_0
    );
cnt01_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[7]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[6]\,
      O => cnt01_carry_i_3_n_0
    );
cnt01_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Inport0_IBUF(0),
      I1 => \cnt0_reg_n_0_[4]\,
      I2 => \cnt0_reg_n_0_[5]\,
      O => cnt01_carry_i_4_n_0
    );
cnt01_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt0_reg_n_0_[3]\,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[2]\,
      O => cnt01_carry_i_5_n_0
    );
cnt01_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Inport0_IBUF(0),
      I1 => \cnt0_reg_n_0_[1]\,
      I2 => \cnt0_reg_n_0_[0]\,
      O => cnt01_carry_i_6_n_0
    );
\cnt0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => cnt010_in,
      I1 => Inport0_IBUF(0),
      I2 => \cnt0_reg_n_0_[0]\,
      O => \cnt0[0]_i_1_n_0\
    );
\cnt0[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(10),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[10]\,
      O => \cnt0[10]_i_1_n_0\
    );
\cnt0[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(11),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[11]\,
      O => \cnt0[11]_i_1_n_0\
    );
\cnt0[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(12),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[12]\,
      O => \cnt0[12]_i_1_n_0\
    );
\cnt0[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[12]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(12)
    );
\cnt0[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[11]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(11)
    );
\cnt0[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[10]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(10)
    );
\cnt0[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[9]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(9)
    );
\cnt0[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(13),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[13]\,
      O => \cnt0[13]_i_1_n_0\
    );
\cnt0[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(14),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[14]\,
      O => \cnt0[14]_i_1_n_0\
    );
\cnt0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(15),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[15]\,
      O => \cnt0[15]_i_1_n_0\
    );
\cnt0[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(16),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[16]\,
      O => \cnt0[16]_i_1_n_0\
    );
\cnt0[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[16]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(16)
    );
\cnt0[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[15]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(15)
    );
\cnt0[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[14]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(14)
    );
\cnt0[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[13]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(13)
    );
\cnt0[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(17),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[17]\,
      O => \cnt0[17]_i_1_n_0\
    );
\cnt0[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(18),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[18]\,
      O => \cnt0[18]_i_1_n_0\
    );
\cnt0[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(19),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[19]\,
      O => \cnt0[19]_i_1_n_0\
    );
\cnt0[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(1),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[1]\,
      O => \cnt0[1]_i_1_n_0\
    );
\cnt0[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(20),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[20]\,
      O => \cnt0[20]_i_1_n_0\
    );
\cnt0[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[20]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(20)
    );
\cnt0[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[19]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(19)
    );
\cnt0[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[18]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(18)
    );
\cnt0[20]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[17]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(17)
    );
\cnt0[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(21),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[21]\,
      O => \cnt0[21]_i_1_n_0\
    );
\cnt0[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(22),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[22]\,
      O => \cnt0[22]_i_1_n_0\
    );
\cnt0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(23),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[23]\,
      O => \cnt0[23]_i_1_n_0\
    );
\cnt0[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(24),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[24]\,
      O => \cnt0[24]_i_1_n_0\
    );
\cnt0[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[24]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(24)
    );
\cnt0[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[23]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(23)
    );
\cnt0[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[22]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(22)
    );
\cnt0[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[21]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(21)
    );
\cnt0[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(25),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[25]\,
      O => \cnt0[25]_i_1_n_0\
    );
\cnt0[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(26),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[26]\,
      O => \cnt0[26]_i_1_n_0\
    );
\cnt0[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(27),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[27]\,
      O => \cnt0[27]_i_1_n_0\
    );
\cnt0[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(28),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[28]\,
      O => \cnt0[28]_i_1_n_0\
    );
\cnt0[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[28]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(28)
    );
\cnt0[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[27]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(27)
    );
\cnt0[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[26]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(26)
    );
\cnt0[28]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[25]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(25)
    );
\cnt0[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(29),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[29]\,
      O => \cnt0[29]_i_1_n_0\
    );
\cnt0[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(2),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[2]\,
      O => \cnt0[2]_i_1_n_0\
    );
\cnt0[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(30),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[30]\,
      O => \cnt0[30]_i_1_n_0\
    );
\cnt0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(31),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[31]\,
      O => \cnt0[31]_i_1_n_0\
    );
\cnt0[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[31]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(31)
    );
\cnt0[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[30]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(30)
    );
\cnt0[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[29]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(29)
    );
\cnt0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(3),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[3]\,
      O => \cnt0[3]_i_1_n_0\
    );
\cnt0[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(4),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[4]\,
      O => \cnt0[4]_i_1_n_0\
    );
\cnt0[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[0]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(0)
    );
\cnt0[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[4]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(4)
    );
\cnt0[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[3]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(3)
    );
\cnt0[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[2]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(2)
    );
\cnt0[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[1]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(1)
    );
\cnt0[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(5),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[5]\,
      O => \cnt0[5]_i_1_n_0\
    );
\cnt0[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(6),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[6]\,
      O => \cnt0[6]_i_1_n_0\
    );
\cnt0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(7),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[7]\,
      O => \cnt0[7]_i_1_n_0\
    );
\cnt0[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(8),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[8]\,
      O => \cnt0[8]_i_1_n_0\
    );
\cnt0[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[8]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(8)
    );
\cnt0[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[7]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(7)
    );
\cnt0[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[6]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(6)
    );
\cnt0[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt0_reg_n_0_[5]\,
      I1 => Inport0_IBUF(0),
      O => cnt0(5)
    );
\cnt0[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt00(9),
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      I3 => \cnt0_reg_n_0_[9]\,
      O => \cnt0[9]_i_1_n_0\
    );
\cnt0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[0]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[0]\,
      R => '0'
    );
\cnt0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[10]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[10]\,
      R => '0'
    );
\cnt0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[11]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[11]\,
      R => '0'
    );
\cnt0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[12]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[12]\,
      R => '0'
    );
\cnt0_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[8]_i_2_n_0\,
      CO(3) => \cnt0_reg[12]_i_2_n_0\,
      CO(2) => \cnt0_reg[12]_i_2_n_1\,
      CO(1) => \cnt0_reg[12]_i_2_n_2\,
      CO(0) => \cnt0_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt00(12 downto 9),
      S(3 downto 0) => cnt0(12 downto 9)
    );
\cnt0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[13]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[13]\,
      R => '0'
    );
\cnt0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[14]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[14]\,
      R => '0'
    );
\cnt0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[15]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[15]\,
      R => '0'
    );
\cnt0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[16]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[16]\,
      R => '0'
    );
\cnt0_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[12]_i_2_n_0\,
      CO(3) => \cnt0_reg[16]_i_2_n_0\,
      CO(2) => \cnt0_reg[16]_i_2_n_1\,
      CO(1) => \cnt0_reg[16]_i_2_n_2\,
      CO(0) => \cnt0_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt00(16 downto 13),
      S(3 downto 0) => cnt0(16 downto 13)
    );
\cnt0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[17]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[17]\,
      R => '0'
    );
\cnt0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[18]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[18]\,
      R => '0'
    );
\cnt0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[19]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[19]\,
      R => '0'
    );
\cnt0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[1]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[1]\,
      R => '0'
    );
\cnt0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[20]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[20]\,
      R => '0'
    );
\cnt0_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[16]_i_2_n_0\,
      CO(3) => \cnt0_reg[20]_i_2_n_0\,
      CO(2) => \cnt0_reg[20]_i_2_n_1\,
      CO(1) => \cnt0_reg[20]_i_2_n_2\,
      CO(0) => \cnt0_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt00(20 downto 17),
      S(3 downto 0) => cnt0(20 downto 17)
    );
\cnt0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[21]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[21]\,
      R => '0'
    );
\cnt0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[22]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[22]\,
      R => '0'
    );
\cnt0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[23]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[23]\,
      R => '0'
    );
\cnt0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[24]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[24]\,
      R => '0'
    );
\cnt0_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[20]_i_2_n_0\,
      CO(3) => \cnt0_reg[24]_i_2_n_0\,
      CO(2) => \cnt0_reg[24]_i_2_n_1\,
      CO(1) => \cnt0_reg[24]_i_2_n_2\,
      CO(0) => \cnt0_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt00(24 downto 21),
      S(3 downto 0) => cnt0(24 downto 21)
    );
\cnt0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[25]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[25]\,
      R => '0'
    );
\cnt0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[26]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[26]\,
      R => '0'
    );
\cnt0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[27]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[27]\,
      R => '0'
    );
\cnt0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[28]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[28]\,
      R => '0'
    );
\cnt0_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[24]_i_2_n_0\,
      CO(3) => \cnt0_reg[28]_i_2_n_0\,
      CO(2) => \cnt0_reg[28]_i_2_n_1\,
      CO(1) => \cnt0_reg[28]_i_2_n_2\,
      CO(0) => \cnt0_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt00(28 downto 25),
      S(3 downto 0) => cnt0(28 downto 25)
    );
\cnt0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[29]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[29]\,
      R => '0'
    );
\cnt0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[2]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[2]\,
      R => '0'
    );
\cnt0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[30]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[30]\,
      R => '0'
    );
\cnt0_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[31]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[31]\,
      R => '0'
    );
\cnt0_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt0_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt0_reg[31]_i_2_n_2\,
      CO(0) => \cnt0_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt0_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt00(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt0(31 downto 29)
    );
\cnt0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[3]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[3]\,
      R => '0'
    );
\cnt0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[4]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[4]\,
      R => '0'
    );
\cnt0_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt0_reg[4]_i_2_n_0\,
      CO(2) => \cnt0_reg[4]_i_2_n_1\,
      CO(1) => \cnt0_reg[4]_i_2_n_2\,
      CO(0) => \cnt0_reg[4]_i_2_n_3\,
      CYINIT => cnt0(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt00(4 downto 1),
      S(3 downto 0) => cnt0(4 downto 1)
    );
\cnt0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[5]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[5]\,
      R => '0'
    );
\cnt0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[6]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[6]\,
      R => '0'
    );
\cnt0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[7]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[7]\,
      R => '0'
    );
\cnt0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[8]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[8]\,
      R => '0'
    );
\cnt0_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[4]_i_2_n_0\,
      CO(3) => \cnt0_reg[8]_i_2_n_0\,
      CO(2) => \cnt0_reg[8]_i_2_n_1\,
      CO(1) => \cnt0_reg[8]_i_2_n_2\,
      CO(0) => \cnt0_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt00(8 downto 5),
      S(3 downto 0) => cnt0(8 downto 5)
    );
\cnt0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt0[9]_i_1_n_0\,
      Q => \cnt0_reg_n_0_[9]\,
      R => '0'
    );
cnt11_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt11_carry_n_0,
      CO(2) => cnt11_carry_n_1,
      CO(1) => cnt11_carry_n_2,
      CO(0) => cnt11_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => cnt11_carry_i_1_n_0,
      DI(1) => '0',
      DI(0) => cnt11_carry_i_2_n_0,
      O(3 downto 0) => NLW_cnt11_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt11_carry_i_3_n_0,
      S(2) => cnt11_carry_i_4_n_0,
      S(1) => cnt11_carry_i_5_n_0,
      S(0) => cnt11_carry_i_6_n_0
    );
\cnt11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt11_carry_n_0,
      CO(3) => \cnt11_carry__0_n_0\,
      CO(2) => \cnt11_carry__0_n_1\,
      CO(1) => \cnt11_carry__0_n_2\,
      CO(0) => \cnt11_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt11_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt11_carry__0_i_1_n_0\,
      S(2) => \cnt11_carry__0_i_2_n_0\,
      S(1) => \cnt11_carry__0_i_3_n_0\,
      S(0) => \cnt11_carry__0_i_4_n_0\
    );
\cnt11_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[15]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[14]\,
      O => \cnt11_carry__0_i_1_n_0\
    );
\cnt11_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[13]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[12]\,
      O => \cnt11_carry__0_i_2_n_0\
    );
\cnt11_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[11]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[10]\,
      O => \cnt11_carry__0_i_3_n_0\
    );
\cnt11_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[9]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[8]\,
      O => \cnt11_carry__0_i_4_n_0\
    );
\cnt11_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt11_carry__0_n_0\,
      CO(3) => \cnt11_carry__1_n_0\,
      CO(2) => \cnt11_carry__1_n_1\,
      CO(1) => \cnt11_carry__1_n_2\,
      CO(0) => \cnt11_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt11_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt11_carry__1_i_1_n_0\,
      S(2) => \cnt11_carry__1_i_2_n_0\,
      S(1) => \cnt11_carry__1_i_3_n_0\,
      S(0) => \cnt11_carry__1_i_4_n_0\
    );
\cnt11_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[23]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[22]\,
      O => \cnt11_carry__1_i_1_n_0\
    );
\cnt11_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[21]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[20]\,
      O => \cnt11_carry__1_i_2_n_0\
    );
\cnt11_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[19]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[18]\,
      O => \cnt11_carry__1_i_3_n_0\
    );
\cnt11_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[17]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[16]\,
      O => \cnt11_carry__1_i_4_n_0\
    );
\cnt11_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt11_carry__1_n_0\,
      CO(3) => cnt112_in,
      CO(2) => \cnt11_carry__2_n_1\,
      CO(1) => \cnt11_carry__2_n_2\,
      CO(0) => \cnt11_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \cnt11_carry__2_i_1_n_0\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_cnt11_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt11_carry__2_i_2_n_0\,
      S(2) => \cnt11_carry__2_i_3_n_0\,
      S(1) => \cnt11_carry__2_i_4_n_0\,
      S(0) => \cnt11_carry__2_i_5_n_0\
    );
\cnt11_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[31]\,
      I1 => Inport0_IBUF(1),
      O => \cnt11_carry__2_i_1_n_0\
    );
\cnt11_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[31]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[30]\,
      O => \cnt11_carry__2_i_2_n_0\
    );
\cnt11_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[29]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[28]\,
      O => \cnt11_carry__2_i_3_n_0\
    );
\cnt11_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[27]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[26]\,
      O => \cnt11_carry__2_i_4_n_0\
    );
\cnt11_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[25]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[24]\,
      O => \cnt11_carry__2_i_5_n_0\
    );
cnt11_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[4]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[5]\,
      O => cnt11_carry_i_1_n_0
    );
cnt11_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Inport0_IBUF(1),
      I1 => \cnt1_reg_n_0_[1]\,
      O => cnt11_carry_i_2_n_0
    );
cnt11_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[7]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[6]\,
      O => cnt11_carry_i_3_n_0
    );
cnt11_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Inport0_IBUF(1),
      I1 => \cnt1_reg_n_0_[4]\,
      I2 => \cnt1_reg_n_0_[5]\,
      O => cnt11_carry_i_4_n_0
    );
cnt11_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt1_reg_n_0_[3]\,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[2]\,
      O => cnt11_carry_i_5_n_0
    );
cnt11_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Inport0_IBUF(1),
      I1 => \cnt1_reg_n_0_[1]\,
      I2 => \cnt1_reg_n_0_[0]\,
      O => cnt11_carry_i_6_n_0
    );
\cnt1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => cnt112_in,
      I1 => Inport0_IBUF(1),
      I2 => \cnt1_reg_n_0_[0]\,
      O => \cnt1[0]_i_1_n_0\
    );
\cnt1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(10),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[10]\,
      O => \cnt1[10]_i_1_n_0\
    );
\cnt1[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(11),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[11]\,
      O => \cnt1[11]_i_1_n_0\
    );
\cnt1[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(12),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[12]\,
      O => \cnt1[12]_i_1_n_0\
    );
\cnt1[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[12]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(12)
    );
\cnt1[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[11]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(11)
    );
\cnt1[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[10]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(10)
    );
\cnt1[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[9]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(9)
    );
\cnt1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(13),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[13]\,
      O => \cnt1[13]_i_1_n_0\
    );
\cnt1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(14),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[14]\,
      O => \cnt1[14]_i_1_n_0\
    );
\cnt1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(15),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[15]\,
      O => \cnt1[15]_i_1_n_0\
    );
\cnt1[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(16),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[16]\,
      O => \cnt1[16]_i_1_n_0\
    );
\cnt1[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[16]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(16)
    );
\cnt1[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[15]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(15)
    );
\cnt1[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[14]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(14)
    );
\cnt1[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[13]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(13)
    );
\cnt1[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(17),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[17]\,
      O => \cnt1[17]_i_1_n_0\
    );
\cnt1[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(18),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[18]\,
      O => \cnt1[18]_i_1_n_0\
    );
\cnt1[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(19),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[19]\,
      O => \cnt1[19]_i_1_n_0\
    );
\cnt1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(1),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[1]\,
      O => \cnt1[1]_i_1_n_0\
    );
\cnt1[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(20),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[20]\,
      O => \cnt1[20]_i_1_n_0\
    );
\cnt1[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[20]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(20)
    );
\cnt1[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[19]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(19)
    );
\cnt1[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[18]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(18)
    );
\cnt1[20]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[17]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(17)
    );
\cnt1[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(21),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[21]\,
      O => \cnt1[21]_i_1_n_0\
    );
\cnt1[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(22),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[22]\,
      O => \cnt1[22]_i_1_n_0\
    );
\cnt1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(23),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[23]\,
      O => \cnt1[23]_i_1_n_0\
    );
\cnt1[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(24),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[24]\,
      O => \cnt1[24]_i_1_n_0\
    );
\cnt1[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[24]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(24)
    );
\cnt1[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[23]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(23)
    );
\cnt1[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[22]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(22)
    );
\cnt1[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[21]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(21)
    );
\cnt1[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(25),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[25]\,
      O => \cnt1[25]_i_1_n_0\
    );
\cnt1[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(26),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[26]\,
      O => \cnt1[26]_i_1_n_0\
    );
\cnt1[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(27),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[27]\,
      O => \cnt1[27]_i_1_n_0\
    );
\cnt1[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(28),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[28]\,
      O => \cnt1[28]_i_1_n_0\
    );
\cnt1[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[28]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(28)
    );
\cnt1[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[27]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(27)
    );
\cnt1[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[26]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(26)
    );
\cnt1[28]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[25]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(25)
    );
\cnt1[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(29),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[29]\,
      O => \cnt1[29]_i_1_n_0\
    );
\cnt1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(2),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[2]\,
      O => \cnt1[2]_i_1_n_0\
    );
\cnt1[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(30),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[30]\,
      O => \cnt1[30]_i_1_n_0\
    );
\cnt1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(31),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[31]\,
      O => \cnt1[31]_i_1_n_0\
    );
\cnt1[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[31]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(31)
    );
\cnt1[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[30]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(30)
    );
\cnt1[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[29]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(29)
    );
\cnt1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(3),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[3]\,
      O => \cnt1[3]_i_1_n_0\
    );
\cnt1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(4),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[4]\,
      O => \cnt1[4]_i_1_n_0\
    );
\cnt1[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[0]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(0)
    );
\cnt1[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[4]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(4)
    );
\cnt1[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[3]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(3)
    );
\cnt1[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[2]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(2)
    );
\cnt1[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[1]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(1)
    );
\cnt1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(5),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[5]\,
      O => \cnt1[5]_i_1_n_0\
    );
\cnt1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(6),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[6]\,
      O => \cnt1[6]_i_1_n_0\
    );
\cnt1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(7),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[7]\,
      O => \cnt1[7]_i_1_n_0\
    );
\cnt1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(8),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[8]\,
      O => \cnt1[8]_i_1_n_0\
    );
\cnt1[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[8]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(8)
    );
\cnt1[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[7]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(7)
    );
\cnt1[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[6]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(6)
    );
\cnt1[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt1_reg_n_0_[5]\,
      I1 => Inport0_IBUF(1),
      O => cnt1(5)
    );
\cnt1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => cnt10(9),
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      I3 => \cnt1_reg_n_0_[9]\,
      O => \cnt1[9]_i_1_n_0\
    );
\cnt1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[0]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[0]\,
      R => '0'
    );
\cnt1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[10]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[10]\,
      R => '0'
    );
\cnt1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[11]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[11]\,
      R => '0'
    );
\cnt1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[12]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[12]\,
      R => '0'
    );
\cnt1_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_reg[8]_i_2_n_0\,
      CO(3) => \cnt1_reg[12]_i_2_n_0\,
      CO(2) => \cnt1_reg[12]_i_2_n_1\,
      CO(1) => \cnt1_reg[12]_i_2_n_2\,
      CO(0) => \cnt1_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt10(12 downto 9),
      S(3 downto 0) => cnt1(12 downto 9)
    );
\cnt1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[13]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[13]\,
      R => '0'
    );
\cnt1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[14]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[14]\,
      R => '0'
    );
\cnt1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[15]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[15]\,
      R => '0'
    );
\cnt1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[16]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[16]\,
      R => '0'
    );
\cnt1_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_reg[12]_i_2_n_0\,
      CO(3) => \cnt1_reg[16]_i_2_n_0\,
      CO(2) => \cnt1_reg[16]_i_2_n_1\,
      CO(1) => \cnt1_reg[16]_i_2_n_2\,
      CO(0) => \cnt1_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt10(16 downto 13),
      S(3 downto 0) => cnt1(16 downto 13)
    );
\cnt1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[17]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[17]\,
      R => '0'
    );
\cnt1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[18]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[18]\,
      R => '0'
    );
\cnt1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[19]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[19]\,
      R => '0'
    );
\cnt1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[1]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[1]\,
      R => '0'
    );
\cnt1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[20]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[20]\,
      R => '0'
    );
\cnt1_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_reg[16]_i_2_n_0\,
      CO(3) => \cnt1_reg[20]_i_2_n_0\,
      CO(2) => \cnt1_reg[20]_i_2_n_1\,
      CO(1) => \cnt1_reg[20]_i_2_n_2\,
      CO(0) => \cnt1_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt10(20 downto 17),
      S(3 downto 0) => cnt1(20 downto 17)
    );
\cnt1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[21]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[21]\,
      R => '0'
    );
\cnt1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[22]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[22]\,
      R => '0'
    );
\cnt1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[23]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[23]\,
      R => '0'
    );
\cnt1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[24]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[24]\,
      R => '0'
    );
\cnt1_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_reg[20]_i_2_n_0\,
      CO(3) => \cnt1_reg[24]_i_2_n_0\,
      CO(2) => \cnt1_reg[24]_i_2_n_1\,
      CO(1) => \cnt1_reg[24]_i_2_n_2\,
      CO(0) => \cnt1_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt10(24 downto 21),
      S(3 downto 0) => cnt1(24 downto 21)
    );
\cnt1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[25]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[25]\,
      R => '0'
    );
\cnt1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[26]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[26]\,
      R => '0'
    );
\cnt1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[27]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[27]\,
      R => '0'
    );
\cnt1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[28]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[28]\,
      R => '0'
    );
\cnt1_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_reg[24]_i_2_n_0\,
      CO(3) => \cnt1_reg[28]_i_2_n_0\,
      CO(2) => \cnt1_reg[28]_i_2_n_1\,
      CO(1) => \cnt1_reg[28]_i_2_n_2\,
      CO(0) => \cnt1_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt10(28 downto 25),
      S(3 downto 0) => cnt1(28 downto 25)
    );
\cnt1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[29]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[29]\,
      R => '0'
    );
\cnt1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[2]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[2]\,
      R => '0'
    );
\cnt1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[30]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[30]\,
      R => '0'
    );
\cnt1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[31]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[31]\,
      R => '0'
    );
\cnt1_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt1_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt1_reg[31]_i_2_n_2\,
      CO(0) => \cnt1_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt1_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt10(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt1(31 downto 29)
    );
\cnt1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[3]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[3]\,
      R => '0'
    );
\cnt1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[4]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[4]\,
      R => '0'
    );
\cnt1_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt1_reg[4]_i_2_n_0\,
      CO(2) => \cnt1_reg[4]_i_2_n_1\,
      CO(1) => \cnt1_reg[4]_i_2_n_2\,
      CO(0) => \cnt1_reg[4]_i_2_n_3\,
      CYINIT => cnt1(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt10(4 downto 1),
      S(3 downto 0) => cnt1(4 downto 1)
    );
\cnt1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[5]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[5]\,
      R => '0'
    );
\cnt1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[6]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[6]\,
      R => '0'
    );
\cnt1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[7]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[7]\,
      R => '0'
    );
\cnt1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[8]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[8]\,
      R => '0'
    );
\cnt1_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_reg[4]_i_2_n_0\,
      CO(3) => \cnt1_reg[8]_i_2_n_0\,
      CO(2) => \cnt1_reg[8]_i_2_n_1\,
      CO(1) => \cnt1_reg[8]_i_2_n_2\,
      CO(0) => \cnt1_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt10(8 downto 5),
      S(3 downto 0) => cnt1(8 downto 5)
    );
\cnt1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => \cnt1[9]_i_1_n_0\,
      Q => \cnt1_reg_n_0_[9]\,
      R => '0'
    );
deb0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => deb0_reg_n_0,
      I1 => cnt010_in,
      I2 => Inport0_IBUF(0),
      O => deb0_i_1_n_0
    );
deb0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => deb0_i_1_n_0,
      Q => deb0_reg_n_0,
      R => '0'
    );
deb1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => deb1_reg_n_0,
      I1 => cnt112_in,
      I2 => Inport0_IBUF(1),
      O => deb1_i_1_n_0
    );
deb1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => '1',
      D => deb1_i_1_n_0,
      Q => deb1_reg_n_0,
      R => '0'
    );
\ledport0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      I1 => \ledport0[7]_i_2_n_0\,
      O => \ledport0[7]_i_1_n_0\
    );
\ledport0[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \IR_reg_n_0_[2]\,
      I1 => \IR_reg_n_0_[7]\,
      I2 => F(2),
      I3 => \IR_reg_n_0_[3]\,
      I4 => \ledport0[7]_i_3_n_0\,
      I5 => U2_n_17,
      O => \ledport0[7]_i_2_n_0\
    );
\ledport0[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => F(1),
      I1 => F(0),
      O => \ledport0[7]_i_3_n_0\
    );
\ledport0_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport0[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U1_n_6,
      Q => Q(0)
    );
\ledport0_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport0[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_7,
      Q => Q(1)
    );
\ledport0_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport0[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_6,
      Q => Q(2)
    );
\ledport0_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport0[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_5,
      Q => Q(3)
    );
\ledport0_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport0[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(0),
      Q => Q(4)
    );
\ledport0_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport0[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(1),
      Q => Q(5)
    );
\ledport0_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport0[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(2),
      Q => Q(6)
    );
\ledport0_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport0[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(3),
      Q => Q(7)
    );
\ledport1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in,
      I1 => \ledport0[7]_i_2_n_0\,
      O => \ledport1[7]_i_1_n_0\
    );
\ledport1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport1[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U1_n_6,
      Q => \Outport1[7]\(0)
    );
\ledport1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport1[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_7,
      Q => \Outport1[7]\(1)
    );
\ledport1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport1[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_6,
      Q => \Outport1[7]\(2)
    );
\ledport1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport1[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => U2_n_5,
      Q => \Outport1[7]\(3)
    );
\ledport1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport1[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(0),
      Q => \Outport1[7]\(4)
    );
\ledport1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport1[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(1),
      Q => \Outport1[7]\(5)
    );
\ledport1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport1[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(2),
      Q => \Outport1[7]\(6)
    );
\ledport1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \ledport1[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => BCD_Num(3),
      Q => \Outport1[7]\(7)
    );
\sevport0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \IR_reg_n_0_[0]\,
      I1 => \sevport0[6]_i_3_n_0\,
      O => \sevport0[6]_i_1_n_0\
    );
\sevport0[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \A[7]_i_8_n_0\,
      I1 => F(1),
      I2 => F(2),
      I3 => F(0),
      I4 => p_0_in,
      I5 => \IR_reg_n_0_[2]\,
      O => \sevport0[6]_i_3_n_0\
    );
\sevport0_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => SEV_SEG(0),
      PRE => reset_IBUF,
      Q => \seg_reg[6]\(0)
    );
\sevport0_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => SEV_SEG(1),
      PRE => reset_IBUF,
      Q => \seg_reg[6]\(1)
    );
\sevport0_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => SEV_SEG(2),
      PRE => reset_IBUF,
      Q => \seg_reg[6]\(2)
    );
\sevport0_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => SEV_SEG(3),
      PRE => reset_IBUF,
      Q => \seg_reg[6]\(3)
    );
\sevport0_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => SEV_SEG(4),
      PRE => reset_IBUF,
      Q => \seg_reg[6]\(4)
    );
\sevport0_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => SEV_SEG(5),
      PRE => reset_IBUF,
      Q => \seg_reg[6]\(5)
    );
\sevport0_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => SEV_SEG(6),
      PRE => reset_IBUF,
      Q => \seg_reg[6]\(6)
    );
\sevport1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => U2_n_14,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_0\(0)
    );
\sevport1_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => U2_n_13,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_0\(1)
    );
\sevport1_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => U2_n_12,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_0\(2)
    );
\sevport1_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => U2_n_11,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_0\(3)
    );
\sevport1_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => U2_n_10,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_0\(4)
    );
\sevport1_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => U2_n_9,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_0\(5)
    );
\sevport1_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport0[6]_i_1_n_0\,
      D => U2_n_8,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_0\(6)
    );
\sevport2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \IR_reg_n_0_[0]\,
      I1 => \sevport0[6]_i_3_n_0\,
      O => \sevport2[6]_i_1_n_0\
    );
\sevport2_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => SEV_SEG(0),
      PRE => reset_IBUF,
      Q => \seg_reg[6]_1\(0)
    );
\sevport2_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => SEV_SEG(1),
      PRE => reset_IBUF,
      Q => \seg_reg[6]_1\(1)
    );
\sevport2_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => SEV_SEG(2),
      PRE => reset_IBUF,
      Q => \seg_reg[6]_1\(2)
    );
\sevport2_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => SEV_SEG(3),
      PRE => reset_IBUF,
      Q => \seg_reg[6]_1\(3)
    );
\sevport2_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => SEV_SEG(4),
      PRE => reset_IBUF,
      Q => \seg_reg[6]_1\(4)
    );
\sevport2_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => SEV_SEG(5),
      PRE => reset_IBUF,
      Q => \seg_reg[6]_1\(5)
    );
\sevport2_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => SEV_SEG(6),
      PRE => reset_IBUF,
      Q => \seg_reg[6]_1\(6)
    );
\sevport3_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => U2_n_14,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_2\(0)
    );
\sevport3_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => U2_n_13,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_2\(1)
    );
\sevport3_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => U2_n_12,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_2\(2)
    );
\sevport3_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => U2_n_11,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_2\(3)
    );
\sevport3_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => U2_n_10,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_2\(4)
    );
\sevport3_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => U2_n_9,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_2\(5)
    );
\sevport3_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => \sevport2[6]_i_1_n_0\,
      D => U2_n_8,
      PRE => reset_IBUF,
      Q => \seg_reg[6]_2\(6)
    );
\temp[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => \PC[8]_i_5_n_0\,
      I1 => \PC[8]_i_6_n_0\,
      I2 => \PC[8]_i_7_n_0\,
      I3 => \PC[8]_i_8_n_0\,
      I4 => CurrState(0),
      I5 => CurrState(1),
      O => \temp[0]_i_3_n_0\
    );
\temp[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(3),
      O => \temp[0]_i_4_n_0\
    );
\temp[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(2),
      O => \temp[0]_i_5_n_0\
    );
\temp[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(1),
      O => \temp[0]_i_6_n_0\
    );
\temp[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_reg(0),
      O => \temp[0]_i_7_n_0\
    );
\temp[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(15),
      O => \temp[12]_i_2_n_0\
    );
\temp[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(14),
      O => \temp[12]_i_3_n_0\
    );
\temp[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(13),
      O => \temp[12]_i_4_n_0\
    );
\temp[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(12),
      O => \temp[12]_i_5_n_0\
    );
\temp[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(19),
      O => \temp[16]_i_2_n_0\
    );
\temp[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(18),
      O => \temp[16]_i_3_n_0\
    );
\temp[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(17),
      O => \temp[16]_i_4_n_0\
    );
\temp[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(16),
      O => \temp[16]_i_5_n_0\
    );
\temp[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(23),
      O => \temp[20]_i_2_n_0\
    );
\temp[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(22),
      O => \temp[20]_i_3_n_0\
    );
\temp[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(21),
      O => \temp[20]_i_4_n_0\
    );
\temp[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(20),
      O => \temp[20]_i_5_n_0\
    );
\temp[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(27),
      O => \temp[24]_i_2_n_0\
    );
\temp[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(26),
      O => \temp[24]_i_3_n_0\
    );
\temp[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(25),
      O => \temp[24]_i_4_n_0\
    );
\temp[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(24),
      O => \temp[24]_i_5_n_0\
    );
\temp[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(31),
      O => \temp[28]_i_2_n_0\
    );
\temp[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(30),
      O => \temp[28]_i_3_n_0\
    );
\temp[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(29),
      O => \temp[28]_i_4_n_0\
    );
\temp[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(28),
      O => \temp[28]_i_5_n_0\
    );
\temp[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(7),
      O => \temp[4]_i_2_n_0\
    );
\temp[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(6),
      O => \temp[4]_i_3_n_0\
    );
\temp[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(5),
      O => \temp[4]_i_4_n_0\
    );
\temp[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(4),
      O => \temp[4]_i_5_n_0\
    );
\temp[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(11),
      O => \temp[8]_i_2_n_0\
    );
\temp[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(10),
      O => \temp[8]_i_3_n_0\
    );
\temp[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(9),
      O => \temp[8]_i_4_n_0\
    );
\temp[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_reg(8),
      O => \temp[8]_i_5_n_0\
    );
\temp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[0]_i_2_n_7\,
      Q => temp_reg(0)
    );
\temp_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp_reg[0]_i_2_n_0\,
      CO(2) => \temp_reg[0]_i_2_n_1\,
      CO(1) => \temp_reg[0]_i_2_n_2\,
      CO(0) => \temp_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \temp_reg[0]_i_2_n_4\,
      O(2) => \temp_reg[0]_i_2_n_5\,
      O(1) => \temp_reg[0]_i_2_n_6\,
      O(0) => \temp_reg[0]_i_2_n_7\,
      S(3) => \temp[0]_i_4_n_0\,
      S(2) => \temp[0]_i_5_n_0\,
      S(1) => \temp[0]_i_6_n_0\,
      S(0) => \temp[0]_i_7_n_0\
    );
\temp_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[8]_i_1_n_5\,
      Q => temp_reg(10)
    );
\temp_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[8]_i_1_n_4\,
      Q => temp_reg(11)
    );
\temp_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[12]_i_1_n_7\,
      Q => temp_reg(12)
    );
\temp_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[8]_i_1_n_0\,
      CO(3) => \temp_reg[12]_i_1_n_0\,
      CO(2) => \temp_reg[12]_i_1_n_1\,
      CO(1) => \temp_reg[12]_i_1_n_2\,
      CO(0) => \temp_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \temp_reg[12]_i_1_n_4\,
      O(2) => \temp_reg[12]_i_1_n_5\,
      O(1) => \temp_reg[12]_i_1_n_6\,
      O(0) => \temp_reg[12]_i_1_n_7\,
      S(3) => \temp[12]_i_2_n_0\,
      S(2) => \temp[12]_i_3_n_0\,
      S(1) => \temp[12]_i_4_n_0\,
      S(0) => \temp[12]_i_5_n_0\
    );
\temp_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[12]_i_1_n_6\,
      Q => temp_reg(13)
    );
\temp_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[12]_i_1_n_5\,
      Q => temp_reg(14)
    );
\temp_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[12]_i_1_n_4\,
      Q => temp_reg(15)
    );
\temp_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[16]_i_1_n_7\,
      Q => temp_reg(16)
    );
\temp_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[12]_i_1_n_0\,
      CO(3) => \temp_reg[16]_i_1_n_0\,
      CO(2) => \temp_reg[16]_i_1_n_1\,
      CO(1) => \temp_reg[16]_i_1_n_2\,
      CO(0) => \temp_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \temp_reg[16]_i_1_n_4\,
      O(2) => \temp_reg[16]_i_1_n_5\,
      O(1) => \temp_reg[16]_i_1_n_6\,
      O(0) => \temp_reg[16]_i_1_n_7\,
      S(3) => \temp[16]_i_2_n_0\,
      S(2) => \temp[16]_i_3_n_0\,
      S(1) => \temp[16]_i_4_n_0\,
      S(0) => \temp[16]_i_5_n_0\
    );
\temp_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[16]_i_1_n_6\,
      Q => temp_reg(17)
    );
\temp_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[16]_i_1_n_5\,
      Q => temp_reg(18)
    );
\temp_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[16]_i_1_n_4\,
      Q => temp_reg(19)
    );
\temp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[0]_i_2_n_6\,
      Q => temp_reg(1)
    );
\temp_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[20]_i_1_n_7\,
      Q => temp_reg(20)
    );
\temp_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[16]_i_1_n_0\,
      CO(3) => \temp_reg[20]_i_1_n_0\,
      CO(2) => \temp_reg[20]_i_1_n_1\,
      CO(1) => \temp_reg[20]_i_1_n_2\,
      CO(0) => \temp_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \temp_reg[20]_i_1_n_4\,
      O(2) => \temp_reg[20]_i_1_n_5\,
      O(1) => \temp_reg[20]_i_1_n_6\,
      O(0) => \temp_reg[20]_i_1_n_7\,
      S(3) => \temp[20]_i_2_n_0\,
      S(2) => \temp[20]_i_3_n_0\,
      S(1) => \temp[20]_i_4_n_0\,
      S(0) => \temp[20]_i_5_n_0\
    );
\temp_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[20]_i_1_n_6\,
      Q => temp_reg(21)
    );
\temp_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[20]_i_1_n_5\,
      Q => temp_reg(22)
    );
\temp_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[20]_i_1_n_4\,
      Q => temp_reg(23)
    );
\temp_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[24]_i_1_n_7\,
      Q => temp_reg(24)
    );
\temp_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[20]_i_1_n_0\,
      CO(3) => \temp_reg[24]_i_1_n_0\,
      CO(2) => \temp_reg[24]_i_1_n_1\,
      CO(1) => \temp_reg[24]_i_1_n_2\,
      CO(0) => \temp_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \temp_reg[24]_i_1_n_4\,
      O(2) => \temp_reg[24]_i_1_n_5\,
      O(1) => \temp_reg[24]_i_1_n_6\,
      O(0) => \temp_reg[24]_i_1_n_7\,
      S(3) => \temp[24]_i_2_n_0\,
      S(2) => \temp[24]_i_3_n_0\,
      S(1) => \temp[24]_i_4_n_0\,
      S(0) => \temp[24]_i_5_n_0\
    );
\temp_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[24]_i_1_n_6\,
      Q => temp_reg(25)
    );
\temp_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[24]_i_1_n_5\,
      Q => temp_reg(26)
    );
\temp_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[24]_i_1_n_4\,
      Q => temp_reg(27)
    );
\temp_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[28]_i_1_n_7\,
      Q => temp_reg(28)
    );
\temp_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[24]_i_1_n_0\,
      CO(3) => \NLW_temp_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \temp_reg[28]_i_1_n_1\,
      CO(1) => \temp_reg[28]_i_1_n_2\,
      CO(0) => \temp_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \temp_reg[28]_i_1_n_4\,
      O(2) => \temp_reg[28]_i_1_n_5\,
      O(1) => \temp_reg[28]_i_1_n_6\,
      O(0) => \temp_reg[28]_i_1_n_7\,
      S(3) => \temp[28]_i_2_n_0\,
      S(2) => \temp[28]_i_3_n_0\,
      S(1) => \temp[28]_i_4_n_0\,
      S(0) => \temp[28]_i_5_n_0\
    );
\temp_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[28]_i_1_n_6\,
      Q => temp_reg(29)
    );
\temp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[0]_i_2_n_5\,
      Q => temp_reg(2)
    );
\temp_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[28]_i_1_n_5\,
      Q => temp_reg(30)
    );
\temp_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[28]_i_1_n_4\,
      Q => temp_reg(31)
    );
\temp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[0]_i_2_n_4\,
      Q => temp_reg(3)
    );
\temp_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[4]_i_1_n_7\,
      Q => temp_reg(4)
    );
\temp_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[0]_i_2_n_0\,
      CO(3) => \temp_reg[4]_i_1_n_0\,
      CO(2) => \temp_reg[4]_i_1_n_1\,
      CO(1) => \temp_reg[4]_i_1_n_2\,
      CO(0) => \temp_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \temp_reg[4]_i_1_n_4\,
      O(2) => \temp_reg[4]_i_1_n_5\,
      O(1) => \temp_reg[4]_i_1_n_6\,
      O(0) => \temp_reg[4]_i_1_n_7\,
      S(3) => \temp[4]_i_2_n_0\,
      S(2) => \temp[4]_i_3_n_0\,
      S(1) => \temp[4]_i_4_n_0\,
      S(0) => \temp[4]_i_5_n_0\
    );
\temp_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[4]_i_1_n_6\,
      Q => temp_reg(5)
    );
\temp_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[4]_i_1_n_5\,
      Q => temp_reg(6)
    );
\temp_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[4]_i_1_n_4\,
      Q => temp_reg(7)
    );
\temp_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[8]_i_1_n_7\,
      Q => temp_reg(8)
    );
\temp_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[4]_i_1_n_0\,
      CO(3) => \temp_reg[8]_i_1_n_0\,
      CO(2) => \temp_reg[8]_i_1_n_1\,
      CO(1) => \temp_reg[8]_i_1_n_2\,
      CO(0) => \temp_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \temp_reg[8]_i_1_n_4\,
      O(2) => \temp_reg[8]_i_1_n_5\,
      O(1) => \temp_reg[8]_i_1_n_6\,
      O(0) => \temp_reg[8]_i_1_n_7\,
      S(3) => \temp[8]_i_2_n_0\,
      S(2) => \temp[8]_i_3_n_0\,
      S(1) => \temp[8]_i_4_n_0\,
      S(0) => \temp[8]_i_5_n_0\
    );
\temp_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1Hz_BUFG,
      CE => U2_n_15,
      CLR => reset_IBUF,
      D => \temp_reg[8]_i_1_n_6\,
      Q => temp_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_level is
  port (
    clk100MHz : in STD_LOGIC;
    reset : in STD_LOGIC;
    Inport0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Inport1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Outport0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Outport1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seven_seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    digit_seg : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_level : entity is true;
end top_level;

architecture STRUCTURE of top_level is
  signal Inport0_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Inport1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Outport0_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Outport1_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk100MHz_IBUF : STD_LOGIC;
  signal clk100MHz_IBUF_BUFG : STD_LOGIC;
  signal clk1Hz : STD_LOGIC;
  signal clk1Hz_BUFG : STD_LOGIC;
  signal clk250Hz : STD_LOGIC;
  signal digit_seg_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal seven_seg_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sevport0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sevport1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sevport2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sevport3 : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
C1: entity work.clk_div
     port map (
      clk100MHz_IBUF_BUFG => clk100MHz_IBUF_BUFG,
      clk1Hz => clk1Hz,
      clk250Hz => clk250Hz,
      reset_IBUF => reset_IBUF
    );
\Inport0_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport0(0),
      O => Inport0_IBUF(0)
    );
\Inport0_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport0(1),
      O => Inport0_IBUF(1)
    );
\Inport0_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport0(2),
      O => Inport0_IBUF(2)
    );
\Inport0_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport0(3),
      O => Inport0_IBUF(3)
    );
\Inport0_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport0(4),
      O => Inport0_IBUF(4)
    );
\Inport0_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport0(5),
      O => Inport0_IBUF(5)
    );
\Inport0_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport0(6),
      O => Inport0_IBUF(6)
    );
\Inport0_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport0(7),
      O => Inport0_IBUF(7)
    );
\Inport1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport1(0),
      O => Inport1_IBUF(0)
    );
\Inport1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport1(1),
      O => Inport1_IBUF(1)
    );
\Inport1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport1(2),
      O => Inport1_IBUF(2)
    );
\Inport1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport1(3),
      O => Inport1_IBUF(3)
    );
\Inport1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport1(4),
      O => Inport1_IBUF(4)
    );
\Inport1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport1(5),
      O => Inport1_IBUF(5)
    );
\Inport1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport1(6),
      O => Inport1_IBUF(6)
    );
\Inport1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Inport1(7),
      O => Inport1_IBUF(7)
    );
L1: entity work.cpu
     port map (
      Inport0_IBUF(7 downto 0) => Inport0_IBUF(7 downto 0),
      Inport1_IBUF(7 downto 0) => Inport1_IBUF(7 downto 0),
      \Outport1[7]\(7 downto 0) => Outport1_OBUF(7 downto 0),
      Q(7 downto 0) => Outport0_OBUF(7 downto 0),
      clk1Hz_BUFG => clk1Hz_BUFG,
      reset_IBUF => reset_IBUF,
      \seg_reg[6]\(6 downto 0) => sevport0(6 downto 0),
      \seg_reg[6]_0\(6 downto 0) => sevport1(6 downto 0),
      \seg_reg[6]_1\(6 downto 0) => sevport2(6 downto 0),
      \seg_reg[6]_2\(6 downto 0) => sevport3(6 downto 0)
    );
M1: entity work.seg_mux
     port map (
      Q(6 downto 0) => seven_seg_OBUF(6 downto 0),
      clk250Hz => clk250Hz,
      digit_seg_OBUF(3 downto 0) => digit_seg_OBUF(3 downto 0),
      reset_IBUF => reset_IBUF,
      \sevport0_reg[6]\(6 downto 0) => sevport0(6 downto 0),
      \sevport1_reg[6]\(6 downto 0) => sevport1(6 downto 0),
      \sevport2_reg[6]\(6 downto 0) => sevport2(6 downto 0),
      \sevport3_reg[6]\(6 downto 0) => sevport3(6 downto 0)
    );
\Outport0_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport0_OBUF(0),
      O => Outport0(0)
    );
\Outport0_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport0_OBUF(1),
      O => Outport0(1)
    );
\Outport0_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport0_OBUF(2),
      O => Outport0(2)
    );
\Outport0_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport0_OBUF(3),
      O => Outport0(3)
    );
\Outport0_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport0_OBUF(4),
      O => Outport0(4)
    );
\Outport0_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport0_OBUF(5),
      O => Outport0(5)
    );
\Outport0_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport0_OBUF(6),
      O => Outport0(6)
    );
\Outport0_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport0_OBUF(7),
      O => Outport0(7)
    );
\Outport1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport1_OBUF(0),
      O => Outport1(0)
    );
\Outport1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport1_OBUF(1),
      O => Outport1(1)
    );
\Outport1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport1_OBUF(2),
      O => Outport1(2)
    );
\Outport1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport1_OBUF(3),
      O => Outport1(3)
    );
\Outport1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport1_OBUF(4),
      O => Outport1(4)
    );
\Outport1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport1_OBUF(5),
      O => Outport1(5)
    );
\Outport1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport1_OBUF(6),
      O => Outport1(6)
    );
\Outport1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Outport1_OBUF(7),
      O => Outport1(7)
    );
clk100MHz_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk100MHz_IBUF,
      O => clk100MHz_IBUF_BUFG
    );
clk100MHz_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk100MHz,
      O => clk100MHz_IBUF
    );
clk1Hz_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk1Hz,
      O => clk1Hz_BUFG
    );
\digit_seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => digit_seg_OBUF(0),
      O => digit_seg(0)
    );
\digit_seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => digit_seg_OBUF(1),
      O => digit_seg(1)
    );
\digit_seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => digit_seg_OBUF(2),
      O => digit_seg(2)
    );
\digit_seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => digit_seg_OBUF(3),
      O => digit_seg(3)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\seven_seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seven_seg_OBUF(0),
      O => seven_seg(0)
    );
\seven_seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seven_seg_OBUF(1),
      O => seven_seg(1)
    );
\seven_seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seven_seg_OBUF(2),
      O => seven_seg(2)
    );
\seven_seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seven_seg_OBUF(3),
      O => seven_seg(3)
    );
\seven_seg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seven_seg_OBUF(4),
      O => seven_seg(4)
    );
\seven_seg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seven_seg_OBUF(5),
      O => seven_seg(5)
    );
\seven_seg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seven_seg_OBUF(6),
      O => seven_seg(6)
    );
end STRUCTURE;
