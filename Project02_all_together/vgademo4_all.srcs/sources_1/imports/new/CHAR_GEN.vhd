--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/12/2017
--
-- Module: CHAR_GEN.vhd
-- Description: This file generates a character to display on the screen based
--  on the ROM data
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity CHAR_GEN is
PORT(clk25, blank : in STD_LOGIC; hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
     ASCII_CHAR : in STD_LOGIC_VECTOR(6 downto 0);
     R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0 : out STD_LOGIC);
end CHAR_GEN;

architecture Behavioral of CHAR_GEN is
-- --------------------------------------------------------------------------
signal pixel_row : STD_LOGIC_VECTOR(3 downto 0);
signal pixel_col : STD_LOGIC_VECTOR(3 downto 0);

signal ROM_ADDRESS : STD_LOGIC_VECTOR(10 downto 0);
signal ROM_DATA : STD_LOGIC_VECTOR(15 downto 0);
signal INTENSITY : STD_LOGIC;

COMPONENT rom1kx8
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;
-- -----------------------------------------------------------------------------
begin
my_rom : rom1kx8 PORT MAP (clka => clk25, addra => ROM_ADDRESS, douta => ROM_DATA);

pixel_row <= vcount(3 downto 0);
pixel_col <= hcount(3 downto 0);
ROM_ADDRESS <= ASCII_CHAR & pixel_row;  -- Generating ROM address

 process(clk25)
  variable col1,col2,col3 : NATURAL range 0 to 15;
  begin
   if rising_edge(clk25) then
	  col3 := col2;
	  col2 := col1;
	  col1 := conv_integer(pixel_col);
	  INTENSITY <= ROM_DATA(col3);
   end if;
 end process;

 R3 <= INTENSITY when blank='0' else '0';
 R2 <= INTENSITY when blank='0' else '0';
 R1 <= INTENSITY when blank='0' else '0';
 R0 <= INTENSITY when blank='0' else '0';

 G3 <= INTENSITY when blank='0' else '0';
 G2 <= INTENSITY when blank='0' else '0';
 G1 <= INTENSITY when blank='0' else '0';
 G0 <= INTENSITY when blank='0' else '0';

 B3 <= INTENSITY when blank='0' else '0';
 B2 <= INTENSITY when blank='0' else '0';
 B1 <= INTENSITY when blank='0' else '0';
 B0 <= INTENSITY when blank='0' else '0';


end Behavioral;
