----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/16/2017 04:32:16 PM
-- Design Name:
-- Module Name: lfsr_tb - Behavioral
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
use IEEE.STD_LOGIC_TEXTIO.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library std;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lfsr_tb is
--  Port ( );
end lfsr_tb;

architecture Behavioral of lfsr_tb is

  procedure Monitor(Q: in STD_LOGIC_VECTOR(15 downto 0)) is
    variable lout: line;
  begin
    write(lout,string'(" CRC -->"));
    HWRITE(lout, Q);
    WRITELINE(output, lout);
  end Monitor;

  component lfsr is
    port(clk,reset,msg_in : in std_logic;
      Q : out std_logic_vector(15 downto 0));
  end component;

  signal clk, reset : std_logic := '0';
  signal msg_in : std_logic;
  signal Q : std_logic_vector(15 downto 0);
  signal MESSAGE : std_logic_vector(31 downto 0) := "10110100111110100010000110010111";
  signal CRC_VECTOR : std_logic_vector(15 downto 0) := X"6ec5";

begin
  l1 : lfsr Port map ( clk => clk, reset => reset, msg_in => msg_in, Q => Q);

  shift_msg : process
  begin
    wait for 5 ns; reset <= '1';
    wait for 5 ns;
    for I in 31 downto 0 loop
      wait for 5 ns;
      clk <= '1';
      msg_in <= message(I);
      wait for 5 ns;
      clk <= '0';
    end loop;

    for I in 15 downto 0 loop
      wait for 5 ns;
      clk <= '1';
      msg_in <= CRC_VECTOR(I);
      wait for 5 ns;
      clk <= '0';
    end loop;

    Monitor(Q);
    wait;
  end process;

end Behavioral;
