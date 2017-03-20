--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 01/26/2017 08:11:31 PM
-- Module Name: clk_divider - Behavioral
-- Description: This file divides the 100MHz clock into a 25kHz clock
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Define the input of a 100 MHz clock signal
-- Define the outputs of a 25kHz clock signal
entity clk_divider_25kHz is
    Port ( clk_in_100Mhz : in STD_LOGIC;
           clk_out25kHz : out STD_LOGIC);
end clk_divider_25kHz;

architecture Behavioral of clk_divider_25kHz is

begin

  -- Process to begin every change of the 100MHz native clock
  ClkDivider: process(clk_in_100Mhz)
    variable clkCnt25kHz : integer := 0; -- Variables to wait for time
    variable clk25kHz : std_logic := '0'; -- Variables to simulate clock

    begin
    if rising_edge(clk_in_100Mhz) then

      -- Create a 25kHz clock
      clkCnt25kHz := clkCnt25kHz + 1; -- Every rising edge of the 100MHz clock, increment
      if clkCnt25kHz = 4000 then -- If 0.04ms has passed...
        clkCnt25kHz := 0;
        clk25kHz := not clk25kHz; -- Invert the variable
      end if;
    end if;

    -- Set the outputs
    clk_out25kHz <= clk25kHz;

  end process;

end Behavioral;
