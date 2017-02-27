----------------------------------------------------------------------------------
-- Modified by: Luke Ganzevoort
-- Company: GVSU EGR 426
--
--Module Name: double_dabble - Behavioral
-- Description:  The functionallity is to take a decimal number up to 9999 and
--   parse it into 4 different digits to be displayed on a 4-digit, 7-segment
--   display.
--
-- This code was based on code from https://en.wikipedia.org/wiki/Double_dabble.
-- Date accessed: 1/23/2017
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity bin2bcd_14bit is
    Port ( binIN : in  STD_LOGIC_VECTOR (13 downto 0);
           bcd_output : out  STD_LOGIC_VECTOR (15 downto 0)
          );
end bin2bcd_14bit;

architecture Behavioral of bin2bcd_14bit is

begin

bcd1: process(binIN)

  -- temporary variable
  variable temp : STD_LOGIC_VECTOR (13 downto 0);

  -- variable to store the output BCD number
  -- organized as follows
  -- thousands = bcd(15 downto 12)
  -- hundreds = bcd(11 downto 8)
  -- tens = bcd(7 downto 4)
  -- units = bcd(3 downto 0)
  variable bcd : UNSIGNED (15 downto 0) := (others => '0');

  begin
    -- zero the bcd variable
    bcd := (others => '0');

    -- read input into temp variable
    temp(13 downto 0) := binIN;

    -- cycle 12 times as we have 12 input bits
    -- this could be optimized, we dont need to check and add 3 for the
    -- first 3 iterations as the number can never be >4
    for i in 0 to 13 loop

      if bcd(3 downto 0) > 4 then
        bcd(3 downto 0) := bcd(3 downto 0) + 3;
      end if;

      if bcd(7 downto 4) > 4 then
        bcd(7 downto 4) := bcd(7 downto 4) + 3;
      end if;

      if bcd(11 downto 8) > 4 then
        bcd(11 downto 8) := bcd(11 downto 8) + 3;
      end if;

      -- thousands can't be >4 for a 12-bit input number
      -- so don't need to do anything to upper 4 bits of bcd

      -- shift bcd left by 1 bit, copy MSB of temp into LSB of bcd
      bcd := bcd(14 downto 0) & temp(13);

      -- shift temp left by 1 bit
      temp := temp(12 downto 0) & '0';

    end loop;

    -- set outputs
    bcd_output <= STD_LOGIC_VECTOR(bcd);

  end process bcd1;

end Behavioral;
