--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/04/2017 05:04:31 PM
-- Design Name:
-- Module Name: factorial - Behavioral
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
--------------------------------------------------------------------------------


library IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity factorial is
    port(clk : in std_logic;
        n : in std_logic_vector(2 downto 0);
        factorial : out std_logic_vector (12 downto 0));
end factorial;

architecture Behavioral of factorial is

    --signal n_temp : std_logic_vector(2 downto 0) := "101";

    function fac(num : integer range 0 to 7) return integer is
        variable total : integer range 0 to 5040 := 0;
    begin

        if(num > 1)then
            total := fac((num-1)) * num;
        else
            total := 1;
        end if;

        return total;
    end function;


begin

    factorial <= std_logic_vector(to_unsigned(fac(to_integer(unsigned(n))),13));

end Behavioral;
