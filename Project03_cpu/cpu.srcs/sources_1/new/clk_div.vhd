--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 03/30/2017
-- Module Name: clk_divider - Behavioral
-- Description: This file divides the 100MHz clock into a 1Hz clock
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Define the input of a 100 MHz clock signal
-- Define the outputs of a 1Hz clock signal
entity clk_div is
    Port ( clk_in_100Mhz, reset : in STD_LOGIC;
           clk_out1Hz, clk_out250Hz : out STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is

begin

  -- Process to begin every change of the 100MHz native clock
  ClkDivider: process(clk_in_100Mhz,reset)
    variable clkCnt1Hz, clkCnt250Hz : integer := 0; -- Variables to wait for time
    variable clk1Hz, clk250Hz : std_logic := '0'; -- Variables to simulate clock

    begin
    if (reset = '1') then
      clkCnt1Hz := 0;
      clkCnt250Hz := 0;
      clk1Hz := '0';
      clk250Hz := '0';

    elsif rising_edge(clk_in_100Mhz) then

      -- Create a 1Hz clock
      clkCnt1Hz := clkCnt1Hz + 1;
      if clkCnt1Hz = (100000000/6) then
        clkCnt1Hz := 0;
        clk1Hz := not clk1Hz;
      end if;

      -- Create a 250Hz clock
      clkCnt250Hz := clkCnt250Hz + 1;
      if clkCnt250Hz = (400000/2) then
        clkCnt250Hz := 0;
        clk250Hz := not clk250Hz;
      end if;



    end if;

    -- Set the outputs
    clk_out1Hz <= clk1Hz;
    clk_out250Hz <= clk250Hz;

  end process;

end Behavioral;
