----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/14/2017 11:05:14 PM
-- Design Name:
-- Module Name: game_logic - Behavioral
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

entity game_logic is
  port(
  clk_25MHz : in std_logic := '0';
  btn_u,btn_d,btn_l,btn_r : in std_logic := '0';
  theseus_X,minotaur_X : out integer range 0 to 640 := 0;
  theseus_Y,minotaur_Y : out integer range 0 to 480 := 0);
end game_logic;

architecture Behavioral of game_logic is

  constant th_startX : integer := 2;
  constant th_startY : integer := 2;
  constant mi_startX : integer := 1;
  constant mi_startY : integer := 1;

  signal th_map_x : integer range 0 to 8 := th_startX;
  signal th_map_y : integer range 0 to 8 := th_startY;
  signal mi_map_x : integer range 0 to 8 := mi_startX;
  signal mi_map_y : integer range 0 to 8 := mi_startY;

begin

  Theseus_Px_Ctrl: process(btn_u,btn_d,btn_l,btn_r,clk_25MHz)
  begin
    if(rising_edge(clk_25MHz)) then
      theseus_X <= (th_map_x * 40 + 140);
      theseus_Y <= (th_map_y * 40 + 60);
    end if;
  end process;

end Behavioral;
