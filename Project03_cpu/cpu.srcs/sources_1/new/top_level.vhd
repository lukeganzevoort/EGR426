----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/30/2017 06:06:45 PM
-- Design Name:
-- Module Name: top_level - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity top_level is
  port( clk100MHz, reset : in std_logic;
    Inport0, Inport1 : in std_logic_vector(7 downto 0);
    Outport0, Outport1 : out std_logic_vector(7 downto 0);
    seven_seg : out std_logic_vector(6 downto 0);
    digit_seg : out std_logic_vector(3 downto 0));
end top_level;

architecture Behavioral of top_level is

  component clk_div is
    Port ( clk_in_100Mhz, reset : in STD_LOGIC;
           clk_out1Hz, clk_out250Hz : out STD_LOGIC);
  end component;

  component seg_mux is
      Port ( clk4ms, reset : in STD_LOGIC;
        sev_seg_0, sev_seg_1, sev_seg_2, sev_seg_3 : in STD_LOGIC_VECTOR (6 downto 0);
        seg : out STD_LOGIC_VECTOR (6 downto 0);
        dig : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  component cpu is
    PORT(clk, clk100MHz : in STD_LOGIC;
    	 reset : in STD_LOGIC;
    	 Inport0, Inport1 : in STD_LOGIC_VECTOR(7 downto 0);
    	 ledport0, ledport1	: out STD_LOGIC_VECTOR(7 downto 0);
    	 sevport0, sevport1, sevport2, sevport3 : out std_logic_vector(6 downto 0) := "1111111");
  end component;

  signal clk250Hz, clk1Hz : std_logic;
  signal sevport0, sevport1, sevport2, sevport3 : std_logic_vector(6 downto 0);
  signal rst : std_logic := '0';
  --signal seven_seg : std_logic_vector(6 downto 0);
  --signal digit_seg : std_logic_vector(3 downto 0);

begin

  -- outport0_temp <= "00010010";
  -- outport1_temp <= "01001111";

  L1 : cpu port map (
    clk => clk1Hz,
    clk100MHz => clk100MHz,
    reset => reset,
    Inport0 => Inport0,
    Inport1 => Inport1,
    ledport0 => Outport0,
    ledport1 => Outport1,
    sevport0 => sevport0,
    sevport1 => sevport1,
    sevport2 => sevport2,
    sevport3 => sevport3);

  C1 : clk_div port map (
    clk_in_100Mhz => clk100MHz,
    reset => reset,
    clk_out1Hz => clk1Hz,
    clk_out250Hz => clk250Hz);

  M1 : seg_mux port map (
    clk4ms => clk250Hz,
    reset => reset,
    sev_seg_0 => sevport0,
    sev_seg_1 => sevport1,
    sev_seg_2 => sevport2,
    sev_seg_3 => sevport3,
    seg => seven_seg,
    dig => digit_seg);


end Behavioral;
