----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2017 05:09:29 PM
-- Design Name: 
-- Module Name: mux_dataflow - Behavioral
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

entity mux_dataflow is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : in STD_LOGIC;
           w : out STD_LOGIC);
end mux_dataflow;

architecture Dataflow of mux_dataflow is
signal a_sel: std_logic;
signal b_sel: std_logic;
signal s_bar: std_logic;

begin
    s_bar <= not s; -- invert the switch
    a_sel <= s_bar and a;
    b_sel <= s and b;
    w <= a_sel or b_sel;
end Dataflow;
