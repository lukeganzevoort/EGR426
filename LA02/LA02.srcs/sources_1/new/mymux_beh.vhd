----------------------------------------------------------------------------------
-- Company: GVSU EGR-426
-- Engineer: Luke Ganzevoort
-- Create Date: 01/26/2017 05:13:40 PM
-- Module Name: mymux_beh - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mymux_beh is
  port (x,y,s : in STD_LOGIC;
    m: out STD_LOGIC);
end mymux_beh;

architecture Behavioral of mymux_beh is

begin
  process(x,y,s)
    begin
    case s is
      when '0' => m <= x;
      when '1' => m <= y;
      when others => m <= 'X';
    end case;
  end process;
end Behavioral;
