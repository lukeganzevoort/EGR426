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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity title_block is
generic (X_coord1,X_coord2,X_coord3,X_coord4,Y_coord,SIZE : integer);
Port (clk,reset,blank,VS : in STD_LOGIC;
      hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end title_block;

architecture Behavioral of title_block is
-- -----------------------------------------------
signal ROM_ADDRESS : STD_LOGIC_VECTOR(6 downto 0);
signal ROM_DATA : STD_LOGIC_VECTOR(31 downto 0);
signal count : STD_LOGIC_VECTOR(4 downto 0);
signal flag : STD_LOGIC_VECTOR(1 downto 0);
signal in_range,INTENSITY : STD_LOGIC;
--signal SIZE,Y_coord : STD_LOGIC_VECTOR(5 downto 0) := "100000";    -- 32
--signal X_coord1 : STD_LOGIC_VECTOR(10 downto 0) := "00011100000";  -- 224
--signal X_coord2 : STD_LOGIC_VECTOR(10 downto 0) := "00100000000";  -- 256
--signal X_coord3 : STD_LOGIC_VECTOR(10 downto 0) := "00100100000";  -- 288
--signal X_coord4 : STD_LOGIC_VECTOR(10 downto 0) := "00101000000";  -- 320

COMPONENT title_rom
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
-- --------------------------------------------------
begin
my_rom : title_rom PORT MAP (clka => clk, addra => ROM_ADDRESS, douta => ROM_DATA);
-- --------------------------------------------------------------------------------
process(VS)
begin
 if(VS'event and VS = '1') then         -- RISING EDGE OF VS
    if(reset = '1') then
       count <= "00000";
       flag <= "00";
    elsif(count = "11111") then
       count <= "00000";
       flag <= flag + 1;
    else
       count <= count + 1;
       flag <= flag;
    end if;
 end if;
end process;
-- -----------------------------------------------------------------------------------------
process(clk,reset)      -- Process block to generate address for ROM
begin
 if(reset = '1') then
    ROM_ADDRESS <= "0000000";
    in_range <= '0';
 elsif(rising_edge(clk)) then
      if((hcount >= X_coord1) and (hcount < (X_coord1 + SIZE))        --  Displays 'G'
     and (vcount > Y_coord) and (vcount < (Y_coord + SIZE)) and (blank = '0') and (flag = "00")) then
          ROM_ADDRESS <= flag & vcount(4 downto 0);
          in_range <= '1';
   elsif((hcount >= X_coord2) and (hcount < (X_coord2 + SIZE))        --  Displays 'V'
    and (vcount > Y_coord) and (vcount < (Y_coord + SIZE)) and (blank = '0') and (flag = "01")) then
          ROM_ADDRESS <= flag & vcount(4 downto 0);
          in_range <= '1';	
   elsif((hcount >= X_coord3) and (hcount < (X_coord3 + SIZE))        --  Displays 'S'
    and (vcount > Y_coord) and (vcount < (Y_coord + SIZE)) and (blank = '0') and (flag = "10")) then
          ROM_ADDRESS <= flag & vcount(4 downto 0);
          in_range <= '1';	
   elsif((hcount >= X_coord4) and (hcount < (X_coord4 + SIZE))        --  Displays 'U'
    and (vcount > Y_coord) and (vcount < (Y_coord + SIZE)) and (blank = '0') and (flag = "11")) then
          ROM_ADDRESS <= flag & vcount(4 downto 0);
          in_range <= '1';	
   else
          ROM_ADDRESS <= "0000000";
	      in_range <= '0';
   end if;
  end if;
end process;
-- -----------------------------------------------------------------------------------------
process(clk,reset)      -- Process block to assign pixel values to RGB
begin
 if(reset = '1') then
    INTENSITY <= '0';
 elsif(rising_edge(clk)) then
    if((in_range = '1') and (blank = '0')) then
        INTENSITY <= ROM_DATA(conv_integer(hcount(4 downto 0)));
    else
        INTENSITY <= '0';
    end if;
 end if;
end process;
-- ----------------------------------------------------------------------------------------
Red <= (INTENSITY & INTENSITY & INTENSITY & INTENSITY) when (blank = '0') else X"0";
Green <= (INTENSITY & INTENSITY & INTENSITY & INTENSITY) when (blank = '0') else X"0";
Blue <= (INTENSITY & INTENSITY & INTENSITY & INTENSITY) when (blank = '0') else X"0";

end Behavioral;
