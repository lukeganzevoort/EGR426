----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/20/2016 04:30:17 PM
-- Design Name:
-- Module Name: merge_display - Behavioral
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

entity merge_display is
Port (Red_back,Red_o1,Red_o2,Red_o3,Red_tle : in STD_LOGIC_VECTOR(3 downto 0);
      Green_back,Green_o1,Green_o2,Green_o3,Green_tle : in STD_LOGIC_VECTOR(3 downto 0);
      Blue_back,Blue_o1,Blue_o2,Blue_o3,Blue_tle : in STD_LOGIC_VECTOR(3 downto 0);
      R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0 : out STD_LOGIC);
end merge_display;

architecture Behavioral of merge_display is
begin

  process
  begin
    if((Red_o1 OR Blue_o1 OR Green_o1) /= "0000") then
      R3 <= Red_o1(3); R2 <= Red_o1(2); R1 <= Red_o1(1); R0 <= Red_o1(0);
      B3 <= Blue_o1(3); B2 <= Blue_o1(2); B1 <= Blue_o1(1); B0 <= Blue_o1(0);
      G3 <= Green_o1(3); G2 <= Green_o1(2); G1 <= Green_o1(1); G0 <= Green_o1(0);
    elsif((Red_o2 OR Blue_o2 OR Green_o2) /= "0000") then
      R3 <= Red_o2(3); R2 <= Red_o2(2); R1 <= Red_o2(1); R0 <= Red_o2(0);
      B3 <= Blue_o2(3); B2 <= Blue_o2(2); B1 <= Blue_o2(1); B0 <= Blue_o2(0);
      G3 <= Green_o2(3); G2 <= Green_o2(2); G1 <= Green_o2(1); G0 <= Green_o2(0);
    elsif((Red_o3 OR Blue_o3 OR Green_o3) /= "0000") then
      R3 <= Red_o3(3); R2 <= Red_o3(2); R1 <= Red_o3(1); R0 <= Red_o3(0);
      B3 <= Blue_o3(3); B2 <= Blue_o3(2); B1 <= Blue_o3(1); B0 <= Blue_o3(0);
      G3 <= Green_o3(3); G2 <= Green_o3(2); G1 <= Green_o3(1); G0 <= Green_o3(0);
    elsif((Red_tle OR Blue_tle OR Green_tle) /= "0000") then
      R3 <= Red_tle(3); R2 <= Red_tle(2); R1 <= Red_tle(1); R0 <= Red_tle(0);
      B3 <= Blue_tle(3); B2 <= Blue_tle(2); B1 <= Blue_tle(1); B0 <= Blue_tle(0);
      G3 <= Green_tle(3); G2 <= Green_tle(2); G1 <= Green_tle(1); G0 <= Green_tle(0);
    else
      R3 <= Red_back(3); R2 <= Red_back(2); R1 <= Red_back(1); R0 <= Red_back(0);
      B3 <= Blue_back(3); B2 <= Blue_back(2); B1 <= Blue_back(1); B0 <= Blue_back(0);
      G3 <= Green_back(3); G2 <= Green_back(2); G1 <= Green_back(1); G0 <= Green_back(0);
    end if;
  end process;

end Behavioral;
