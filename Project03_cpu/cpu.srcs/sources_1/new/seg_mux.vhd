--------------------------------------------------------------------------------
-- Company: GVSU - EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 01/21/2017 09:19:33 PM
-- Module Name: num2disp - Behavioral
-- Description: This module is designed to take a number and display it on the
--   4 digit 7-segment display.
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seg_mux is
    Port ( clk4ms, reset : in STD_LOGIC;
      sev_seg_0, sev_seg_1, sev_seg_2, sev_seg_3 : in STD_LOGIC_VECTOR (6 downto 0);
      seg : out STD_LOGIC_VECTOR (6 downto 0) := "1111111";
      dig : out STD_LOGIC_VECTOR (3 downto 0) := "0000");
end seg_mux;

architecture Behavioral of seg_mux is

signal seg0, seg1, seg2, seg3 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
signal num_bcd : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');

begin
  seg0 <= sev_seg_0;
  seg1 <= sev_seg_1;
  seg2 <= sev_seg_2;
  seg3 <= sev_seg_3;

  -- Begin process when the 4ms clock changes
  Process(clk4ms, reset)
    variable digCounter: STD_LOGIC_VECTOR (1 downto 0) := "00";
    begin

      if (reset = '1') then
        digCounter := "00";
        seg <= "1111111";
      -- On the rising edge of the 4ms clk, increment the counter which
      -- signifies which digit is being lit up.
      elsif rising_edge(clk4ms) then
        digCounter := digCounter + 1;

        -- Depending on the digit we're on turn on the proper segments
        -- and power the proper digit.
        case digCounter is
          when "00" =>
            seg <= seg0;
            dig <= "1110";
          when "01" =>
            seg <= seg1;
            dig <= "1101";
          when "10" =>
            seg <= seg2;
            dig <= "1011";
          when "11" =>
            seg <= seg3;
            dig <= "0111";
          when others =>
            seg <= seg0;
            dig <= "1111";
        end case;

      end if;

  end process;

end Behavioral;
