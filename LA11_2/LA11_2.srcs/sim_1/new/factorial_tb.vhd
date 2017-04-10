----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/04/2017 05:41:52 PM
-- Design Name:
-- Module Name: factorial_tb - Behavioral
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

entity factorial_tb is
--  Port ( );
end factorial_tb;

architecture Behavioral of factorial_tb is

    component factorial is
        port(clk : in std_logic;
            n : in std_logic_vector(2 downto 0);
            factorial : out std_logic_vector (12 downto 0));
    end component;

    signal clk : std_logic;
    signal n : std_logic_vector(2 downto 0) := "000";
    signal fact : std_logic_vector(12 downto 0);

begin

    C1 : factorial port map
        (clk => clk,
        n => n,
        factorial => fact);

    clk_process : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    stim_process : process
    begin
        wait for 20 ns;
        n <= "111";
        wait for 10 ns;
        n <= "010";
        wait for 10 ns;
        n <= "100";
        wait;
    end process;


end Behavioral;
