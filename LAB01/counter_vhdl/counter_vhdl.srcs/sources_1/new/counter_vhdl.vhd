----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/14/2017 08:38:53 PM
-- Design Name: 
-- Module Name: counter_vhdl - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_vhdl is
    Port ( clk : in STD_LOGIC;
           ledout : out STD_LOGIC_VECTOR (7 downto 0));
end counter_vhdl;

architecture Behavioral of counter_vhdl is

SIGNAL ledtemp: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal clk_div: std_logic_vector (25 downto 0);

begin
 ClkDivider: process(clk)
    begin
     if rising_edge(clk) then
        clk_div <= clk_div + 2;
     end if;
    end process;
 
 Counter: process(clk_div)
    begin
     if rising_edge(clk_div(25)) then
        ledtemp <= ledtemp + 1;
     end if;
    end process;
 
 ledout <= ledtemp;

end Behavioral;
