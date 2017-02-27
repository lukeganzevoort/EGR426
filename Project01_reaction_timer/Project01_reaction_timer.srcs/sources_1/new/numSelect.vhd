----------------------------------------------------------------------------------
-- Company: GVSU EGR-426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 01/23/2017 04:41:14 PM
-- Module Name: numSelect - Behavioral
-- Description: This module will take a 4 bit input digit and output a
--   7 bit segment driver to create the digit from the input. 0xA-F will be
--   displayed as blank.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity numSelect is
    Port ( num : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end numSelect;

architecture Dataflow of numSelect is

begin

  -- This process will take any 4-bit hex number from 0-9 and set the seg to
  -- the appropriate values to drive a seven segment display (assuming active
  -- low). With segments starting from G as the MSB and A as the LSB.
  process(num)
  begin
    case num is
      when "0000" => seg <= "1000000";
      when "0001" => seg <= "1111001";
      when "0010" => seg <= "0100100";
      when "0011" => seg <= "0110000";
      when "0100" => seg <= "0011001";
      when "0101" => seg <= "0010010";
      when "0110" => seg <= "0000010";
      when "0111" => seg <= "1111000";
      when "1000" => seg <= "0000000";
      when "1001" => seg <= "0011000";
      when others => seg <= "1111111";
    end case;
  end process;

end Dataflow;
