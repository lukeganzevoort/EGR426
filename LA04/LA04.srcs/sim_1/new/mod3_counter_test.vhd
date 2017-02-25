----------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 02/16/2017 06:14:59 PM
-- Module Name: mod3_counter_test - Behavioral
-- Description:
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mod3_counter_test is
end mod3_counter_test;

architecture Behavioral of mod3_counter_test is

  -- component mod3_counter is
  --     generic (count_value : integer := 1);
  --     Port ( clk : in STD_LOGIC;
  --            reset : in STD_LOGIC;
  --            count_out : out STD_LOGIC_VECTOR (1 downto 0));
  -- end component;

  component mod11_counter is
      generic (count_value : integer := 1);
      Port ( clk : in STD_LOGIC;
             reset : in STD_LOGIC;
             count_out : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal clk : STD_LOGIC := '0';
  signal reset : std_logic := '1';
  signal count_out : std_logic_vector(3 downto 0);
  constant clk_period : time := 10 ns;

begin

  -- C1 : mod3_counter
  --   generic map (count_value => 2)
  --   port map (clk => clk, reset => reset, count_out => count_out);
  C2 : mod11_counter
    generic map (count_value => 11)
    port map (clk => clk, reset => reset, count_out => count_out);

  Clock : process
  begin
    clk <= '0';
    wait for (clk_period/2);
    clk <= '1';
    wait for (clk_period/2);
  end process;

  resetting : process
  begin
    reset <= '0';
    wait for 52 ns;
    reset <= '1';
    wait for 15 ns;
    reset <= '0';
    wait;
  end process;

end Behavioral;
