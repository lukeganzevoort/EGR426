----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/16/2017 05:54:30 PM
-- Design Name:
-- Module Name: microram_sim - Behavioral
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

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

entity microram_sim_inc is
port (  CLOCK   : in STD_LOGIC ;
		ADDRESS	: in STD_LOGIC_VECTOR (8 downto 0);
		DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
		DATAIN  : in STD_LOGIC_VECTOR (7 downto 0);
		WE	: in STD_LOGIC
	);
end entity microram_sim_inc;

architecture a of microram_sim_inc is
type t_mem_data is array(0 to 511) of std_logic_vector(7 downto 0);

-- Your program is entered here, as initialization values for the "mem_data" signal.
signal mem_data : t_mem_data := (
    0 => "11110000",    -- CLR A
    1 => "11110001",    -- CLR B
    2 => "01100000",    -- INC data in next address in A
    3 => "00110100",    -- address 52
    4 => "00001000",    -- output A
    5 => "01100000",    -- INC data in next address in A
    6 => "00110101",    -- address 53
    7 => "00001000",    -- output A
    8 => "01100000",    -- INC data in next address in A
    9 => "00110110",    -- address 54
    10 => "00001000",   -- output A
    11 => "01100000",    -- INC data in next address in A
    12 => "00110111",    -- address 55
    13 => "00001000",   -- output A
    14 => "00000001",   -- Load data from the next address in B
    15 => "00110101",   -- address 53
    16 => "00001011",   -- output B to port 1
    52 => "00000111",   -- data: 7
    53 => "10000000",   -- data: -128
    54 => "01111111",   -- data: 127
    55 => "11111111",   -- data: -1
    others => "11110000"); -- all other memory locations set to CLR A instr

begin
RAM_Process : process(CLOCK)
variable memaddr : INTEGER range 0 to 511;
begin
  if(rising_edge(CLOCK)) then
     memaddr := CONV_INTEGER(ADDRESS);
     if(we='1') then
        mem_data(memaddr) <= DATAIN;
        DATAOUT <= DATAIN;
     else
        DATAOUT <= mem_data(memaddr);
     end if;
  end if;
end process;

end architecture a;
