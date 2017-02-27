--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 01/26/2017 08:11:31 PM
-- Module Name: clk_divider - Behavioral
-- Description: This file divides the 100MHz clock into a 4ms clock and a 1ms
--   clock.
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Define the input of a 100 MHz clock signal
-- Define the outputs of a 4ms clock signal and a 1ms clock signal
entity clk_divider is
    Port ( clk_in_100Mhz : in STD_LOGIC;
           clk_out4ms, clk_out1ms : out STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is

begin

-- Process to begin every change of the 100MHz native clock
ClkDivider: process(clk_in_100Mhz)
  variable clkCnt4ms, clkCnt1ms : integer := 0; -- Variables to wait for time
  variable clk4ms, clk1ms : std_logic := '0'; -- Variables to simulate clock

  begin
  if rising_edge(clk_in_100Mhz) then

   -- Create a 4ms clock
    clkCnt4ms := clkCnt4ms + 1; -- Every rising edge of the 100MHz clock, increment
    if clkCnt4ms = 200000 then -- If 2ms has passed...
      clkCnt4ms := 0;
      clk4ms := not clk4ms; -- Invert the clk4ms variable
    end if;

    -- Create a 1ms clock
    clkCnt1ms := clkCnt1ms + 1; -- Every rising edge of the 100MHz clock, increment
    if clkCnt1ms = 50000 then -- If 0.5ms has passed...
      clkCnt1ms := 0;
      clk1ms := not clk1ms; -- Invert the clk1ms variable
    end if;
  end if;

  -- Set the outputs
  clk_out4ms <= clk4ms;
  clk_out1ms <= clk1ms;

end process;


end Behavioral;
