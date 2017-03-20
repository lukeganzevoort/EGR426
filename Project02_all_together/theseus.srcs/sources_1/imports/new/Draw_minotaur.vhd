--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/12/2017
--
-- Module: draw_minotaur.vhd
-- Description: This file draws the minotaur on the VGA screen using vcount
--  and hcount, as a red box.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity draw_minotaur is
Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
  clk_25MHz : in std_logic;
  minotaur_X : in integer range 0 to 640 := 0;
  minotaur_Y : in integer range 0 to 480 := 0;
  Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end draw_minotaur;

architecture Behavioral of draw_minotaur is
begin
  -- Set the blues and the greens to be off always
  ----------------------------------------------------------
  Green <= X"0";
  Blue <= X"0";

  -- Draw the Minotaur
  -------------------------------------------------------------------
  process(hcount,vcount, minotaur_X, minotaur_Y, clk_25MHz)
  begin
    if(vcount < minotaur_Y+15 and vcount > minotaur_Y-15 and
    hcount < minotaur_X+15 and hcount > minotaur_X-15) then
      Red <= X"F";
    else
      Red <= X"0";
    end if;
  end process;
end Behavioral;
