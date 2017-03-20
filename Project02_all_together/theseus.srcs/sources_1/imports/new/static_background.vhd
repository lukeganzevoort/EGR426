--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/12/2017
--
-- Module: static_background.vhd
-- Description: This file controls the static background of the game
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity static_background is
Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
  win, lose, blank : in STD_LOGIC;
  Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end static_background;

architecture Behavioral of static_background is
begin

  Background : process(vcount,hcount,blank)
  begin
     -- Main grid box
     if (hcount = 160 and vcount <= 400 and vcount >= 120 and blank = '0')
     or (hcount = 480 and vcount <= 400 and vcount >= 80 and blank = '0')
     or (vcount = 80 and hcount < 480 and hcount > 160 and blank = '0')
     or (vcount = 400 and hcount < 480 and hcount > 160 and blank = '0')
     or (vcount = 80 and hcount <= 160 and hcount >= 120 and blank = '0')
     or (vcount = 120 and hcount <= 160 and hcount >= 120 and blank = '0')
     then
       Red <= "0000";
       Green <= "0000";
       Blue <= "0000";
     -- Walls
     elsif ((hcount >= 199 and hcount <= 201 and vcount < 120 and vcount > 80)
       or (hcount >= 199 and hcount <= 201 and vcount < 320 and vcount > 280)
       or (hcount >= 239 and hcount <= 241 and vcount <= 321 and vcount > 280)
       or (hcount >= 239 and hcount <= 241 and vcount < 360 and vcount > 320)
       or (hcount >= 279 and hcount <= 281 and vcount < 280 and vcount > 240)
       or (hcount >= 319 and hcount <= 321 and vcount < 240 and vcount > 200)
       or (hcount >= 319 and hcount <= 321 and vcount < 360 and vcount > 320)
       or (hcount >= 359 and hcount <= 361 and vcount < 200 and vcount > 160)
       or (hcount >= 359 and hcount <= 361 and vcount < 400 and vcount > 360)
       or (hcount >= 399 and hcount <= 401 and vcount <= 321 and vcount > 280)
       or (hcount >= 439 and hcount <= 441 and vcount < 160 and vcount >= 119)
       or (vcount <= 321 and vcount >= 319 and hcount <= 201 and hcount > 160)
       or (vcount <= 361 and vcount >= 359 and hcount < 200 and hcount > 160)
       or (vcount <= 241 and vcount >= 239 and hcount < 240 and hcount > 200)
       or (vcount <= 121 and vcount >= 119 and hcount < 400 and hcount > 360)
       or (vcount <= 121 and vcount >= 119 and hcount < 480 and hcount > 440)
       or (vcount <= 241 and vcount >= 239 and hcount < 400 and hcount > 360)
       or (vcount <= 321 and vcount >= 319 and hcount < 440 and hcount > 400)
       or (vcount <= 361 and vcount >= 359 and hcount <= 361 and hcount >= 319))
       and blank = '0'
       then
         Red <= "0000";
         Green <= "0000";
         Blue <= "0000";

     -- intergrid lines
     elsif(((hcount = 160 or hcount = 200 or hcount = 240 or hcount = 280
     or hcount = 320 or hcount = 360 or hcount = 400 or hcount = 440
     or hcount = 480) and vcount <= 400 and vcount >= 80 and blank = '0')
     or ((vcount = 80 or vcount = 120 or vcount = 160 or vcount = 200
     or vcount = 240 or vcount = 280 or vcount = 320 or vcount = 360
     or vcount = 400) and hcount <= 480 and hcount >= 160 and blank = '0'))
     then
         Red <= "1001";
         Green <= "1001";
         Blue <= "1001";

     -- grid background
     elsif(vcount >= 80 and vcount <= 400 and hcount >= 160
     and hcount <= 480 and blank = '0')
     then
       Red <= "1000";
       Green <= "1000";
       Blue <= "1000";

     -- background
     elsif(blank = '0') then
       if(win = '0' and lose = '0')then
         Red <= "1000";
         Green <= "0101";
         Blue <= "0001";
       elsif(lose = '1')then
         Red <= "1001";
         Green <= "0001";
         Blue <= "0001";
       else -- win!
         Red <= "0001";
         Green <= "1001";
         Blue <= "0001";
       end if;

     -- blank case
     else
       Red <= "0000";
       Green <= "0000";
       Blue <= "0000";
     end if;
  end process;

end Behavioral;
