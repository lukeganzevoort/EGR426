----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 1/15/2017 07:01:29 PM
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
           ledout : buffer STD_LOGIC_VECTOR (7 downto 0));
end counter_vhdl;

architecture Behavioral of counter_vhdl is

COMPONENT ila_led
PORT (
	clk : IN STD_LOGIC;
	probe0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT  ;

SIGNAL ledtemp: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal clk_div: std_logic_vector (25 downto 0);

begin
    ila_led_i0 : ila_led
    PORT MAP (
        clk => clk,
        probe0 => ledout
    );

 ClkDivider: process(clk)
    begin
     if rising_edge(clk) then
        clk_div <= clk_div + 1;     -- Increment clk_div only on rising edge of clk
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


