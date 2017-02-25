----------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 02/16/2017 05:51:11 PM
-- Module Name: mod11_counter - Behavioral
-- Description:
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity mod11_counter is
    generic (count_value : integer := 1);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           count_out : out STD_LOGIC_VECTOR (3 downto 0));
end mod11_counter;

architecture Behavioral of mod11_counter is

  signal temp: std_logic_vector(3 downto 0) := "0011";

begin

  process(clk, reset)
  begin

    if(reset = '1') then
      temp <= "0011";
    elsif(rising_edge(clk)) then
      if(temp = count_value) then
        temp <= "0011";
      else
        temp <= temp + 1;
      end if;
    end if;
  end process;

  count_out <= temp;

end Behavioral;
