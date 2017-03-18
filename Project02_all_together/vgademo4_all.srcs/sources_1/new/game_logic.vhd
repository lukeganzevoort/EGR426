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
    reset : in std_logic := '0';
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

  component character_slide is
    generic(startX, startY : integer);
    Port(clk_25MHz : in std_logic;
      reset : in std_logic;
      next_positionX : in integer range 1 to 16;
      next_positionY : in integer range 1 to 12;
      Character_centerX : out integer range 0 to 640;
      Character_centerY : out integer range 0 to 480;
      sliding : out std_logic);
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
  signal minotaur_done : std_logic := '1';
  signal mi_rom_addr_X, mi_rom_addr_Y : STD_LOGIC_VECTOR(3 downto 0);
  signal th_rom_addr_X, th_rom_addr_Y : STD_LOGIC_VECTOR(3 downto 0);
  signal mi_rom_data_X, mi_rom_data_Y : STD_LOGIC_VECTOR(8 downto 0);
  signal th_rom_data_X, th_rom_data_Y : STD_LOGIC_VECTOR(8 downto 0);
  signal th_sliding, mi_sliding : std_logic := '0';
  signal state : STD_LOGIC_VECTOR(2 downto 0) := "001";

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

  mi_rom_addr_X <= conv_std_logic_vector((mi_map_y - 1),4);
  mi_rom_addr_Y <= conv_std_logic_vector((mi_map_x + 7),4);
  th_rom_addr_X <= conv_std_logic_vector((th_map_y - 1),4);
  th_rom_addr_Y <= conv_std_logic_vector((th_map_x + 7),4);
  -- theseus_X <= (th_map_x*40+140);
  -- theseus_Y <= (th_map_y*40+60);
  -- minotaur_X <= (mi_map_x*40+140);
  -- minotaur_Y <= (mi_map_y*40+60);


  process(state,clk_25MHz)
    variable btn_l_last, btn_r_last, btn_u_last, btn_d_last : std_logic := '0';
    variable theseus_turn : std_logic := '1';
    variable minotaur_used_turns : integer range 0 to 2 := 0;
  begin
    if(rising_edge(clk_25MHz))then
      case state is
        -- Reset state --
        when "000" =>
          th_map_x <= 4;
          th_map_y <= 5;
          mi_map_x <= 6;
          mi_map_y <= 7;

          if(reset = '1')then
            state <= "001";
          end if;
        -- Theseus' turn --
        when "001" =>
          if(mi_sliding = '0' and th_sliding = '0')then
            if (btn_u /= btn_u_last) then
              btn_u_last := btn_u;
              if (btn_u = '1' and th_map_y > 0
              and th_rom_data_Y(th_map_y-1) = '0') then
                th_map_y <= th_map_y - 1;
                -- theseus_turn := '0';
                state <= "010";
              end if;
            end if;

            if (btn_d /= btn_d_last) then
              btn_d_last := btn_d;
              if (btn_d = '1' and th_map_y < 8
              and th_rom_data_Y(th_map_y) = '0') then
                th_map_y <= th_map_y + 1;
                --theseus_turn := '0';
                state <= "010";
              end if;
            end if;

            if (btn_l /= btn_l_last) then
              btn_l_last := btn_l;
              if (btn_l = '1' and th_map_x > 0
              and th_rom_data_X(th_map_x-1) = '0') then
                th_map_x <= th_map_x - 1;
                --theseus_turn := '0';
                state <= "010";
              end if;
            end if;

            if (btn_r /= btn_r_last) then
              btn_r_last := btn_r;
              if (btn_r = '1' and th_map_x < 8
              and th_rom_data_X(th_map_x) = '0') then
                th_map_x <= th_map_x + 1;
                --theseus_turn := '0';
                state <= "010";
              end if;
            end if;
          end if;
        -- Minotaur's turn --
        when "010" =>
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
              elsif(th_map_y < mi_map_y)then
                if(mi_rom_data_Y(mi_map_y-1) = '0')then
                  mi_map_y <= mi_map_y - 1;
                end if;
              end if;

            elsif(th_map_y > mi_map_y)then
              if(mi_rom_data_Y(mi_map_y) = '0')then
                mi_map_y <= mi_map_y + 1;
              end if;

            elsif(th_map_y < mi_map_y)then
              if(mi_rom_data_Y(mi_map_y-1) = '0')then
                mi_map_y <= mi_map_y - 1;
              end if;
            end if;
            minotaur_used_turns := minotaur_used_turns + 1;
            if(minotaur_used_turns = 2)then
              minotaur_used_turns := 0;
              --theseus_turn := '1';
              state <= "001";
            end if;
           --state <= "001";
          end if;
        when others =>
          state <= "001";
      end case;
    end if;
  end process;

  -- Character_Px_Ctrl : process(btn_d,btn_u,btn_l,btn_r,clk_25MHz,reset)
  --   variable btn_l_last, btn_r_last, btn_u_last, btn_d_last : std_logic := '0';
  --   variable theseus_turn : std_logic := '1';
  --   variable minotaur_used_turns : integer range 0 to 2 := 0;
  -- begin
  --   ------------------
  --   -- Reset Module --
  --   ------------------
  --   if(reset = '1')then
  --     th_map_x <= 4;
  --     th_map_y <= 5;
  --     mi_map_x <= 6;
  --     mi_map_y <= 7;
  --   end if;
  --
  --   if(rising_edge(clk_25MHz))then
  --     -------------------
  --     -- Theseus' turn --
  --     -------------------
  --     if(theseus_turn = '1' and mi_sliding = '0' and th_sliding = '0')then
  --       if (btn_u /= btn_u_last) then
  --         btn_u_last := btn_u;
  --         if (btn_u = '1' and th_map_y > 0
  --         and th_rom_data_Y(th_map_y-1) = '0') then
  --           th_map_y <= th_map_y - 1;
  --           theseus_turn := '0';
  --         end if;
  --       end if;
  --
  --       if (btn_d /= btn_d_last) then
  --         btn_d_last := btn_d;
  --         if (btn_d = '1' and th_map_y < 8
  --         and th_rom_data_Y(th_map_y) = '0') then
  --           th_map_y <= th_map_y + 1;
  --           theseus_turn := '0';
  --         end if;
  --       end if;
  --
  --       if (btn_l /= btn_l_last) then
  --         btn_l_last := btn_l;
  --         if (btn_l = '1' and th_map_x > 0
  --         and th_rom_data_X(th_map_x-1) = '0') then
  --           th_map_x <= th_map_x - 1;
  --           theseus_turn := '0';
  --         end if;
  --       end if;
  --
  --       if (btn_r /= btn_r_last) then
  --         btn_r_last := btn_r;
  --         if (btn_r = '1' and th_map_x < 8
  --         and th_rom_data_X(th_map_x) = '0') then
  --           th_map_x <= th_map_x + 1;
  --           theseus_turn := '0';
  --         end if;
  --       end if;
  --
  --     ---------------------
  --     -- Minotaur's turn --
  --     ---------------------
  --     elsif(theseus_turn = '0' and mi_sliding = '0' and th_sliding = '0')then
  --       -- If theseus is right of the minotaur...
  --       if(th_map_x > mi_map_x)then
  --         -- If there isn't a wall to the right...
  --         if(mi_rom_data_X(mi_map_x) = '0')then
  --           -- Then go right!
  --           mi_map_x <= mi_map_x + 1;
  --         -- If there is a wall to the right, check if theseus is down from
  --         --  the minotaur...
  --         elsif(th_map_y > mi_map_y)then
  --           -- If there isn't a wall down from the minotaur...
  --           if(mi_rom_data_Y(mi_map_y) = '0')then
  --             -- Then go down!
  --             mi_map_y <= mi_map_y + 1;
  --           end if;
  --         -- If there is a wall to the right, and theseus is up
  --         --  from the minotaur...
  --         elsif(th_map_y < mi_map_y)then
  --           -- If there ins't a wall up from the minotaur...
  --           if(mi_rom_data_Y(mi_map_y-1) = '0')then
  --             -- Then go up!
  --             mi_map_y <= mi_map_y - 1;
  --           end if;
  --         end if;
  --       -- Else if theseus is left of the minotaur...
  --       elsif(th_map_x < mi_map_x)then
  --         -- If there isn't a wall to the left...
  --         if(mi_rom_data_X(mi_map_x-1) = '0')then
  --           -- Then go left!
  --           mi_map_x <= mi_map_x - 1;
  --         -- If there is a wall to the left, check if theseus is down
  --         --  from the minotaur...
  --         elsif(th_map_y > mi_map_y)then
  --           -- If there is no wall down from the minotaur...
  --           if(mi_rom_data_Y(mi_map_y) = '0')then
  --             -- Then move down!
  --             mi_map_y <= mi_map_y + 1;
  --           end if;
  --         elsif(th_map_y < mi_map_y)then
  --           if(mi_rom_data_Y(mi_map_y-1) = '0')then
  --             mi_map_y <= mi_map_y - 1;
  --           end if;
  --         end if;
  --
  --       elsif(th_map_y > mi_map_y)then
  --         if(mi_rom_data_Y(mi_map_y) = '0')then
  --           mi_map_y <= mi_map_y + 1;
  --         end if;
  --
  --       elsif(th_map_y < mi_map_y)then
  --         if(mi_rom_data_Y(mi_map_y-1) = '0')then
  --           mi_map_y <= mi_map_y - 1;
  --         end if;
  --       end if;
  --       minotaur_used_turns := minotaur_used_turns + 1;
  --       if(minotaur_used_turns = 2)then
  --         minotaur_used_turns := 0;
  --         theseus_turn := '1';
  --       end if;
  --     end if;
  --   end if;
  -- end process;
end Behavioral;
