--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/12/2017
--
-- Module: merge_display.vhd
-- Description: This file takes all the objects and arranges them in the
--  proper order to display on the screen.
--------------------------------------------------------------------------------

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
  Port (Red_back,Red_o2,Red_o3,Red_tle,Green_back,Green_o2,
    Green_o3,Green_tle,Blue_back,Blue_o2,Blue_o3,
    Blue_tle : in STD_LOGIC_VECTOR(3 downto 0);
    Red,Grn,Blu : out STD_LOGIC_VECTOR(3 downto 0));
end merge_display;

architecture Behavioral of merge_display is
begin

  process
  begin
    if((Red_o2 or Blue_o2 or Green_o2) /= "0000") then
      Red <= Red_o2;
      Blu <= Blue_o2;
      Grn <= Green_o2;
      --R3 <= Red_o2(3); R2 <= Red_o2(2); R1 <= Red_o2(1); R0 <= Red_o2(0);
      --B3 <= Blue_o2(3); B2 <= Blue_o2(2); B1 <= Blue_o2(1); B0 <= Blue_o2(0);
      --G3 <= Green_o2(3); G2 <= Green_o2(2); G1 <= Green_o2(1); G0 <= Green_o2(0);
    elsif((Red_o3 OR Blue_o3 OR Green_o3) /= "0000") then
      Red <= Red_o3;
      Blu <= Blue_o3;
      Grn <= Green_o3;
      --R3 <= Red_o3(3); R2 <= Red_o3(2); R1 <= Red_o3(1); R0 <= Red_o3(0);
      --B3 <= Blue_o3(3); B2 <= Blue_o3(2); B1 <= Blue_o3(1); B0 <= Blue_o3(0);
      --G3 <= Green_o3(3); G2 <= Green_o3(2); G1 <= Green_o3(1); G0 <= Green_o3(0);
    elsif((Red_tle OR Blue_tle OR Green_tle) /= "0000") then
      Red <= Red_tle;
      Blu <= Blue_tle;
      Grn <= Green_tle;
      --R3 <= Red_tle(3); R2 <= Red_tle(2); R1 <= Red_tle(1); R0 <= Red_tle(0);
      --B3 <= Blue_tle(3); B2 <= Blue_tle(2); B1 <= Blue_tle(1); B0 <= Blue_tle(0);
      --G3 <= Green_tle(3); G2 <= Green_tle(2); G1 <= Green_tle(1); G0 <= Green_tle(0);
    else
      Red <= Red_back;
      Blu <= Blue_back;
      Grn <= Green_back;
      --R3 <= Red_back(3); R2 <= Red_back(2); R1 <= Red_back(1); R0 <= Red_back(0);
      --B3 <= Blue_back(3); B2 <= Blue_back(2); B1 <= Blue_back(1); B0 <= Blue_back(0);
      --G3 <= Green_back(3); G2 <= Green_back(2); G1 <= Green_back(1); G0 <= Green_back(0);
    end if;
  end process;

end Behavioral;
