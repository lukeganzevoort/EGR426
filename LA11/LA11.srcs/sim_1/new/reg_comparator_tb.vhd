----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/04/2017 04:37:00 PM
-- Design Name:
-- Module Name: reg_comparator_tb - Behavioral
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
use IEEE.numeric_std.all;

entity reg_comparator_tb is
end reg_comparator_tb;

architecture Behavioral of reg_comparator_tb is

    component reg_comparator is
        port(clk : in std_logic;
            A,B : in signed(3 downto 0);
            Z : out signed(3 downto 0));
    end component;

    signal clk : std_logic := '0';
    signal A,B : signed(3 downto 0) := (others => '0');
    signal Z : signed(3 downto 0);

begin

    C1 : reg_comparator
        port map( clk => clk,
            A => A,
            B => B,
            Z => Z);

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
        A <= "0110";
        B <= "1000";
        wait for 10 ns;
        A <= "1110";
        B <= "0100";
        wait for 10 ns;
        A <= "1000";
        B <= "1001";
        wait;
    end process;

end Behavioral;
