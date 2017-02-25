----------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 02/16/2017 05:51:11 PM
-- Module Name: mod3_counter - Behavioral
-- Description:
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity mod3_counter is
    generic (count_value : integer := 1);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           count_out : out STD_LOGIC_VECTOR (1 downto 0));
end mod3_counter;

architecture Behavioral of mod3_counter is

  signal temp: std_logic_vector(1 downto 0) := "00";

begin

  process(clk, reset)
  begin

    if(reset = '1') then
      temp <= "00";
    elsif(rising_edge(clk)) then
      if(temp = count_value) then
        temp <= "00";
      else
        temp <= temp + 1;
      end if;
    end if;

    count_out <= temp;

  end process;
end Behavioral;
