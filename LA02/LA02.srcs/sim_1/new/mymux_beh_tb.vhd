----------------------------------------------------------------------------------
-- Company: GVSU EGR-426
-- Engineer: Luke Ganzevoort
-- Create Date: 01/26/2017 05:19:42 PM
-- Module Name: mymux_beh_tb - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;

entity mymux_beh_tb is
end mymux_beh_tb;

architecture Behavioral of mymux_beh_tb is

component mymux_beh is
  port (x,y,s : in STD_LOGIC;
    m: out STD_LOGIC);
end component;

signal x,y,s : std_logic := '0';
signal m : std_logic;

procedure monitor(ShouldBe: in STD_LOGIC) is
variable lout: line;
begin
  write(lout, NOW, right, 10, ns);
  write(lout, string'(" X -->"));
  write(lout, x);
  write(lout, string'(" Y -->"));
  write(lout, y);
  write(lout, string'(" S -->"));
  write(lout, s);
  write(lout, string'(" M -->"));
  write(lout, m);
  writeline(output, lout);
  assert m = ShouldBe report "Test Failed" Severity FAILURE;
end Monitor;

begin
  M1: mymux_beh port map (x => x, y => y, s => s, m => m);
  stim_proc: process
  begin
    wait for 100 ns;
    Report "Beginning the MUX test" Severity Note;
    
    x <= '0'; y <= '0'; s <= '0';
    wait for 1 ns;
    Monitor('0');
    
    x <= '1'; y <= '0'; s <= '0';
    wait for 1 ns;
    Monitor('1');
    
    x <= '1'; y <= '0'; s <= '1';
    wait for 1 ns;
    Monitor('1');
    
    x <= '1'; y <= '1'; s <= '1';
    wait for 1 ns;
    Monitor('1');   
    
    Report "Test Finished" Severity Note;
    wait;
  end process;

end Behavioral;
