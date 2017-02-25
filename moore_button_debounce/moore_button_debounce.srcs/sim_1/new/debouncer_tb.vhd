----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2017 04:59:49 PM
-- Design Name: 
-- Module Name: debouncer_tb - Behavioral
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

entity debouncer_tb is
end debouncer_tb;

architecture Behavioral of debouncer_tb is

component debounce is
  port( clk,rst,x : std_logic;
    pb_out : out std_logic);
end component;

signal clk, rst, x : std_logic := '0';
signal pb_out : std_logic := '0';

begin
    M1: debounce port map(clk => clk, rst => rst, x => x, pb_out => pb_out);
    
    test_process : process
    begin
        wait for 3 ns;
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait for 10 ns;
        x <= '1';
        wait for 20 ns;
        x <= '0';
        wait for 10 ns;
        x <= '1';
        wait for 50 ns;
        x <= '0';
        wait for 20 ns;
        wait;
    end process;
        
    clk_process : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
        



end Behavioral;
