----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/16/2017 06:53:38 PM
-- Design Name:
-- Module Name: cputb1 - Behavioral
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

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
--USE ieee.numeric_std.ALL;

USE ieee.std_logic_arith.all;

entity cputb2 is
end cputb2;

architecture behavior of cputb2 is
-- Component Declaration for the Unit Under Test (UUT)
component cpu
PORT(clk, clk100MHz : in STD_LOGIC;
   reset : in STD_LOGIC;
   Inport0, Inport1 : in STD_LOGIC_VECTOR(7 downto 0);
   ledport0, ledport1  : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   sevport0, sevport1, sevport2, sevport3 : out std_logic_vector(6 downto 0) := (others => '1'));
-- PORT(clk, clk100MHz : in STD_LOGIC;
--    reset : in STD_LOGIC;
--    Inport0, Inport1 : in STD_LOGIC_VECTOR(7 downto 0);
--    ledport0, ledport1  : out STD_LOGIC_VECTOR(7 downto 0);
--    sevport0, sevport1, sevport2, sevport3 : out std_logic_vector(6 downto 0) := "1111111";
--    PCt : out UNSIGNED(8 downto 0);
--    IRt : out STD_LOGIC_VECTOR(7 downto 0);
--    MDRt : out STD_LOGIC_VECTOR(7 downto 0);
--    At,Bt : out SIGNED(7 downto 0);
--    Nt,Zt,Vt : out STD_LOGIC;
--    DATAt : out STD_LOGIC_VECTOR(7 downto 0));
end component;

--Inputs
signal clk, clk100MHz : std_logic := '0';
signal reset : std_logic := '1';
signal Inport0 : std_logic_vector(7 downto 0) := (others => '0');
signal Inport1 : std_logic_vector(7 downto 0) := (others => '0');

--Outputs
signal Outport0 : std_logic_vector(7 downto 0);
signal Outport1 : std_logic_vector(7 downto 0);
signal sevport0, sevport1, sevport2, sevport3 : std_logic_vector(6 downto 0);


-- ---------- Declare the internal CPU registers -------------------
-- signal PC : UNSIGNED(8 downto 0);
-- signal IR : STD_LOGIC_VECTOR(7 downto 0);
-- signal MDR : STD_LOGIC_VECTOR(7 downto 0);
--
-- signal A,B : SIGNED(7 downto 0);
-- signal N,Z,V : STD_LOGIC;
-- -- ---------- Declare the common data bus ------------------
-- signal DATA : STD_LOGIC_VECTOR(7 downto 0);



-- Clock period definitions
constant clk_period : time := 10ns;

begin
-- Instantiate the Unit Under Test (UUT)
C1 : cpu port map (
    clk => clk,
    clk100MHz => clk100MHz,
    reset => reset,
    Inport0 => Inport0,
    Inport1 => Inport1,
    ledport0 => Outport0,
    ledport1 => Outport1,
    sevport0 => sevport0,
    sevport1 => sevport1,
    sevport2 => sevport2,
    sevport3 => sevport3);
-- C1 : cpu port map (
--     clk => clk,
--     clk100MHz => clk100MHz,
--     reset => reset,
--     Inport0 => Inport0,
--     Inport1 => Inport1,
--     ledport0 => Outport0,
--     ledport1 => Outport1,
--     sevport0 => sevport0,
--     sevport1 => sevport1,
--     sevport2 => sevport2,
--     sevport3 => sevport3,
--     PCt => PC,
--     IRt => IR,
--     MDRt => MDR,
--     At => A,
--     Bt => B,
--     Nt => N,
--     Zt => Z,
--     Vt => V,
--     DATAt => DATA);

-- Clock process
clk_process : process begin
              clk <= '0';
              clk100MHz <= '0';
              wait for clk_period/2;
		      clk <= '1';
              clk100MHz <= '1';
              wait for clk_period/2;
              end process;

-- Stimulus process
stim_proc : process begin
            wait for 100ns;     -- hold reset state for 100ns.
            reset <= '0';
            wait;
            end process;

end;
