----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/24/2017 11:06:23 PM
-- Design Name:
-- Module Name: LFSR_Random_tb - Behavioral
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

entity LFSR_Random_tb is
--  Port ( );
end LFSR_Random_tb;

architecture Behavioral of LFSR_Random_tb is

  component LFSR_Random is
      Port ( clk : in STD_LOGIC;
             reset : in STD_LOGIC;
             rand3bit : out STD_LOGIC_VECTOR (2 downto 0));
  end component;

  signal clk, reset : STD_LOGIC := '0';
  signal randNum : STD_LOGIC_VECTOR(2 downto 0);
  constant clk_period: time := 10 ns;

begin
  Rand1: LFSR_Random port map (
    clk => clk,
    reset => reset,
    rand3bit => randNum );

  clk_process : process
  begin
      clk <= not clk;
      wait for clk_period/2;
  end process;

  stim_proc : process
  begin
    reset <= '1';
    wait for 20 ns;
    reset <= '0';
    wait for 655400 ns;
    wait;
  end process;


end Behavioral;
