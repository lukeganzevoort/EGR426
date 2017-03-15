----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/14/2017 05:19:21 PM
-- Design Name:
-- Module Name: lfsr - Behavioral
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

entity lfsr is
  port(clk,reset : in std_logic;
    Q : out STD_LOGIC_VECTOR(15 downto 0));
end lfsr;

architecture Behavioral of lfsr is
  signal Q_temp : std_logic_vector(15 downto 0);
begin
  process(clk,reset)
  begin
    if(reset = '0') then
      Q_temp <= X"FFFF";
    elsif(rising_edge(clk)) then
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
    if(Q_temp = "1100111000111010") then --52794
      Q_temp <= X"FFFF";
    end if;
  end process;

  Q <= Q_temp;

end Behavioral;
