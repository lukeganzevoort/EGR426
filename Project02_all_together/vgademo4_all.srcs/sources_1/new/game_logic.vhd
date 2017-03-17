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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity game_logic is
  port(clk_25MHz : in std_logic := '0';
    btn_u,btn_d,btn_l,btn_r : in std_logic := '0';
    theseus_X,minotaur_X : out integer range 0 to 640 := 0;
    theseus_Y,minotaur_Y : out integer range 0 to 480 := 0);
end game_logic;

architecture Behavioral of game_logic is

  component map_walls IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
  end component;

  constant th_startX : integer := 2;
  constant th_startY : integer := 2;
  constant mi_startX : integer := 1;
  constant mi_startY : integer := 1;

  signal th_map_x : integer range 0 to 8 := th_startX;
  signal th_map_y : integer range 0 to 8 := th_startY;
  signal mi_map_x : integer range 0 to 8 := mi_startX;
  signal mi_map_y : integer range 0 to 8 := mi_startY;
  signal theseus_done : std_logic := '0';
  signal minotaur_done : std_logic := '0';
  signal ROM_ADDRESS_X, ROM_ADDRESS_Y : STD_LOGIC_VECTOR(3 downto 0);
  signal ROM_DATA_X, ROM_DATA_Y : STD_LOGIC_VECTOR(8 downto 0);

begin

  TheseusWallsX : map_walls port map(
    clka => clk_25MHz,
    addra => ROM_ADDRESS_X,
    douta => ROM_DATA_X);
  TheseusWallsY : map_walls port map(
    clka => clk_25MHz,
    addra => ROM_ADDRESS_Y,
    douta => ROM_DATA_Y);

  theseus_X <= (th_map_x * 40 + 140);
  theseus_Y <= (th_map_y * 40 + 60);
  minotaur_X <= (mi_map_x * 40 + 140);
  minotaur_Y <= (mi_map_y * 40 + 60);

  Theseus_Px_Ctrl : process(btn_d,btn_u,btn_l,btn_r,clk_25MHz)
    variable btn_l_last, btn_r_last, btn_u_last, btn_d_last : std_logic := '0';
    variable theseus_turn : std_logic := '1';
  begin
    if(rising_edge(clk_25MHz))then

      -------------------
      -- Theseus' turn --
      -------------------
      if(theseus_turn = '1')then
        if (btn_u /= btn_u_last) then
          btn_u_last := btn_u;
          if (btn_u = '1' and th_map_y > 1) then
            th_map_y <= th_map_y - 1;
            theseus_turn := '0';
          end if;
        end if;

        if (btn_d /= btn_d_last) then
          btn_d_last := btn_d;
          if (btn_d = '1' and th_map_y < 8) then
            th_map_y <= th_map_y + 1;
            theseus_turn := '0';
          end if;
        end if;

        if (btn_l /= btn_l_last) then
          btn_l_last := btn_l;
          if (btn_l = '1' and th_map_x > 1) then
            th_map_x <= th_map_x - 1;
            theseus_turn := '0';
          end if;
        end if;

        if (btn_r /= btn_r_last) then
          btn_r_last := btn_r;
          if (btn_r = '1' and th_map_x < 8) then
            th_map_x <= th_map_x + 1;
            theseus_turn := '0';
          end if;
        end if;

      ---------------------
      -- Minotaur's turn --
      ---------------------
      else
        if(th_map_x > mi_map_x)then
          -- if(ROM_DATA_X /= "010000001")then
          if(ROM_DATA_X(mi_map_x) = '0')then
            mi_map_x <= mi_map_x + 1;
          end if;
        elsif(th_map_x < mi_map_x)then
          mi_map_x <= mi_map_x - 1;
        elsif(th_map_y > mi_map_y)then
          mi_map_y <= mi_map_y + 1;
        elsif(th_map_y < mi_map_y)then
          mi_map_y <= mi_map_y - 1;
        end if;
        theseus_turn := '1';
      end if;
    end if;
  end process;

  ROM_ADDRESS_X <= conv_std_logic_vector((mi_map_y - 1 ),4);
  ROM_ADDRESS_Y <= conv_std_logic_vector((mi_map_x + 7),4);
end Behavioral;
