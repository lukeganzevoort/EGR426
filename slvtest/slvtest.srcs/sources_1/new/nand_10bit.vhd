----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/13/2017 08:58:59 PM
-- Design Name: 
-- Module Name: nand_10bit - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nand_10bit is
    Port ( A : in STD_LOGIC_VECTOR (9 downto 0);
           X : out STD_LOGIC);
end nand_10bit;

architecture Behavioral of nand_10bit is

begin
    X <= not (A(9) and A(8) and A(7) and A(6) and A(5) and A(4) and A(3) and A(2) and A(1) and A(0));

end Behavioral;
