----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/02/2017 07:35:05 PM
-- Design Name: 
-- Module Name: vgademo2_char_top - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;       -- For unsigned()

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vgademo2_char_top is
Port(clk_100MHz,reset : in STD_LOGIC; 
     HSYNC,VSYNC,locked : out STD_LOGIC;
     R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0 : out STD_LOGIC);
end vgademo2_char_top;

architecture Behavioral of vgademo2_char_top is
-- ---------------------------------------------------------------------
component clk_wiz_0
port(clk_in1,reset : in std_logic; clk_out1,locked : out std_logic);
end component;

component vga_controller_640_60 is
port(rst,pixel_clk : in std_logic; HS,VS,blank : out std_logic;
     hcount,vcount : out std_logic_vector(10 downto 0));
end component;

component MY_CHAR_DRIVER is
PORT( hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      ASCII_CHAR : out STD_LOGIC_VECTOR(6 downto 0));
end component;

component CHAR_GEN is
PORT(clk25, blank : in STD_LOGIC; hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0); 
     ASCII_CHAR : in STD_LOGIC_VECTOR(6 downto 0);
     R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0 : out STD_LOGIC);
end component;

signal clk_25MHz,blank : STD_LOGIC;
signal hcount,vcount : STD_LOGIC_VECTOR(10 downto 0);
signal ASCII_CHAR : STD_LOGIC_VECTOR(6 downto 0);
-- ----------------------------------------------------------------
begin
c1 : clk_wiz_0 PORT MAP (clk_in1 => clk_100MHz, reset => reset, clk_out1 => clk_25MHz,
                         locked => locked);

v1 : vga_controller_640_60 PORT MAP (pixel_clk => clk_25MHz, rst => reset, HS => HSYNC, 
                                     VS => VSYNC, blank => blank, hcount => hcount, 
                                     vcount => vcount);

d1 : MY_CHAR_DRIVER PORT MAP (hcount => hcount, vcount => vcount, ASCII_CHAR => ASCII_CHAR);

m1 : CHAR_GEN PORT MAP (clk25 => clk_25MHz, blank => blank, hcount => hcount, vcount => vcount,
                        ASCII_CHAR => ASCII_CHAR, R3 => R3, R2 => R2, R1 => R1, R0 => R0,
                        G3 => G3, G2 => G2, G1 => G1, G0 => G0, B3 => B3, B2 => B2, B1 => B1,
                        B0 => B0);

end Behavioral;
