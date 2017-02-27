--------------------------------------------------------------------------------
-- Company: GVSU - EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 01/18/2017
-- Module Name: reaction_timer - Structural
-- Description: This module is the top level file for the reaction timer Module.
--   It is structural based and maps the hardware's and components' inputs
--   and outputs to eachother.
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Define the inputs and outputs for the project
-- These are the hardware inputs and outputs
entity reaction_timer is
    Port ( clk : in STD_LOGIC;
           btn_in : in STD_LOGIC_VECTOR (1 downto 0);
           dig_select : out STD_LOGIC_VECTOR (3 downto 0);
           seg_select : out STD_LOGIC_VECTOR (6 downto 0));
end reaction_timer;

architecture Structural of reaction_timer is

    -- Define all the components
    -- Component to divide the 100 MHz clock into a 4ms and 1ms clock
    component clk_divider is
        Port ( clk_in_100Mhz : in STD_LOGIC;
               clk_out4ms, clk_out1ms : out STD_LOGIC);
    end component;

    -- Component to drive the LED display for any given 4 digit number
    component num2disp is
        Port ( num_bin : in STD_LOGIC_VECTOR (13 downto 0);
               clk4ms : in STD_LOGIC;
               seg : out STD_LOGIC_VECTOR (6 downto 0);
               dig : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    -- Component to handle the different states
    component state_machine is
        Port ( clk_1ms : in STD_LOGIC;
               btn_press : in STD_LOGIC_VECTOR (1 downto 0);
               Num : out STD_LOGIC_VECTOR (13 downto 0));
    end component;

    -- Component to debounce the buttons
    component btn_debounce is
        Port ( clk100MHz : in STD_LOGIC;
               btn_in : in STD_LOGIC;
               btn_press : out STD_LOGIC);
    end component;

    -- Define additional signals
    signal clk4ms, clk1ms : std_logic; --clock signal to take and pass the clock
    signal current_num : std_logic_vector (13 downto 0);--Current num to display
    signal btn : std_logic_vector (1 downto 0); --state of debounced buttons

begin
  U1: clk_divider port map (
    clk_in_100Mhz => clk,
    clk_out4ms => clk4ms,
    clk_out1ms => clk1ms);
  U2: state_machine port map (
    clk_1ms => clk1ms,
    btn_press => btn,
    Num => current_num);
  U3: num2disp port map (
    num_bin => current_num,
    clk4ms => clk4ms,
    seg => seg_select,
    dig => dig_select);
  U4: btn_debounce port map (
    clk100MHz => clk,
    btn_in => btn_in(1),
    btn_press => btn(1));
  U5: btn_debounce port map (
    clk100MHz => clk,
    btn_in => btn_in(0),
    btn_press => btn(0));
end Structural;
