----------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 02/15/2017 10:32:43 PM
-- Module Name: double_dabble_tb - Behavioral
-- Description:
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;

entity double_dabble_tb is
end double_dabble_tb;

architecture Behavioral of double_dabble_tb is

  component bin2bcd_14bit is
      Port ( binIN : in  STD_LOGIC_VECTOR (13 downto 0);
             bcd_output : out  STD_LOGIC_VECTOR (15 downto 0));
  end component;

  signal binary_in : STD_LOGIC_VECTOR (13 downto 0);
  signal bcd_out : STD_LOGIC_VECTOR (15 downto 0);

  procedure Monitor(ShouldBe: in STD_LOGIC_VECTOR (15 downto 0)) is
    variable lout: line;
    begin
      write(lout, NOW, right, 10, ns);
      write(lout, string'(" BINARY NUMBER IN --> "));
      write(lout, binary_in);
      write(lout, string'(" BINARY CODED DECIMAL OUT --> "));
      write(lout, bcd_out);
      writeline(output, lout);
      assert bcd_out = ShouldBe report "Test Failed" severity failure;
  end Monitor;

begin
  M1: bin2bcd_14bit port map (binary_in, bcd_out);

  sim: process
  begin
    wait for 100 ns;
    report "Beginning double dabble (bin2bcd_14bit) test" severity note;

    -- Test first number (9999)
    -- 9999 in binary is 10011100001111
    binary_in <= "10011100001111";
    wait for 10 ns;
    -- 9999 in bcd is 1001 1001 1001 1001
    Monitor("1001100110011001");
    report "Test 1 Successful!";

    -- Test second number (859)
    -- 859 in binary is 00001101011011
    binary_in <= "00001101011011";
    wait for 10 ns;
    -- 859 in bcd is 0000 1000 0101 1001
    Monitor("0000100001011001");
    report "Test 2 Successful!";

    -- Test third number (1407)
    -- 1407 in binary is 00010101111111
    binary_in <= "00010101111111";
    wait for 10 ns;
    -- 1407 in bcd is 0001 0100 0000 0111
    Monitor("0001010000000111");
    report "Test 3 Successful!";

    -- Test forth number - Failing test (5423)
    -- 5423 in binary is 01010100101111
    binary_in <= "01010100101111";
    wait for 10 ns;
    -- 5423 in bcd is 0101 0100 0010 0011
    Monitor("0101010000100001");
    report "Test 4 Successful! Though it should have failed by now";


    wait;

  end process;

end Behavioral;
