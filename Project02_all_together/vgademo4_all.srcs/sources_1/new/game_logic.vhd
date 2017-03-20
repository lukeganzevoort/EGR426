--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/12/2017
--
-- Module: game_logic.vhd
-- Description: This file takes in button presses and determines center of
--  each of the characters on the screen in pixels.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity game_logic is
  port(clk_25MHz, reset : in std_logic := '0';
    btn_u,btn_d,btn_l,btn_r,btn_c : in std_logic := '0';
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

  component character_slide is
    generic(startX, startY : integer);
    Port(clk_25MHz : in std_logic;
      reset : in std_logic;
      next_positionX : in integer range 0 to 8;
      next_positionY : in integer range 0 to 8;
      Character_centerX : out integer range 0 to 640;
      Character_centerY : out integer range 0 to 480;
      sliding : out std_logic);
  end component;

  constant th_startX : integer := 2;
  constant th_startY : integer := 2;
  constant mi_startX : integer := 1;
  constant mi_startY : integer := 1;
  constant th_winX : integer := 0;
  constant th_winY : integer := 1;

  signal th_map_x : integer range 0 to 8 := th_startX;
  signal th_map_y : integer range 0 to 8 := th_startY;
  signal mi_map_x : integer range 0 to 8 := mi_startX;
  signal mi_map_y : integer range 0 to 8 := mi_startY;
  signal mi_rom_addr_X, mi_rom_addr_Y : STD_LOGIC_VECTOR(3 downto 0);
  signal th_rom_addr_X, th_rom_addr_Y : STD_LOGIC_VECTOR(3 downto 0);
  signal mi_rom_data_X, mi_rom_data_Y : STD_LOGIC_VECTOR(8 downto 0);
  signal th_rom_data_X, th_rom_data_Y : STD_LOGIC_VECTOR(8 downto 0);
  signal th_sliding, mi_sliding : std_logic := '0';
  signal win,lose : std_logic := '0';
  --signal state : STD_LOGIC_VECTOR(2 downto 0) := "001";

  type state_type is (rst, theseus_turn, minotaur_turn1, minotaur_turn2);
  signal current_state,next_state : state_type := theseus_turn;

begin

  TheseusWallsX : map_walls
    port map(clka => clk_25MHz,
      addra => th_rom_addr_X,
      douta => th_rom_data_X);
  TheseusWallsY : map_walls
    port map(clka => clk_25MHz,
      addra => th_rom_addr_Y,
      douta => th_rom_data_Y);
  TheseusSlide : character_slide
    generic map(startX => th_startX, startY => mi_startY)
    port map(clk_25MHz => clk_25MHz,
      reset => reset,
      next_positionX => th_map_x,
      next_positionY => th_map_y,
      Character_centerX => theseus_X,
      Character_centerY => theseus_Y,
      sliding => th_sliding);
  MinotaurWallsX : map_walls
    port map(clka => clk_25MHz,
      addra => mi_rom_addr_X,
      douta => mi_rom_data_X);
  MinotaurWallsY : map_walls
    port map(clka => clk_25MHz,
      addra => mi_rom_addr_Y,
      douta => mi_rom_data_Y);
  MinotaurSlide : character_slide
    generic map(startX => mi_startX, startY => mi_startY)
    port map(clk_25MHz => clk_25MHz,
      reset => reset,
      next_positionX => mi_map_x,
      next_positionY => mi_map_y,
      Character_centerX => minotaur_X,
      Character_centerY => minotaur_Y,
      sliding => mi_sliding);

  -- Set the ROM addresses based on which row or column the characher is in
  --  on the map.
  mi_rom_addr_X <= conv_std_logic_vector((mi_map_y - 1),4);
  mi_rom_addr_Y <= conv_std_logic_vector((mi_map_x + 7),4);
  th_rom_addr_X <= conv_std_logic_vector((th_map_y - 1),4);
  th_rom_addr_Y <= conv_std_logic_vector((th_map_x + 7),4);

  -- Syncronous state machine with reset override
  sreg: process(clk_25MHz)
  begin
    if(reset = '1') then
      current_state <= rst;
    elsif(rising_edge(clk_25MHz))then
      current_state <= next_state;
    end if;
  end process;

  -- Process to determine the game is over. Stops all movements
  EndGameProcess : process(clk_25MHz)
  begin
    if(reset = '1')then
      win <= '0';
      lose <= '0';
    elsif(rising_edge(clk_25MHz))then
      if(th_map_x = th_winX and th_map_y = th_winY)then
        win <= '1';
      elsif(th_map_x = mi_map_x and th_map_y = mi_map_y)then
        lose <= '1';
      else
        win <= '0';
        lose <= '0';
      end if;
    end if;
  end process;


  process(current_state,clk_25MHz)
    variable btn_l_last, btn_r_last, btn_u_last, btn_d_last,
      btn_c_last : std_logic := '0';
    variable minotaur_used_turns : integer range 0 to 2 := 0;
  begin
    if(rising_edge(clk_25MHz) and win = '0' and lose = '0')then
      case current_state is
        -- Reset state --
        when rst =>
          th_map_x <= th_startX;
          th_map_y <= th_startY;
          mi_map_x <= mi_startX;
          mi_map_y <= mi_startY;
          -- Reset to theseus turn once the reset button is released
          next_state <= theseus_turn;
        -- Theseus' turn --
        when theseus_turn =>
          if(mi_sliding = '0' and th_sliding = '0')then
            if (btn_u /= btn_u_last) then
              btn_u_last := btn_u;
              if (btn_u = '1' and th_map_y > 0
              and th_rom_data_Y(th_map_y-1) = '0') then
                th_map_y <= th_map_y - 1;
                next_state <= minotaur_turn1;
              end if;
            elsif (btn_d /= btn_d_last) then
              btn_d_last := btn_d;
              if (btn_d = '1' and th_map_y < 8
              and th_rom_data_Y(th_map_y) = '0') then
                th_map_y <= th_map_y + 1;
                next_state <= minotaur_turn1;
              end if;
            elsif (btn_l /= btn_l_last) then
              btn_l_last := btn_l;
              if (btn_l = '1' and th_map_x > 0
              and th_rom_data_X(th_map_x-1) = '0') then
                th_map_x <= th_map_x - 1;
                next_state <= minotaur_turn1;
              end if;
            elsif (btn_r /= btn_r_last) then
              btn_r_last := btn_r;
              if (btn_r = '1' and th_map_x < 8
              and th_rom_data_X(th_map_x) = '0') then
                th_map_x <= th_map_x + 1;
                next_state <= minotaur_turn1;
              end if;
            elsif (btn_c /= btn_c_last)then
              btn_c_last := btn_c;
              if(btn_c = '1')then
                next_state <= minotaur_turn1;
              end if;
            end if;
          end if;
        -- Minotaur's turn --
        when minotaur_turn1 | minotaur_turn2 =>
          if(mi_sliding = '0' and th_sliding = '0')then
            -- If theseus is right of the minotaur...
            if(th_map_x > mi_map_x)then
              -- If there isn't a wall to the right...
              if(mi_rom_data_X(mi_map_x) = '0')then
                -- Then go right!
                mi_map_x <= mi_map_x + 1;
              -- If there is a wall to the right, check if theseus is down from
              --  the minotaur...
              elsif(th_map_y > mi_map_y)then
                -- If there isn't a wall down from the minotaur...
                if(mi_rom_data_Y(mi_map_y) = '0')then
                  -- Then go down!
                  mi_map_y <= mi_map_y + 1;
                end if;
              -- If there is a wall to the right, and theseus is up
              --  from the minotaur...
              elsif(th_map_y < mi_map_y)then
                -- If there ins't a wall up from the minotaur...
                if(mi_rom_data_Y(mi_map_y-1) = '0')then
                  -- Then go up!
                  mi_map_y <= mi_map_y - 1;
                end if;
              end if;
            -- Else if theseus is left of the minotaur...
            elsif(th_map_x < mi_map_x)then
              -- If there isn't a wall to the left...
              if(mi_rom_data_X(mi_map_x-1) = '0')then
                -- Then go left!
                mi_map_x <= mi_map_x - 1;
              -- If there is a wall to the left, check if theseus is down
              --  from the minotaur...
              elsif(th_map_y > mi_map_y)then
                -- If there is no wall down from the minotaur...
                if(mi_rom_data_Y(mi_map_y) = '0')then
                  -- Then move down!
                  mi_map_y <= mi_map_y + 1;
                end if;
              -- If there is a wall to the left, check if theseus is up
              --  from the minotaur...
              elsif(th_map_y < mi_map_y)then
                -- If there is not wall up...
                if(mi_rom_data_Y(mi_map_y-1) = '0')then
                  -- Then go up!
                  mi_map_y <= mi_map_y - 1;
                end if;
              end if;
            -- If theseus is neither left or right of the minotaur, check if
            --  he is up from the minotuar...
            elsif(th_map_y > mi_map_y)then
              -- If there is no wall above the minotaur...
              if(mi_rom_data_Y(mi_map_y) = '0')then
                -- then move up!
                mi_map_y <= mi_map_y + 1;
              end if;
            -- If theseus is neither left or right or up of the minotaur, check
            --  if he is down from the minotaur...
            elsif(th_map_y < mi_map_y)then
              -- If there is no wall down from the minotaur...
              if(mi_rom_data_Y(mi_map_y-1) = '0')then
                -- Then go down!
                mi_map_y <= mi_map_y - 1;
              end if;
            end if;

            -- If this was the minotaur's first turn...
            if(current_state = minotaur_turn1)then
              -- Go to the next minotaur's turn!
              next_state <= minotaur_turn2;
            else
              -- Else, go to theseus' turn!
              next_state <= theseus_turn;
            end if;
          end if;
        -- All other states, go to a reset.
        when others =>
          next_state <= rst;
      end case;
    end if;
  end process;

end Behavioral;
