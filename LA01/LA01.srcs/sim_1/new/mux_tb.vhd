----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2017 05:11:39 PM
-- Design Name: 
-- Module Name: mux_tb - Behavioral
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

entity mux_tb is
end mux_tb;

architecture Behavioral of mux_tb is
-- ------------------------------------
component mux_beh
  port (x,y,s : in STD_LOGIC; m: out STD_LOGIC);  -- Instantiate MUX entity
end component;
-- ------------------------------------
signal x,y,s : STD_LOGIC := '0';  -- Initialize INPUTS
signal m : STD_LOGIC;
begin
  M1: mux_beh port map(x => x, y => y, s => s, m => m); -- Connecting ports
  stim_proc: process -- Stimulus process
    begin
    wait for 100 ns;  -- hold reset state for 100 ns
    wait for 10 ns;
    x <= '1';
    wait for 10 ns;
    s <= '1';
    wait for 10 ns;
    y <= '1';
    wait;
  end process;

end Behavioral;