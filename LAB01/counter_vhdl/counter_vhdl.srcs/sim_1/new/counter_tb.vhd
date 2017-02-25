----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/14/2017 09:27:42 PM
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is

component counter_vhdl
  port ( clk: in std_logic;
         ledout: out std_logic_vector (7 downto 0)
       );
end component;

  signal clk: std_logic := '0';
  signal ledout: std_logic_vector (7 downto 0) := "00000000";

begin
  T1: counter_vhdl port map (clk => clk, ledout => ledout);
  
  process
   begin
    wait for 100 ns;
    loop
      clk <= '0';
      wait for 10 ns;
      clk <= '1';
      wait for 10 ns;
    end loop;
  end process;

end Behavioral;
