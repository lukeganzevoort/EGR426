--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
--Date        : Sat Jan 14 20:28:00 2017
--Host        : Luke-laptop running 64-bit major release  (build 9200)
--Command     : generate_target counter.bd
--Design      : counter
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    Ledout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clkin : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of counter : entity is "counter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=counter,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of counter : entity is "counter.hwdef";
end counter;

architecture STRUCTURE of counter is
  component counter_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component counter_c_counter_binary_0_0;
  signal CLK_1 : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  CLK_1 <= clkin;
  Ledout(1 downto 0) <= c_counter_binary_0_Q(1 downto 0);
c_counter_binary_0: component counter_c_counter_binary_0_0
     port map (
      CLK => CLK_1,
      Q(1 downto 0) => c_counter_binary_0_Q(1 downto 0)
    );
end STRUCTURE;
