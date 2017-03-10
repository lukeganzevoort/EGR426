----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/08/2017 09:29:02 PM
-- Design Name:
-- Module Name: drawCircle - Behavioral
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
    use IEEE.STD_LOGIC_UNSIGNED.ALL;
    use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity drawCircle is
  generic ( x_px, y_px, radius_px : integer);
  port( hcount, vcount : in std_logic_vector(10 downto 0);
    out_px : out std_logic );
end drawCircle;

architecture Behavioral of drawCircle is

  function  sqrt  ( d : UNSIGNED ) return UNSIGNED is
    variable a : unsigned(31 downto 0):= d;  --original input.
    variable q : unsigned(15 downto 0):=(others => '0');  --result.
    variable left,right,r : unsigned(17 downto 0):=(others => '0');  --input to adder/sub.r-remainder.
    variable i : integer:=0;
  begin
    for i in 0 to 15 loop
      right(0):='1';
      right(1):=r(17);
      right(17 downto 2):=q;
      left(1 downto 0):=a(31 downto 30);
      left(17 downto 2):=r(15 downto 0);
      a(31 downto 2):=a(29 downto 0);  --shifting by 2 bit.
      if ( r(17) = '1') then
        r := left + right;
      else
        r := left - right;
      end if;
      q(15 downto 1) := q(14 downto 0);
      q(0) := not r(17);
    end loop;
    return q;
  end sqrt;

begin

  draw_circle:process       -- Procedural block for displaying the GREEN object
    variable row, col : integer := 0;
    variable EcolH, EcolL, ErowH, ErowL : integer := 0;
    constant radiusSq : integer := (radius_px * radius_px);

  begin
    row := conv_integer(vcount);
    col := conv_integer(hcount);
    EcolH := x_px + TO_INTEGER(sqrt(TO_UNSIGNED((radiusSq-(row-y_px)*(row-y_px)),32)));
    EcolL := x_px - TO_INTEGER(sqrt(TO_UNSIGNED((radiusSq-(row-y_px)*(row-y_px)),32)));
    ErowH := y_px + TO_INTEGER(sqrt(TO_UNSIGNED((radiusSq-(col-x_px)*(col-x_px)),32)));
    ErowL := y_px - TO_INTEGER(sqrt(TO_UNSIGNED((radiusSq-(col-x_px)*(col-x_px)),32)));

    if(col <= EcolH and col >= EcolL and row <= ErowH and row >= ErowL
      and EcolH > EcolL and ErowH > ErowL and EcolH >= 0 and EcolH <= 640
      and EcolL >= 0 and EcolL <= 640 and ErowH >= 0 and ErowH <= 480
      and ErowL >= 0 and ErowL <= 640) then
      out_px <= '1';
    else
      out_px <= '0';
    end if;
  end process;

end Behavioral;
