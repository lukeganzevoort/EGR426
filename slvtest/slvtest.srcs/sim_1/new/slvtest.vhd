----------------------------------------------------------------------------------
-- Company: EGR 426 - LA 3
-- Engineer: Luke Ganzevoort
--
-- Create Date: 02/13/2017 09:05:48 PM
-- Module Name: slvtest - Behavioral
-- Description: Test bench for NAND circuit
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity slvtest is
end slvtest;

architecture Behavioral of slvtest is

  component nand_10bit is
    Port (A : in STD_LOGIC_VECTOR (9 downto 0);
        X : out STD_LOGIC);
  end component;

signal A : STD_LOGIC_VECTOR (9 downto 0);
signal X : STD_LOGIC;

begin

T1: nand_10bit PORT MAP (A => A, X => X);

stim_process : process
    begin
      A <= "0000000000";

      wait for 100 ns;

      for I in 0 to 1023 loop
        wait for 20 ns;
        A <= A +1;
      end loop;

      wait;

    end process;
end Behavioral;
