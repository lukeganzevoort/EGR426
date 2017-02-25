--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
--Date        : Sat Jan 14 20:28:00 2017
--Host        : Luke-laptop running 64-bit major release  (build 9200)
--Command     : generate_target counter_wrapper.bd
--Design      : counter_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_wrapper is
  port (
    Ledout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clkin : in STD_LOGIC
  );
end counter_wrapper;

architecture STRUCTURE of counter_wrapper is
  component counter is
  port (
    clkin : in STD_LOGIC;
    Ledout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component counter;
begin
counter_i: component counter
     port map (
      Ledout(1 downto 0) => Ledout(1 downto 0),
      clkin => clkin
    );
end STRUCTURE;
