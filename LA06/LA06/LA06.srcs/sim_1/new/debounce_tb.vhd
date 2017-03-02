----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/02/2017 05:35:00 PM
-- Design Name:
-- Module Name: debounce_tb - Behavioral
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

entity debounce_tb is
--  Port ( );
end debounce_tb;

architecture Behavioral of debounce_tb is

  component DEBOUNCE IS
  	PORT (CLK,PB,RESET: IN std_logic;
  		Debounced : OUT std_logic);
  END component;

  signal clk,pb,reset,debounced : std_logic := '0';
  constant clk_period: time := 10 ns;

begin

  M1: DEBOUNCE port map (clk=>clk,pb=>pb,reset=>reset,debounced=>debounced);

  clk_pro : process
  begin
    clk <= not clk;
    wait for clk_period/2;
  end process;

  stim_proc: process
  begin
    pb <= '0';
    wait for 20 ns;
    pb <= '1';
    wait for 30 ns;
    pb <= '0';
    wait for 20 ns;
    pb <= '1';
    wait for 60 ns;
    pb <= '0';
    wait for 20 ns;
    wait;
  end process;

end Behavioral;
