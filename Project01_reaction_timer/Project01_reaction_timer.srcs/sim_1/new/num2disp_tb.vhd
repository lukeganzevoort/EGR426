--------------------------------------------------------------------------------
-- Company: EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 02/14/2017 10:40:30 PM
-- Module Name: num2disp_tb - Behavioral
-- Description: This is a test bench file for the num2disp. The test
--   plugs a 14-bit number into the num2disp and makes sure the segments and
--   digits are set correctly for the hardware to display a specific digit at
--   the right time.
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;

entity num2disp_tb is
end num2disp_tb;

architecture Behavioral of num2disp_tb is

component num2disp is
    Port ( num_bin : in STD_LOGIC_VECTOR (13 downto 0);
           clk4ms : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           dig : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal num_bin : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
signal clk4ms : STD_LOGIC := '0';
signal seg : STD_LOGIC_VECTOR (6 downto 0);
signal dig : STD_LOGIC_VECTOR (3 downto 0);

procedure Monitor(segShouldBe: in STD_LOGIC_VECTOR (6 downto 0); digShouldBe: in STD_LOGIC_VECTOR(3 downto 0)) is
  variable lout: line;
  begin
    write(lout, NOW, right, 10, ns);
    write(lout, string'(" BINARY NUMBER --> "));
    write(lout, num_bin);
    write(lout, string'(" CLK --> "));
    write(lout, clk4ms);
    write(lout, string'(" SEGMENTS -->"));
    write(lout, seg);
    write(lout, string'(" DIGITS -->"));
    write(lout, dig);
    writeline(output, lout);
    assert seg = segShouldBe report "Segment Test Failed" severity failure;
    assert dig = digShouldBe report "Digit Test Failed" severity failure;
end Monitor;

begin
M1: num2disp port map (num_bin, clk4ms, seg, dig);

sim : process
begin
    wait for 100ns;
    report "Beginning num2disp test" severity note;

    -- Test first number
    clk4ms <= '0';
    num_bin <= "01011011010001"; -- decimal: 5841
    wait for 2ms;
    clk4ms <= '1'; -- On the rising edge it should diplay digit 2 which is 4
    wait for 2ms;
    Monitor("0011001", "1101"); --seven segment representation for "4"

    -- Test second number
    clk4ms <= '0';
    num_bin <= "00001000011101"; -- decimal: 541
    wait for 2ms;
    clk4ms <= '1'; -- On the rising edge it should diplay digit 3 which is 5
    wait for 2ms;
    Monitor("0010010", "1011"); --seven segment representation for "5"

    -- Test third number
    clk4ms <= '0';
    wait for 2ms;
    clk4ms <= '1'; -- On the rising edge it should diplay digit 4 which is 0
    wait for 2ms;
    Monitor("1000000", "0111"); --seven segment representation for "0"

    -- Test fourth number to fail
    clk4ms <= '0';
    num_bin <= "10000101111100"; -- decimal: 8572
    wait for 2ms;
    clk4ms <= '1'; -- On the rising edge it should diplay digit 1 which is 2
    wait for 2ms;
    Monitor("0100101", "1110"); --seven segment representation for "2"

    report "You win! Though the test should have failed before this" severity note;

    wait;

end process;

end Behavioral;
