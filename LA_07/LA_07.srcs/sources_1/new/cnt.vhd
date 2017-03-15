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
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt is
  port(clk,reset : in std_logic;
    Q : out STD_LOGIC_VECTOR(15 downto 0));
end cnt;

architecture Behavioral of cnt is
  signal Q_temp : std_logic_vector(15 downto 0);
begin
  process(clk,reset)
    variable temp : integer := 0;
  begin
    if(reset = '0') then
      temp := 0;
    elsif(rising_edge(clk)) then
      temp := temp + 1;
    end if;
    if(temp = 4000) then --4000
      temp := 0;
    end if;
    Q_temp <= std_logic_vector(to_unsigned(temp, Q_temp'length));
  end process;

  Q <= Q_temp;

end Behavioral;
