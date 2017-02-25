----------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 02/16/2017 05:51:11 PM
-- Module Name: cnttest - Behavioral
-- Description:
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity cnttest is
    generic (count_value : integer := 1);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           count_out : out STD_LOGIC_VECTOR (1 downto 0));
end cnttest;

architecture Behavioral of cnttest is

begin


end Behavioral;
