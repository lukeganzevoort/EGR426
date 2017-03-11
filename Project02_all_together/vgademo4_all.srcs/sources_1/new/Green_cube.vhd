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
use IEEE.STD_LOGIC_ARITH.ALL;

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
      clk_25MHz : in std_logic;
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end Green_cube;

architecture Behavioral of Green_cube is

  signal Object_X_pos : STD_LOGIC_VECTOR(10 downto 0) := B"00000011110"; -- Decimal 30
  signal Object_Y_pos : STD_LOGIC_VECTOR(10 downto 0) := B"00110011010"; -- Decimal 410
  constant radius : integer := 15;

  component drawCircle is
    generic ( x_px, y_px, radius_px : integer);
    port( hcount, vcount : in std_logic_vector(10 downto 0);
      clk_25MHz : in std_logic;
      out_px : out std_logic );
  end component;

  component theseus_rom is
    PORT (
      clka : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(29 DOWNTO 0)
    );
  end component;

  signal px : std_logic := '0';
  signal ROM_ADDRESS : STD_LOGIC_VECTOR(5 downto 0);
  signal ROM_DATA : STD_LOGIC_VECTOR(29 downto 0);
  signal posX, posY : integer range 1 to 15 := 1;
  signal btnL, btnR, btnLp, btnRp : std_logic := '0';
  constant size : integer := 30;
  constant size2 : integer := (size/2);
  shared variable cnt : integer range 0 to 12500001;

begin



  -- ROM_Theseus : theseus_rom
  --   port map ( clka => clk_25MHz, addra => ROM_ADDRESS, douta => ROM_DATA);

  -- M1: drawCircle
  --   generic map ( x_px => 80, y_px => 100, radius_px => 15)
  --   port map( hcount => hcount, vcount => vcount, out_px => px );

  process(hcount,vcount, posX, posY, clk_25MHz)
    variable vcnt, hcnt : integer := 0;
  begin
    -- if((vcount - (posY*40+20) + 15) >= 0 and (vcount - (posY*40+20) + 15) <= 30
    -- and (hcount - (posX*40+20) + 15) >= 0 and (hcount - (posX*40+20) + 15) <= 30) then
    if(vcount < posY*40+15 and vcount > posY*40-15 and
      hcount < posX*40+15 and hcount > posX*40-15) then

      vcnt := conv_integer(vcount);
      hcnt := conv_integer(hcount);

      --ROM_ADDRESS <= conv_std_logic_vector(vcnt + size2 - 100,6);

      Green <= X"F";
    else
      Green <= X"0";
    end if;
  end process;

  --process(left_btn,right_btn, clk_25MHz)
  process(clk_25MHz)
  begin
    if(rising_edge(clk_25MHz)) then

      if (right_btn = '1' and btnRp = '0') then
        btnRp <= '1';
        if (posX < 15) then
          posX <= posX + 1;
        else
          posX <= 1;
        end if;
      elsif(right_btn ='0' and btnRp = '1') then
        btnRp <= '0';
      end if;

      if (left_btn = '1' and btnLp = '0') then
        btnLp <= '1';
        if (posX > 1) then
          posX <= posX - 1;
        else
          posX <= 15;
        end if;
      elsif(left_btn ='0' and btnLp = '1') then
        btnLp <= '0';
      end if;
    end if;
  end process;
  --
  -- process(btnL,btnR)
  -- begin
  --   if((btnL = '1')) then
  --     if(posX < 10) then
  --       posX <= posX + 1;
  --     end if;
  --   end if;
  --
  --   if((btnR = '1')) then
  --     if(posX > 6) then
  --       posX <= posX - 1;
  --     end if;
  --   end if;
  -- end process;

  -- process(px)
  -- begin
  --   if(px = '1') then
  --     Green <= X"F";
  --   else
  --     Green <= X"0";
  --   end if;
  -- end process;

  --  draw_circle:process(hcount,vcount,blank)       -- Procedural block for displaying the GREEN object
  --    variable row : integer := 0;
  --    variable col : integer := 0;
  --    variable number : integer := 0;
  --    variable EcolH, EcolL, ErowH, ErowL : integer := 0;
  --    constant radiusSq : integer := (15*15);
  --    constant centerX : integer := 260;
  --    constant centerY : integer := 180;
  --  begin
  --    row := conv_integer(vcount);
  --    col := conv_integer(hcount);
  --    EcolH := centerX + TO_INTEGER(sqrt(TO_UNSIGNED((radiusSq-(row-centerY)*(row-centerY)),32)));
  --    EcolL := centerX - TO_INTEGER(sqrt(TO_UNSIGNED((radiusSq-(row-centerY)*(row-centerY)),32)));
  --    ErowH := centerY + TO_INTEGER(sqrt(TO_UNSIGNED((radiusSq-(col-centerX)*(col-centerX)),32)));
  --    ErowL := centerY - TO_INTEGER(sqrt(TO_UNSIGNED((radiusSq-(col-centerX)*(col-centerX)),32)));
   --
  --    if(col <= EcolH and col >= EcolL and row <= ErowH and row >= ErowL
  --      and EcolH > EcolL and ErowH > ErowL and EcolH >= 0 and EcolH <= 640
  --      and EcolL >= 0 and EcolL <= 640 and ErowH >= 0 and ErowH <= 480
  --      and ErowL >= 0 and ErowL <= 640) and (blank = '0') then
  --      Green <= X"F";
  --    else
  --      Green <= X"0";
  --    end if;
  --  end process;
 -- process(hcount,vcount,blank)       -- Procedural block for displaying the GREEN object
 --   variable row : integer := 0;
 --   variable col : integer := 0;
 --   variable number : integer := 0;
 --   variable num : integer := 0;
 --   variable num1 : integer := 0;
 -- begin
 -- if((((hcount - Object_X_pos) <= 30) and ((Object_X_pos - hcount) >= 30) and  -- Upper rectangle
 --    ((vcount - Object_Y_pos) <= 15) and ((Object_Y_pos - vcount) >= 15) and (blank = '0'))
 -- or (((hcount - Object_X_pos) <= 30) and ((Object_X_pos - hcount) >= 30) and -- Lower rectangle
 -- ((vcount - 30 - Object_Y_pos) <= 15) and ((Object_Y_pos - 30 - vcount) >= 15) and (blank = '0'))
 -- or (((hcount - 10 - Object_X_pos) <= 10) and ((Object_X_pos - hcount) >= 10) and -- Vertical Bar
 -- ((vcount - 15 - Object_Y_pos) <= 15) and (blank = '0'))) then
 --   Green <= X"F";
 -- else
 --      Green <= X"0";
 -- end if;
 --   row := conv_integer(vcount) + Object_Y_pos;
 --   col := conv_integer(hcount) + Object_X_pos;
 --   number := (480*row-row*row+640*col-col*col);
 --
 --   if(col = number)  and (blank = '0') then
 --     Green <= X"F";
 --   else
 --     Green <= X"0";
 --   end if;
 -- end process;

-- -------------------------------------------------------------------------
 -- process(VS, reset) -- Moving the Red object from left to right and back on Vertical sync
 -- begin
 --  if(reset = '1') then
 --     Object_X_pos <= B"00000011110";    -- Decimal 30
 --  elsif(rising_edge(VS)) then
 --   if(right_btn = '1') then
 --    if((640 - Object_X_pos) > 60) then 	    -- Move from L -> R
 --   	    Object_X_pos <= Object_X_pos + 5;
 -- 	elsif(Object_X_pos = 580) then			-- Reach extreme RIGHT POSITION
 --   	    Object_X_pos <= Object_X_pos;
 --   	end if;
 --   elsif(left_btn = '1') then
 -- 	if((Object_X_pos - 0) > 30) then		-- Move from R -> L
 --        Object_X_pos <= Object_X_pos - 5;
 -- 	elsif(Object_X_pos = 30) then 			-- Reach extreme LEFT POSITION
 --        Object_X_pos <= Object_X_pos;
 -- 	end if;
 --   end if;      -- btn
 --  end if;       -- rising_edge
 --  end process;

Red <= X"0";
Blue <= X"0";

end Behavioral;
