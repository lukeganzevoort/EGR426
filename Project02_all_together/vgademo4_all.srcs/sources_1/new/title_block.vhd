----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/20/2016 04:37:29 PM
-- Design Name:
-- Module Name: title_block - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity title_block is
  PORT(clk,reset,blank : in STD_LOGIC;
      hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end title_block;

architecture Behavioral of title_block is
-- --------------------------------------------------------------------------
  signal pixel_row : STD_LOGIC_VECTOR(3 downto 0);
  signal pixel_col : STD_LOGIC_VECTOR(3 downto 0);

  signal ROM_ADDRESS : STD_LOGIC_VECTOR(7 downto 0);
  signal ROM_DATA : STD_LOGIC_VECTOR(15 downto 0);
  signal INTENSITY : STD_LOGIC;
  signal ASCII_CHAR : STD_LOGIC_VECTOR(3 downto 0);

  COMPONENT MY_CHAR_DRIVER is
    PORT( hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      ASCII_CHAR : out STD_LOGIC_VECTOR(3 downto 0));
  end COMPONENT;

  COMPONENT rom_chars
    PORT (
      clka : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT;
-- -----------------------------------------------------------------------------
begin
  my_rom : rom_chars PORT MAP (
    clka => clk,
    addra => ROM_ADDRESS,
    douta => ROM_DATA);
  char_driver : my_char_driver PORT MAP (
    hcount => hcount,
    vcount => vcount,
    ASCII_CHAR => ASCII_CHAR);

  pixel_row <= vcount(3 downto 0);
  pixel_col <= hcount(3 downto 0);
  ROM_ADDRESS <= ASCII_CHAR & pixel_row;  -- Generating ROM address

 process(clk)
  variable col1,col2,col3 : NATURAL range 0 to 15;
  begin
   if rising_edge(clk) then
	  col3 := col2;
	  col2 := col1;
	  col1 := conv_integer(pixel_col);
	  INTENSITY <= ROM_DATA(col3);
   end if;
 end process;


 Red <= ('0' & INTENSITY & '0' & '0') when (blank = '0') else X"0";
 Blue <= ('0' & INTENSITY & '0' & '0') when (blank = '0') else X"0";
 Green <= ('0' & INTENSITY & '0' & '0') when (blank = '0') else X"0";

end Behavioral;
