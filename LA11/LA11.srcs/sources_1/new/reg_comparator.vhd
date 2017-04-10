----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/04/2017 04:07:10 PM
-- Design Name:
-- Module Name: reg_comparator - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity reg_comparator is
  port(clk : in std_logic;
    A,B : in signed(3 downto 0);
    Z : out signed(3 downto 0));
end reg_comparator;

architecture Behavioral of reg_comparator is

    function MAX(in1,in2 : in signed(3 downto 0)) return signed is
        variable temp : signed(3 downto 0);
    begin
        if(in1 > in2)then
            temp := in1;
        else
            temp := in2;
        end if;
        return temp;
    end MAX;

begin

    process(clk)
    begin
        if(rising_edge(clk))then
            Z <= MAX(A,B);
        end if;
    end process;

end Behavioral;
