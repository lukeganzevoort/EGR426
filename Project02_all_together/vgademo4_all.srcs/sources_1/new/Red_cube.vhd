----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2016 04:28:42 PM
-- Design Name: 
-- Module Name: Red_cube - Behavioral
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

entity Red_cube is
Port (reset,VS,blank : in STD_LOGIC; hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end Red_cube;

architecture Behavioral of Red_cube is
signal Object_X_pos : STD_LOGIC_VECTOR(10 downto 0) := B"00000010100"; -- Decimal 20
signal Object_Y_pos : STD_LOGIC_VECTOR(10 downto 0) := B"00010001100"; -- Decimal 140
signal flag : STD_LOGIC := '0';
begin
 process(hcount,vcount,blank)       -- Procedural block for displaying the RED object
 begin
 if((((hcount - Object_X_pos) <= 30) and ((Object_X_pos - hcount) >= 30) and  -- Upper rectangle
    ((vcount - Object_Y_pos) <= 15) and ((Object_Y_pos - vcount) >= 15) and (blank = '0'))  
 or (((hcount - Object_X_pos) <= 30) and ((Object_X_pos - hcount) >= 30) and -- Lower rectangle
	((vcount - 30 - Object_Y_pos) <= 15) and ((Object_Y_pos - 30 - vcount) >= 15) and (blank = '0'))
 or (((hcount - 10 - Object_X_pos) <= 10) and ((Object_X_pos - hcount) >= 10) and -- Vertical Bar
	((vcount - 15 - Object_Y_pos) <= 15) and (blank = '0'))) then
	  Red <= X"F";
 else
      Red <= X"0";
 end if;
 end process;
-- ------------------------------------------------------------------------------
 process(VS, reset) -- Moving the Red object from left to right and back on Vertical sync
 begin
  if(reset = '1') then
     Object_X_pos <= B"00000010100";    -- Decimal 20
 	 flag <= '0';
  elsif(rising_edge(VS)) then
    if(((640 - Object_X_pos) > 50) and (flag = '0')) then 	-- Move from L -> R
   	    Object_X_pos <= Object_X_pos + 2;
 	    flag <= '0';
    elsif(Object_X_pos = 590) then			-- Reach extreme RIGHT POSITION
   	    Object_X_pos <= Object_X_pos - 2;			
 	    flag <= '1';
    elsif(((Object_X_pos - 0) > 20) and (flag = '1')) then		-- Move from R -> L
        Object_X_pos <= Object_X_pos - 2;
 	    flag <= '1';
    elsif(Object_X_pos = 20) then 			-- Reach extreme LEFT POSITION
        Object_X_pos <= Object_X_pos + 2;			
 	    flag <= '0';
    end if;
  end if;
  end process;
  
Blue <= X"0";
Green <= X"0";

end Behavioral;
