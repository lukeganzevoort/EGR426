----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/28/2017 04:45:52 PM
-- Design Name:
-- Module Name: adder - Behavioral
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

entity adder is
  generic(WIDTH : integer := 48);
  port(A,B : in unsigned(WIDTH-1 downto 0);
    X : out unsigned(WIDTH-1 downto 0));
end adder;

architecture Behavioral of adder is

  component CGEN is
    generic(WIDTH : integer);
    port(A, B : in unsigned(WIDTH-1 downto 0);
      CVEC : out std_logic_vector(WIDTH-1 downto 0));
  end component;

  signal CVEC : std_logic_vector(WIDTH-1 downto 0);

begin
  -- Normal Adder
  --X <= A + B;

  -- Ripple Adder
  -- process(A,B)
  -- variable C : std_logic;
  -- begin
  --   C := '0';
  --   for I in 0 to X'LEFT loop
  --     X(I) <= A(I) xor B(I) xor C;
  --     C := (A(I) and B(I)) or (C and (A(I) or B(I)));
  --   end loop;
  -- end process;

  -- Carry Lookahead Generator
  U1 : CGEN generic map (WIDTH => WIDTH) port map(A, B, CVEC);

  process(A,B,CVEC)
  begin
    for I in 0 to X'LEFT loop
      X(I) <= A(I) xor B(I) xor CVEC(I);
    end loop;
  end process;

end Behavioral;
