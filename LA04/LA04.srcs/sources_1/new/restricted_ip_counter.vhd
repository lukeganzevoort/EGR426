----------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/16/2017 07:18:05 PM
-- Module Name: restricted_ip_counter - Behavioral
-- Description:
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity restricted_ip_counter is
Port ( clk : in STD_LOGIC;
           count_out : out STD_LOGIC_VECTOR (3 downto 0));
end entity;

architecture Behavioral of restricted_ip_counter is

    COMPONENT four_bit_count
      PORT (
        CLK : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
      );
    END COMPONENT;

begin
    cnt_to_9 : four_bit_count
      PORT MAP (
        clk => CLK,
        Q => count_out);
end Behavioral;
