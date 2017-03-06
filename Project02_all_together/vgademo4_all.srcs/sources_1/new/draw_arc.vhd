----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/20/2016 04:28:06 PM
-- Design Name:
-- Module Name: Green_cube - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Green_cube is
Port (left_btn,right_btn,reset,VS,blank : in STD_LOGIC;
      hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end Green_cube;

architecture Behavioral of Green_cube is
signal Object_X_pos : STD_LOGIC_VECTOR(10 downto 0) := B"00000011110"; -- Decimal 30
signal Object_Y_pos : STD_LOGIC_VECTOR(10 downto 0) := B"00110011010"; -- Decimal 410

  function  sqrt  ( d : UNSIGNED ) return UNSIGNED;
  function  sqrt  ( d : UNSIGNED ) return UNSIGNED is
    variable a : unsigned(31 downto 0):= d;  --original input.
    variable q : unsigned(15 downto 0):=(others => '0');  --result.
    variable left,right,r : unsigned(17 downto 0):=(others => '0');  --input to adder/sub.r-remainder.
    variable i : integer:=0;
  begin
    for i in 0 to 15 loop
    right(0):='1';
    right(1):=r(17);
    right(17 downto 2):=q;
    left(1 downto 0):=a(31 downto 30);
    left(17 downto 2):=r(15 downto 0);
    a(31 downto 2):=a(29 downto 0);  --shifting by 2 bit.
    if ( r(17) = '1') then
    r := left + right;
    else
    r := left - right;
    end if;
    q(15 downto 1) := q(14 downto 0);
    q(0) := not r(17);
    end loop;
    return q;
  end sqrt;

begin



 process(hcount,vcount,blank)       -- Procedural block for displaying the GREEN object
   variable row : integer := 0;
   variable col : integer := 0;
   variable number : integer := 0;
   variable num : integer := 0;
   variable num1 : integer := 0;

 begin

   row := conv_integer(vcount);
   col := conv_integer(hcount);
   num := (2500-(row-240)*(row-240));
   num1 := TO_INTEGER(sqrt(TO_UNSIGNED(num,32)));
   number := 320 + num1;

   if(col = number)  and (blank = '0') then
     Green <= X"F";
   else
     Green <= X"0";
   end if;
 end process;

-- -------------------------------------------------------------------------
 process(VS, reset) -- Moving the Red object from left to right and back on Vertical sync
 begin
  if(reset = '1') then
     Object_X_pos <= B"00000011110";    -- Decimal 30
  elsif(rising_edge(VS)) then
   if(right_btn = '1') then
    if((640 - Object_X_pos) > 60) then 	    -- Move from L -> R
   	    Object_X_pos <= Object_X_pos + 5;
 	elsif(Object_X_pos = 580) then			-- Reach extreme RIGHT POSITION
   	    Object_X_pos <= Object_X_pos;
   	end if;
   elsif(left_btn = '1') then
 	if((Object_X_pos - 0) > 30) then		-- Move from R -> L
        Object_X_pos <= Object_X_pos - 5;
 	elsif(Object_X_pos = 30) then 			-- Reach extreme LEFT POSITION
        Object_X_pos <= Object_X_pos;
 	end if;
   end if;      -- btn
  end if;       -- rising_edge
  end process;

Red <= X"0";
Blue <= X"0";

end Behavioral;
