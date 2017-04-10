----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/06/2017 05:09:44 PM
-- Design Name:
-- Module Name: LA12 - Behavioral
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

entity LA12 is
    port(clk : in std_logic;
        A,B : in std_logic_vector(7 downto 0);
        X : out std_logic_vector(15 downto 0));
end LA12;

architecture Behavioral of LA12 is

    component La12multiplier
        port(
            CLK : in std_logic;
            A : in std_logic_vector(7 downto 0);
            B : in std_logic_vector(7 downto 0);
            P : out std_logic_vector(15 downto 0)
        );
    end component;

begin

    M1 : La12multiplier port map (clk => clk, A => A, B => B, P => X);




end Behavioral;
