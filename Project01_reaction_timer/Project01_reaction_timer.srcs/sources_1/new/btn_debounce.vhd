--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 01/27/2017 10:15:31 PM
-- Module Name: btn_debounce - Behavioral
-- Description: This file debounces buttons by checking if they have been
--    pressed for more than 0.5ms. If at any point the button reads that it
--    is not pressed, the 0.5ms counter starts over.
--------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity btn_debounce is
    Port ( clk100MHz : in STD_LOGIC;
           btn_in : in STD_LOGIC;
           btn_press : out STD_LOGIC);
end btn_debounce;

architecture Behavioral of btn_debounce is

begin

process(clk100MHz)
  variable confidence : integer;
  begin

  -- On the rising edge of the 100 MHz clock...
  if rising_edge(clk100MHz) then
    -- Check if the button is pressed...
    if btn_in = '1' then
      -- If the button has been pressed for less than 0.5ms...
      if confidence < 50000 then
        -- Increase the confidence by 1 (10ns of confidence)
        confidence := confidence + 1;
      end if;
    else
      -- If the button is not pressed, clear the confidence
      confidence := 0;
    end if;
  end if;
  -- If the confidence is equal to 50000 (0.5ms of confidence)...
  if confidence = 50000 then
    -- output the button as being pressed
    btn_press <= '1';
  else
    -- If not, output the button and being released
    btn_press <= '0';
  end if;
end process;

end Behavioral;
