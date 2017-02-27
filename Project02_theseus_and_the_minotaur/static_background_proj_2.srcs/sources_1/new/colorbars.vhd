----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 01/31/2016 04:30:49 PM
-- Design Name:
-- Module Name: colorbars - Behavioral
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

entity colorbars is
Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      blank : in STD_LOGIC;
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0);
      clk_100MHz : in STD_LOGIC);
end colorbars;

architecture Behavioral of colorbars is

  component LFSR_Random is
    Port ( clk : in STD_LOGIC;
         reset : in STD_LOGIC;
         rand3bit : out STD_LOGIC_VECTOR (2 downto 0));
  end component;

  signal lfsr_rst : std_logic := '0';
  signal rand3bits : std_logic_vector(2 downto 0) := "111";

begin
  l1: LFSR_Random port map(clk => clk_100MHz, reset => lfsr_rst, rand3bit=>rand3bits);


  -- Reset_LFSR: process(vcount)
  -- begin
  --   if vcount = 0 then
  --     lfsr_rst <= '1';
  --   end if;
  -- end process;

  Background: process(vcount,hcount,blank)
  begin
    lfsr_rst <= '0';
    -- Main grid
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
        Blue <= "1111";

    -- intergrid lines
    elsif(((hcount = 160 or hcount = 200 or hcount = 240 or hcount = 280
    or hcount = 320 or hcount = 360 or hcount = 400 or hcount = 440
    or hcount = 480) and vcount <= 400 and vcount >= 80 and blank = '0')
    or ((vcount = 80 or vcount = 120 or vcount = 160 or vcount = 200
    or vcount = 240 or vcount = 280 or vcount = 320 or vcount = 360
    or vcount = 400) and hcount <= 480 and hcount >= 160 and blank = '0'))
    then
        Red <= "0000";
        Green <= "1111";
        Blue <= "0000";
    -- grid background
    elsif(vcount >= 80 and vcount <= 400 and hcount >= 160 and hcount <= 480 and blank = '0') then
      Red(3) <= '1';
      Red(2) <= rand3bits(2);
      Red(1) <= rand3bits(2);
      Red(0) <= rand3bits(2);
      Green(3) <= '1';
      Green(2) <= rand3bits(2);
      Green(1) <= rand3bits(2);
      Green(0) <= rand3bits(2);
      Blue(3) <= '1';
      Blue(2) <= rand3bits(2);
      Blue(1) <= rand3bits(2);
      Blue(0) <= rand3bits(2);

    -- background
    elsif(blank = '0') then
      Red <= "1000";
      Green <= "0101";
      Blue <= "0001";
    else
      Red <= "0000";
      Green <= "0000";
      Blue <= "0000";
    end if;
  end process;


end Behavioral;
