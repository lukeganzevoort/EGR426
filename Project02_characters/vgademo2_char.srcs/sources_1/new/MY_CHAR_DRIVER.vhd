----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/02/2017 07:14:59 PM
-- Design Name:
-- Module Name: MY_CHAR_DRIVER - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;       -- For unsigned()
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MY_CHAR_DRIVER is
PORT( hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      ASCII_CHAR : out STD_LOGIC_VECTOR(6 downto 0));
end MY_CHAR_DRIVER;

architecture Behavioral of MY_CHAR_DRIVER is
signal char_col : std_logic_vector(6 downto 0);
signal char_row : std_logic_vector(5 downto 0);
begin
  -- char_col <= hcount(9 downto 3);  -- Character column in [0,79]
  -- char_row <= vcount(8 downto 3);  -- Character row in [0,59]
  process
  begin
      if(vcount >= 80 and vcount < 96 and hcount >= 128 and hcount < 144) then
        ASCII_CHAR <= "0000001"; -- T
      elsif (vcount >= 80 and vcount < 96 and hcount >= 144 and hcount < 160) then
        ASCII_CHAR <= "0000010"; -- h
      elsif (vcount >= 80 and vcount < 96 and hcount >= 160 and hcount < 176) then
        ASCII_CHAR <= "0000011"; -- e
      elsif (vcount >= 80 and vcount < 96 and hcount >= 176 and hcount < 192) then
        ASCII_CHAR <= "0000100"; -- s
      elsif (vcount >= 80 and vcount < 96 and hcount >= 192 and hcount < 208) then
        ASCII_CHAR <= "0000011"; -- e
      elsif (vcount >= 80 and vcount < 96 and hcount >= 208 and hcount < 224) then
        ASCII_CHAR <= "0000101"; -- u
      elsif (vcount >= 80 and vcount < 96 and hcount >= 224 and hcount < 240) then
        ASCII_CHAR <= "0000100"; -- s
      elsif (vcount >= 80 and vcount < 96 and hcount >= 256 and hcount < 272) then
        ASCII_CHAR <= "0000110"; -- a
      elsif (vcount >= 80 and vcount < 96 and hcount >= 272 and hcount < 288) then
        ASCII_CHAR <= "0000111"; -- n
      elsif (vcount >= 80 and vcount < 96 and hcount >= 288 and hcount < 304) then
        ASCII_CHAR <= "0001000"; -- d
      elsif (vcount >= 80 and vcount < 96 and hcount >= 320 and hcount < 336) then
        ASCII_CHAR <= "0001100"; -- t
      elsif (vcount >= 80 and vcount < 96 and hcount >= 336 and hcount < 352) then
        ASCII_CHAR <= "0000010"; -- h
      elsif (vcount >= 80 and vcount < 96 and hcount >= 352 and hcount < 368) then
        ASCII_CHAR <= "0000011"; -- e
      elsif (vcount >= 80 and vcount < 96 and hcount >= 384 and hcount < 400) then
        ASCII_CHAR <= "0001001"; -- M
      elsif (vcount >= 80 and vcount < 96 and hcount >= 400 and hcount < 416) then
        ASCII_CHAR <= "0001010"; -- i
      elsif (vcount >= 80 and vcount < 96 and hcount >= 416 and hcount < 432) then
        ASCII_CHAR <= "0000111"; -- n
      elsif (vcount >= 80 and vcount < 96 and hcount >= 432 and hcount < 448) then
        ASCII_CHAR <= "0001011"; -- o
      elsif (vcount >= 80 and vcount < 96 and hcount >= 448 and hcount < 464) then
        ASCII_CHAR <= "0001100"; -- t
      elsif (vcount >= 80 and vcount < 96 and hcount >= 464 and hcount < 480) then
        ASCII_CHAR <= "0000110"; -- a
      elsif (vcount >= 80 and vcount < 96 and hcount >= 480 and hcount < 496) then
        ASCII_CHAR <= "0000101"; -- u
      elsif (vcount >= 80 and vcount < 96 and hcount >= 496 and hcount < 512) then
        ASCII_CHAR <= "0001101"; -- r
      else
        ASCII_CHAR <= "0000000";
      end if;
  end process;

end Behavioral;
