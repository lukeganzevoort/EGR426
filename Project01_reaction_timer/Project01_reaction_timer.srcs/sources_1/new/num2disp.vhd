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

entity num2disp is
    Port ( num_bin : in STD_LOGIC_VECTOR (13 downto 0);
           clk4ms : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           dig : out STD_LOGIC_VECTOR (3 downto 0));
end num2disp;

architecture Behavioral of num2disp is

    component bin2bcd_14bit is
        Port ( binIN : in  STD_LOGIC_VECTOR (13 downto 0);
               bcd_output : out  STD_LOGIC_VECTOR (15 downto 0)
              );
    end component;

    component numSelect is
        Port ( num : in STD_LOGIC_VECTOR (3 downto 0);
               seg : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

signal seg0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
signal seg1 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
signal seg2 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
signal seg3 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
signal num_bcd : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');

begin

  -- Map each of the switches as the 3-bit input the the seg_selector
  U1: numSelect port map (num_bcd(3 downto 0), seg0);
  U2: numSelect port map (num_bcd(7 downto 4), seg1);
  U3: numSelect port map (num_bcd(11 downto 8), seg2);
  U4: numSelect port map (num_bcd(15 downto 12), seg3);
  D1: bin2bcd_14bit port map (num_bin, num_bcd);

  -- Begin process when the 4ms clock changes
  Process(clk4ms)
    variable digCounter: STD_LOGIC_VECTOR (1 downto 0) := "00";
    begin

    -- On the rising edge of the 4ms clk, increment the counter which
    -- signifies which digit is being lit up.
    if rising_edge(clk4ms) then
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
