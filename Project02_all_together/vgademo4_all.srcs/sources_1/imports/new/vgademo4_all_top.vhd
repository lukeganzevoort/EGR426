--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/12/2017
--
-- Module: theseus_top.vhd
-- Description: This file is the main/top file for the game
--  THESEUS AND THE MINOTAUR
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vgademo4_all_top is
Port(clk_100MHz,reset : in std_logic;
  left_btn,right_btn,up_btn,down_btn,center_btn : in STD_LOGIC;
  HSYNC,VSYNC : out STD_LOGIC;
  Red,Grn,Blu : out STD_LOGIC_VECTOR(3 downto 0);
  leds : out std_logic_vector(15 downto 0);
  sevenSeg : out std_logic_vector(11 downto 0));
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
  Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
    win, lose, blank : in STD_LOGIC;
    Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component draw_minotaur is
  Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
    clk_25MHz : in std_logic;
    minotaur_X : in integer range 0 to 640 := 0;
    minotaur_Y : in integer range 0 to 480 := 0;
    Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component draw_theseus is
  Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
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
  Port (Red_back,Red_o2,Red_o3,Red_tle,Green_back,Green_o2,
    Green_o3,Green_tle,Blue_back,Blue_o2,Blue_o3,
    Blue_tle : in STD_LOGIC_VECTOR(3 downto 0);
    Red,Grn,Blu : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component debounce is
  port( clk,rst,x : in std_logic;
    pb_out : out std_logic);
end component;

component clk_divider_25kHz is
    Port ( clk_in_100Mhz : in STD_LOGIC;
           clk_out25kHz : out STD_LOGIC);
end component;

component game_logic is
  port(clk_25MHz, reset : in std_logic := '0';
    btn_u,btn_d,btn_l,btn_r,btn_c : in std_logic := '0';
    theseus_X,minotaur_X : out integer range 0 to 640 := 0;
    theseus_Y,minotaur_Y : out integer range 0 to 480 := 0;
    win, lose : out std_logic := '0');
end component;

signal clk_25MHz,clk_25kHz,blank,VSYNC_temp : STD_LOGIC;
signal hcount,vcount : STD_LOGIC_VECTOR(10 downto 0);
signal RED_s,GREEN_s,BLUE_s : STD_LOGIC_VECTOR(3 downto 0);
signal RED_r,GREEN_r,BLUE_r : STD_LOGIC_VECTOR(3 downto 0);
signal RED_g,GREEN_g,BLUE_g : STD_LOGIC_VECTOR(3 downto 0);
signal RED_t,GREEN_t,BLUE_t : STD_LOGIC_VECTOR(3 downto 0);
signal BtnLeft, BtnRight, BtnUp, BtnDown, BtnCenter : std_logic;
signal theseus_X,minotaur_X : integer range 0 to 640 := 0;
signal theseus_Y,minotaur_Y : integer range 0 to 480 := 0;
signal win, lose : std_logic;
-- ----------------------------------------------------------------
begin
Clk25M : clk_wiz_0 port map (clk_in1 => clk_100MHz, reset => reset,
  clk_out1 => clk_25MHz);

VGACtrl : vga_controller_640_60 port map (pixel_clk => clk_25MHz, rst => reset,
  HS => HSYNC,VS => VSYNC_temp, blank => blank, hcount => hcount,
  vcount => vcount);

Background : static_background port map (hcount => hcount, vcount => vcount,
  blank => blank, RED => RED_s, GREEN => GREEN_s, BLUE => BLUE_s, win => win,
  lose => lose);

Minotuar : draw_minotaur port map (hcount => hcount, vcount => vcount,
  clk_25MHz => clk_25MHz, minotaur_X => minotaur_X, minotaur_Y => minotaur_Y,
  RED => RED_r, GREEN => GREEN_r, BLUE => BLUE_r);

Theseus : draw_theseus port map (hcount => hcount, vcount => vcount,
  clk_25MHz => clk_25MHz, theseus_X => theseus_X, theseus_Y => theseus_Y,
  RED => RED_g, GREEN => GREEN_g, BLUE => BLUE_g);

Title : title_block port map (clk => clk_25MHz, reset => reset, blank => blank,
  hcount => hcount, vcount => vcount,
  RED => RED_t, GREEN => GREEN_t, BLUE => BLUE_t);

LayerDisplay : merge_display port map (Red_back => RED_s,
  Red_o2 => RED_r, Red_o3 => RED_g, Red_tle => RED_t, Green_back => GREEN_s,
  Green_o2 => GREEN_r, Green_o3 => GREEN_g,
  Green_tle => GREEN_t, Blue_back => BLUE_s,
  Blue_o2 => BLUE_r, Blue_o3 => BLUE_g, Blue_tle => BLUE_t,
  Red => Red, Grn => Grn, Blu => Blu);

btnLeftDebounce : debounce port map (clk => clk_25kHz, rst => reset,
  x => left_btn, pb_out => BtnLeft);

btnRightDebounce : debounce port map (clk => clk_25kHz, rst => reset,
  x => right_btn, pb_out => BtnRight);

btnUpDebounce : debounce port map (clk => clk_25kHz, rst => reset,
  x => up_btn, pb_out => BtnUp);

btnDownDebounce : debounce port map (clk => clk_25kHz, rst => reset,
  x => down_btn, pb_out => BtnDown);

btnCenterDebounce : debounce port map (clk => clk_25kHz, rst => reset,
  x => center_btn, pb_out => BtnCenter);

clk25k : clk_divider_25kHz port map (clk_in_100Mhz => clk_100MHz,
  clk_out25kHz => clk_25kHz);

GameLogic : game_logic port map (clk_25MHz => clk_25MHz, reset => reset,
  btn_u => BtnUp, btn_d => BtnDown, btn_l => BtnLeft, btn_r => BtnRight,
  btn_c => BtnCenter, theseus_X => theseus_X, minotaur_X => minotaur_X,
  theseus_Y => theseus_Y, minotaur_Y => minotaur_Y, win => win, lose => lose);

VSYNC <= VSYNC_temp;
leds <= "0000000000000000";
sevenSeg <= "111111111111";

end Behavioral;
