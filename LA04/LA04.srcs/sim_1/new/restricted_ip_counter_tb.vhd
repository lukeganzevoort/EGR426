--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 02/16/2017 07:31:07 PM
-- Design Name:
-- Module Name: restricted_ip_counter_tb - Behavioral
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
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity restricted_ip_counter_tb is
end restricted_ip_counter_tb;

architecture Behavioral of restricted_ip_counter_tb is

  component restricted_ip_counter is
    Port ( clk : in STD_LOGIC;
             count_out : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal clk : STD_LOGIC := '0';
  signal count_out : std_logic_vector(3 downto 0);
  constant clk_period : time := 10 ns;

begin

  C1 : restricted_ip_counter
    port map (clk => clk, count_out => count_out);

  Clock : process
  begin
    clk <= '0';
    wait for (clk_period/2);
    clk <= '1';
    wait for (clk_period/2);
  end process;

end Behavioral;
