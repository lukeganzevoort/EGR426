----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/29/2017 09:53:12 AM
-- Design Name:
-- Module Name: CGEN - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;

entity CGEN is
  generic(WIDTH : integer := 16);
  port(A, B : in unsigned(WIDTH-1 downto 0);
    CVEC : out std_logic_vector(WIDTH-1 downto 0));
end CGEN;

architecture Behavioral of CGEN is

begin

  process(A,B)
    variable C : std_logic_vector(WIDTH-1 downto 0);
  begin
    C(0) := '0';
    for I in 1 to WIDTH-1 loop
      C(I) := ((A(I-1) or B(I-1)) and C(I-1)) or (A(I-1) and B(I-1));
    end loop;
    CVEC <= C;
  end process;

end Behavioral;
