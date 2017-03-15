----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/11/2017 08:20:07 PM
-- Design Name:
-- Module Name: character_slide - Behavioral
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

entity character_slide is
  generic(startX, startY : integer);
  Port(clk_25MHz : in std_logic;
    next_positionX : in integer range 1 to 16;
    next_positionY : in integer range 1 to 12;
    Character_centerX : out STD_LOGIC_VECTOR(10 downto 0);
    Character_centerY : out STD_LOGIC_VECTOR(10 downto 0);
    ready : out std_logic);
end character_slide;

architecture Behavioral of character_slide is

  signal now_px_X, next_px_X : integer range 0 to 640 := (startX*40+140);
  signal now_px_Y, next_px_Y : integer range 0 to 480 := (startY*40+60);
  signal clk_25k : std_logic := '0';
  signal complete : std_logic := '0';
  signal ROM_ADDRESS : STD_LOGIC_VECTOR(3 downto 0);
  signal ROM_DATA : STD_LOGIC_VECTOR(8 downto 0);

  component map_walls IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
  end component;

begin

  W1 : map_walls port map(
    clka => clk_25MHz,
    addra => ROM_ADDRESS,
    douta => ROM_DATA);

  next_px_X <= (next_positionX*40+140);
  next_px_Y <= (next_positionY*40+60);
  Character_centerX <= conv_std_logic_vector(now_px_X,11);
  Character_centerY <= conv_std_logic_vector(now_px_Y,11);
  ready <= complete;



  -- Check for walls
  process(next_px_X,next_px_Y,now_px_X,now_px_Y)
  begin
    if()
    ROM_ADDRESS <= (now_px_Y-140)/40;


  -- Clock divider to reach 25kHz
  process(clk_25MHz)
    variable cnt : integer range 0 to 312500 := 0;
  begin
    if (rising_edge(clk_25MHz)) then
      cnt := cnt + 1;
      if (cnt = 625000/2) then
        clk_25k <= not clk_25k;
        cnt := 0;
      end if;
    end if;
  end process;

  -- Slide in the X direction
  process(clk_25k)
  begin
    if (rising_edge(clk_25k)) then
      if(now_px_X < next_px_X) then
        now_px_X <= now_px_X + 1;
      elsif(now_px_X > next_px_X) then
        now_px_X <= now_px_X - 1;
      end if;
    end if;
  end process;

  -- Slide in the Y direction
  process(clk_25k)
  begin
    if (rising_edge(clk_25k)) then
      if(now_px_Y < next_px_Y) then
        now_px_Y <= now_px_Y + 1;
      elsif(now_px_Y > next_px_Y) then
        now_px_Y <= now_px_Y - 1;
      end if;
    end if;
  end process;

  -- Signal if motion is complete
  process(clk_25MHz, next_px_X, now_px_X, next_px_Y, now_px_Y)
  begin
    if ((next_px_X = now_px_X) and (next_px_Y = now_px_Y)) then
      complete <= '1';
    else
      complete <= '0';
    end if;
  end process;

end Behavioral;
