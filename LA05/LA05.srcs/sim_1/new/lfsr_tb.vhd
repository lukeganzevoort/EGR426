----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/23/2017 06:00:55 PM
-- Design Name:
-- Module Name: lfsr_tb - Behavioral
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
    use IEEE.STD_LOGIC_TEXTIO.ALL;
    use IEEE.STD_LOGIC_UNSIGNED.ALL;
library std;
    use std.textio.all;

entity lfsr_tb is
--  Port ( );
end lfsr_tb;

architecture Behavioral of lfsr_tb is

  component lfsr is
      Port ( clk : in STD_LOGIC;
             reset : in STD_LOGIC;
             Q : out STD_LOGIC_VECTOR (15 downto 0));
  end component;

  signal clk, reset : STD_LOGIC := '0';
  signal Q : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
  constant clk_period: time := 10 ns;

begin

  M1: lfsr port map (clk => clk, reset => reset, Q => Q);

  clk_process : process
  begin
      clk <= '0';
      wait for clk_period/2;
      clk <= '1';
      wait for clk_period/2;
  end process;

  stim_proc : process
  begin
    wait for 20 ns;
    reset <= '1';
    wait for 655400 ns;
    wait;
  end process;

  writing : process(clk)
    file outfile : text is out "lfsrout.txt";
    variable outline : line;
    begin
      if(reset = '1') then
        if(rising_edge(clk)) then
          write(outline, conv_integer(Q));
          writeline(outfile, outline);
        end if;
      end if;
    end process;

end Behavioral;
