----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/25/2017 01:28:04 PM
-- Design Name:
-- Module Name: colorbars_tb - Behavioral
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
use ieee.numeric_std.all;
use IEEE.NUMERIC_STD.all;

entity colorbars_tb is
--  Port ( );
end colorbars_tb;



architecture Behavioral of colorbars_tb is

  component colorbars is
  Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0); blank : in STD_LOGIC;
        Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
  end component;

  signal hcount,vcount : STD_LOGIC_VECTOR(10 downto 0);
  signal blank : STD_LOGIC;
  signal Red,Green,Blue : STD_LOGIC_VECTOR(3 downto 0);

begin

  ColorPicker1: colorbars port map (
    hcount => hcount,
    vcount => vcount,
    blank => blank,
    Red => Red,
    Green => Green,
    Blue => Blue);

  vhcount_process: process
  begin
    blank <= '0';
    for j in 0 to 479 loop
      vcount <= std_logic_vector( to_unsigned(j,vcount'length));
      for i in 0 to 639 loop
        hcount <= std_logic_vector( to_unsigned(i,hcount'length));
        wait for 40 ns;
      end loop;
    end loop;
  end process;


end Behavioral;
