----------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/15/2017 06:29:06 PM
-- Module Name: btn_debounce_tb - Behavioral
-- Description:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;


entity btn_debounce_tb is
end btn_debounce_tb;

architecture Behavioral of btn_debounce_tb is

  component btn_debounce is
      Port ( clk100MHz : in STD_LOGIC;
             btn_in : in STD_LOGIC;
             btn_press : out STD_LOGIC);
  end component;

  signal clk : STD_LOGIC := '0';
  signal btn_in : STD_LOGIC := '0';
  signal btn_out : STD_LOGIC := '0';

  procedure Monitor(ShouldBe: in STD_LOGIC) is
    variable lout: line;
    begin
      write(lout, NOW, right, 10, ns);
      write(lout, string'(" BTN_IN --> "));
      write(lout, btn_in);
      write(lout, string'(" BTN_OUT --> "));
      write(lout, btn_out);
      write(lout, string'(" CLK STATE -->"));
      write(lout, clk);
      writeline(output, lout);
      --assert btn_out = ShouldBe report string(lout) severity warning;
      assert btn_out = ShouldBe report "Debouncer Test Failed" severity failure;
  end Monitor;

begin
  M1: btn_debounce port map(clk100MHz => clk, btn_in => btn_in, btn_press => btn_out);

  clk_ctrl : process
  begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
  end process;

  sim : process
  begin
    wait for 100ns;
    report "Beginning btn_debounce test!" severity note;

    -- Test 1 - simple on for 0.5ms
    btn_in <= '0'; -- reset
    wait for 10ns;
    Monitor('0'); -- should be 0 to start
    btn_in <= '1';
    wait for 499us;
    Monitor('0'); -- should be 0 still after 0.499ms
    wait for 1us;
    Monitor('1'); -- should be 1 after 0.500ms
    report "Passed test 1!" severity note;

    -- Test 2 - simple on for 499us, then off for 10ns, then on for 500us
    btn_in <= '0'; -- reset
    wait for 10ns;
    Monitor('0'); -- should be 0 to start
    btn_in <= '1'; -- press button
    wait for 499us;
    btn_in <= '0'; -- release button
    wait for 10ns;
    Monitor('0'); -- should be 0 after reseting 10ns before
    btn_in <= '1'; -- press button
    wait for 499us;
    Monitor('0'); -- should still be 0 after 499us of being pressed
    wait for 1us;
    Monitor('1'); -- sould be 1 after another 1us
    report "Passed test 2!" severity note;

    -- Test 3 - simple on for 500us, then off for 10ns, and back on for 10ns
    btn_in <= '0'; -- reset
    wait for 10ns;
    Monitor('0'); -- should be 0 to start
    btn_in <= '1'; -- press button
    wait for 500 us;
    Monitor('1'); -- button should be on
    btn_in <= '0'; -- release button
    wait for 10 ns;
    Monitor('0'); -- button should now be off
    btn_in <= '1'; -- press button
    wait for 10 ns;
    Monitor('0'); -- button should still be off
    report "Passed test 3!" severity note;

    -- Test 4 - on for 499us expect off, on for another 1us expect off still
    -- this should fail
    btn_in <= '0'; -- reset
    wait for 10ns;
    Monitor('0'); -- should be 0 to start
    btn_in <= ('1');
    wait for 499 us;
    Monitor('0');
    wait for 1 us;
    Monitor('0');
    report "Passed test 4! Even though you weren't supposed to";




    report "END!" severity note;

    wait;
  end process;

end Behavioral;
