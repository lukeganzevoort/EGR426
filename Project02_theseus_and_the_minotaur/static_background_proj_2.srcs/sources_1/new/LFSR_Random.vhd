----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/24/2017 10:02:34 PM
-- Design Name:
-- Module Name: LFSR_Random - Behavioral
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

entity LFSR_Random is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           rand3bit : out STD_LOGIC_VECTOR (2 downto 0));
end LFSR_Random;

architecture Behavioral of LFSR_Random is

  signal Q_temp : STD_LOGIC_VECTOR(15 downto 0) := "1111111111111111";

begin

  process(clk, reset)

  begin
    if(reset = '1') then
      Q_temp <= "1111111111111111";
    else
      Q_temp(15) <= Q_temp(14);
      Q_temp(14) <= Q_temp(13);
      Q_temp(13) <= Q_temp(12);
      Q_temp(12) <= Q_temp(11);
      Q_temp(11) <= Q_temp(10);
      Q_temp(10) <= Q_temp(9);
      Q_temp(9) <= Q_temp(8);
      Q_temp(8) <= Q_temp(7);
      Q_temp(7) <= Q_temp(6);
      Q_temp(6) <= Q_temp(5);
      Q_temp(5) <= Q_temp(4) xor Q_temp(15);
      Q_temp(4) <= Q_temp(3);
      Q_temp(3) <= Q_temp(2) xor Q_temp(15);
      Q_temp(2) <= Q_temp(1) xor Q_temp(15);
      Q_temp(1) <= Q_temp(0);
      Q_temp(0) <= Q_temp(15);
    end if;
  end process;

  rand3bit <= Q_temp(2 downto 0);



end Behavioral;
