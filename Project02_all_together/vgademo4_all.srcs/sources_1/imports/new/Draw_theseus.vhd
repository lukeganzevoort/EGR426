--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/12/2017
--
-- Module: draw_theseus.vhd
-- Description: This file draws Theseus on the VGA screen using vcount
--  and hcount, as a green box.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity draw_theseus is
Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
  clk_25MHz : in std_logic;
  theseus_X : in integer range 0 to 640 := 0;
  theseus_Y : in integer range 0 to 480 := 0;
  Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end draw_theseus;

architecture Behavioral of draw_theseus is
begin
  -- Set the red and blue pixels to be off always when drawing theseus
  --------------------------------------------------------------------
  Red <= X"0";
  Blue <= X"0";

  -- Draw Theseus
  -------------------------------------------------------------------
  process(hcount,vcount, theseus_X, theseus_Y, clk_25MHz)
  begin
    if(vcount < theseus_Y+15 and vcount > theseus_Y-15 and
    hcount < theseus_X+15 and hcount > theseus_X-15) then
      Green <= X"F";
    else
      Green <= X"0";
    end if;
  end process;
end Behavioral;
