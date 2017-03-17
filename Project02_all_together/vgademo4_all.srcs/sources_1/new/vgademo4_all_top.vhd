----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/20/2016 04:50:28 PM
-- Design Name:
-- Module Name: vgademo4_all_top - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vgademo4_all_top is
Port(clk_100MHz,reset,left_btn,right_btn,up_btn,down_btn : in STD_LOGIC;
     HSYNC,VSYNC,locked : out STD_LOGIC;
     R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0 : out STD_LOGIC);
end vgademo4_all_top;

architecture Behavioral of vgademo4_all_top is
-- ---------------------------------------------------------------------
component clk_wiz_0
port(clk_in1,reset : in std_logic; clk_out1,locked : out std_logic);
end component;

component vga_controller_640_60 is
port(rst,pixel_clk : in std_logic; HS,VS,blank : out std_logic;
     hcount,vcount : out std_logic_vector(10 downto 0));
end component;

component static_background is
Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0); blank : in STD_LOGIC;
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component Blue_cube is
Port (reset,VS,blank : in STD_LOGIC; hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component Red_cube is
  Port (left_btn,right_btn,up_btn,down_btn,reset,VS,blank : in STD_LOGIC;
        hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
        clk_25MHz : in std_logic;
        minotaur_X : in integer range 0 to 640 := 0;
        minotaur_Y : in integer range 0 to 480 := 0;
        Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component Green_cube is
  Port (left_btn,right_btn,up_btn,down_btn,reset,VS,blank : in STD_LOGIC;
        hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
        clk_25MHz : in std_logic;
        theseus_X : in integer range 0 to 640 := 0;
        theseus_Y : in integer range 0 to 480 := 0;
        Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component title_block is
Port (clk,reset,blank : in STD_LOGIC;
      hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component merge_display is
  Port (Red_back,Red_o1,Red_o2,Red_o3,Red_tle : in STD_LOGIC_VECTOR(3 downto 0);
        Green_back,Green_o1,Green_o2,Green_o3,Green_tle : in STD_LOGIC_VECTOR(3 downto 0);
        Blue_back,Blue_o1,Blue_o2,Blue_o3,Blue_tle : in STD_LOGIC_VECTOR(3 downto 0);
        R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0 : out STD_LOGIC);
end component;

component debounce is
  port( clk,rst,x : std_logic;
    pb_out : out std_logic);
end component;

component clk_divider_25kHz is
    Port ( clk_in_100Mhz : in STD_LOGIC;
           clk_out25kHz : out STD_LOGIC);
end component;

component game_logic is
  port(clk_25MHz : in std_logic := '0';
    btn_u,btn_d,btn_l,btn_r : in std_logic := '0';
    theseus_X,minotaur_X : out integer range 0 to 640 := 0;
    theseus_Y,minotaur_Y : out integer range 0 to 480 := 0);
end component;

signal clk_25MHz,clk_25kHz,blank,VSYNC_temp : STD_LOGIC;
signal hcount,vcount : STD_LOGIC_VECTOR(10 downto 0);
signal RED_s,GREEN_s,BLUE_s : STD_LOGIC_VECTOR(3 downto 0);
signal RED_b,GREEN_b,BLUE_b : STD_LOGIC_VECTOR(3 downto 0);
signal RED_r,GREEN_r,BLUE_r : STD_LOGIC_VECTOR(3 downto 0);
signal RED_g,GREEN_g,BLUE_g : STD_LOGIC_VECTOR(3 downto 0);
signal RED_t,GREEN_t,BLUE_t : STD_LOGIC_VECTOR(3 downto 0);
signal BtnLeft, BtnRight, BtnUp, BtnDown : std_logic;
signal theseus_X,minotaur_X : integer range 0 to 640 := 0;
signal theseus_Y,minotaur_Y : integer range 0 to 480 := 0;
signal dummy : std_logic := '0';
-- ----------------------------------------------------------------
begin
c1 : clk_wiz_0 PORT MAP (clk_in1 => clk_100MHz, reset => reset, clk_out1 => clk_25MHz,
                         locked => locked);

v1 : vga_controller_640_60 PORT MAP (pixel_clk => clk_25MHz, rst => reset, HS => HSYNC,
                                     VS => VSYNC_temp, blank => blank, hcount => hcount,
                                     vcount => vcount);

s1 : static_background PORT MAP (hcount => hcount, vcount => vcount, blank => blank,
                                 RED => RED_s, GREEN => GREEN_s, BLUE => BLUE_s);

b11 : Blue_cube PORT MAP (reset => reset, VS => VSYNC_temp, blank => blank, hcount => hcount,
                         vcount => vcount, RED => RED_b, GREEN => GREEN_b, BLUE => BLUE_b);

r11 : Red_cube PORT MAP (left_btn => dummy, right_btn => dummy,
  up_btn => dummy, down_btn => dummy, reset => reset,
  VS => VSYNC_temp, blank => blank, hcount => hcount, vcount => vcount,
  clk_25MHz => clk_25MHz, minotaur_X => minotaur_X, minotaur_Y => minotaur_Y,
  RED => RED_r, GREEN => GREEN_r, BLUE => BLUE_r);

g11 : Green_cube PORT MAP (left_btn => dummy, right_btn => dummy,
  up_btn => dummy, down_btn => dummy, reset => reset,
  VS => VSYNC_temp, blank => blank, hcount => hcount, vcount => vcount,
  clk_25MHz => clk_25MHz, theseus_X => theseus_X, theseus_Y => theseus_Y,
  RED => RED_g, GREEN => GREEN_g, BLUE => BLUE_g);

t1 : title_block PORT MAP (clk => clk_25MHz, reset => reset, blank => blank,
                           hcount => hcount, vcount => vcount,
                           RED => RED_t, GREEN => GREEN_t, BLUE => BLUE_t);

m1 : merge_display PORT MAP (Red_back => RED_s, Red_o1 => RED_b, Red_o2 => RED_r, Red_o3 => RED_g, Red_tle => RED_t,
                             Green_back => GREEN_s, Green_o1 => GREEN_b, Green_o2 => GREEN_r, Green_o3 => GREEN_g, Green_tle => GREEN_t,
                             Blue_back => BLUE_s, Blue_o1 => BLUE_b, Blue_o2 => BLUE_r, Blue_o3 => BLUE_g, Blue_tle => BLUE_t,
                             R3 => R3, R2 => R2, R1 => R1,
                             R0 => R0, G3 => G3, G2 => G2, G1 => G1, G0 => G0, B3 => B3,
                             B2 => B2, B1 => B1, B0 => B0);

bL : debounce port map (clk => clk_25kHz, rst => reset, x => left_btn,
  pb_out => BtnLeft);

bR : debounce port map (clk => clk_25kHz, rst => reset, x => right_btn,
  pb_out => BtnRight);

bU : debounce port map (clk => clk_25kHz, rst => reset, x => up_btn,
  pb_out => BtnUp);

bD : debounce port map (clk => clk_25kHz, rst => reset, x => down_btn,
  pb_out => BtnDown);

clk25k : clk_divider_25kHz port map (clk_in_100Mhz => clk_100MHz,
  clk_out25kHz => clk_25kHz);

GL : game_logic port map (clk_25MHz => clk_25MHz,
  btn_u => BtnUp, btn_d => BtnDown, btn_l => BtnLeft, btn_r => BtnRight,
  theseus_X => theseus_X, minotaur_X => minotaur_X,
  theseus_Y => theseus_Y, minotaur_Y => minotaur_Y);

VSYNC <= VSYNC_temp;


end Behavioral;
