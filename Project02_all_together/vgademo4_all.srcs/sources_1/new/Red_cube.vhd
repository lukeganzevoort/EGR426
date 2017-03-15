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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Red_cube is
Port (left_btn,right_btn,up_btn,down_btn,reset,VS,blank : in STD_LOGIC;
      hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      clk_25MHz : in std_logic;
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end Red_cube;

architecture Behavioral of Red_cube is

  component character_slide is
    generic(startX, startY : integer);
    Port(clk_25MHz : in std_logic;
      next_positionX : in integer range 1 to 16;
      next_positionY : in integer range 1 to 12;
      character_centerX : out STD_LOGIC_VECTOR(10 downto 0);
      Character_centerY : out STD_LOGIC_VECTOR(10 downto 0);
      ready : out std_logic);
  end component;

  constant startX : integer := 1;
  constant startY : integer := 1;
  signal px : std_logic := '0';
  signal ROM_ADDRESS : STD_LOGIC_VECTOR(5 downto 0);
  signal ROM_DATA : STD_LOGIC_VECTOR(29 downto 0);
  signal posX, returnX : integer range 0 to 8 := startX;
  signal posY, returnY : integer range 1 to 8 := startY;
  signal center_px_X : STD_LOGIC_VECTOR(10 downto 0);
  signal center_px_Y : STD_LOGIC_VECTOR(10 downto 0);
  signal ready : std_logic;
  signal btnL, btnR, btnLp, btnRp, btnUp, btnDp : std_logic := '0';
  constant size : integer := 30;
  constant size2 : integer := (size/2);
  shared variable cnt : integer range 0 to 12500001;

begin

  animation: character_slide
    generic map(startX,startY)
    port map(clk_25MHz => clk_25MHz,
      next_positionX => posX, next_positionY => posY,
      character_centerX => center_px_X, Character_centerY => center_px_Y,
      ready => ready);

  -- Draw the character
  -------------------------------------------------------------------
  process(hcount,vcount, center_px_Y, center_px_X, clk_25MHz)
    variable vcnt, hcnt : integer := 0;
  begin
    if(vcount < center_px_Y+15 and vcount > center_px_Y-15 and
      hcount < center_px_X+15 and hcount > center_px_X-15) then

      vcnt := conv_integer(vcount);
      hcnt := conv_integer(hcount);

      -- ROM_ADDRESS <= conv_std_logic_vector(vcnt + size2 - 100,6);

      Red <= X"F";
    else
      Red <= X"0";
    end if;
  end process;

  -- process(center_px_X,center_px_Y)
  --   variable temp, cent_x, cent_y : integer;
  -- begin
  --   if(ready = '1')then
  --     cent_x := to_integer(unsigned(center_px_X));
  --     cent_y := to_integer(unsigned(center_px_Y));
  --     if ((cent_x+20)/40 > posX or (cent_x+20)/40 < posX) then
  --       returnX <= (cent_x+20)/40;
  --     elsif ((cent_y+20/40) < posY or (cent_y+20)/40 < posY) then
  --       returnY <= (cent_y+20)/40;
  --     else
  --       returnX <=
  --     end if;
  --   end if;
  -- end process;


  -- Left and Right button control
  -----------------------------------------------------------------
  process(clk_25MHz)
  begin
    if(rising_edge(clk_25MHz)) then

      if (right_btn = '1' and btnRp = '0' and ready = '1') then
        btnRp <= '1';
        if (posX < 8) then
          posX <= posX + 1;
        else
          posX <= 1;
        end if;
      elsif(right_btn ='0' and btnRp = '1' and ready = '1') then
        btnRp <= '0';
      end if;

      if (left_btn = '1' and btnLp = '0' and ready = '1') then
        btnLp <= '1';
        if (posX > 0) then
          posX <= posX - 1;
        else
          posX <= 8;
        end if;
      elsif(left_btn ='0' and btnLp = '1' and ready = '1') then
        btnLp <= '0';
      end if;

    end if;
  end process;

  process(clk_25MHz)
  begin
    if(rising_edge(clk_25MHz)) then

      if (up_btn = '1' and btnUp = '0' and ready = '1') then
        btnUp <= '1';
        if (posY > 1) then
          posY <= posY - 1;
        else
          posY <= 8;
        end if;
      elsif(up_btn ='0' and btnUp = '1' and ready = '1') then
        btnUp <= '0';
      end if;

      if (down_btn = '1' and btnDp = '0' and ready = '1') then
        btnDp <= '1';
        if (posY < 8) then
          posY <= posY + 1;
        else
          posY <= 1;
        end if;
      elsif(down_btn ='0' and btnDp = '1' and ready = '1') then
        btnDp <= '0';
      end if;

    end if;
  end process;

Green <= X"0";
Blue <= X"0";

end Behavioral;
