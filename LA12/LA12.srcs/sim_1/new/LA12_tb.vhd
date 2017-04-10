----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/06/2017 05:27:34 PM
-- Design Name:
-- Module Name: LA12_tb - Behavioral
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
use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LA12_tb is
--  Port ( );
end LA12_tb;

architecture Behavioral of LA12_tb is

    component LA12 is
        port(clk : in std_logic;
            A,B : in std_logic_vector(7 downto 0);
            X : out std_logic_vector(15 downto 0));
    end component;

    signal A,B : std_logic_vector(7 downto 0);
    signal X : std_logic_vector(15 downto 0);
    signal clk : std_logic := '0';

begin

    C1: LA12 port map(
        clk => clk,
        A => A,
        B => B,
        X => X);

    clk_process : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    stim_process : process
    begin
        wait for 40 ns;
        A <= X"23";
        B <= X"34";
        wait for 40 ns;
        A <= X"FF";
        B <= X"34";
        wait;
    end process;



end Behavioral;
