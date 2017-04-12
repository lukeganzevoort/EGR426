----------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- 
-- Create Date: 04/11/2017 07:29:27 PM
-- Module Name: multiplier_tb - Behavioral
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier_tb is
end multiplier_tb;

architecture Behavioral of multiplier_tb is

    -- Add the multiplier module
    component multiplier is
        Port(clk : in std_logic;
        aVal, bVal, cReady : in std_logic;
        a,b : in std_logic_vector(31 downto 0);
        c : out std_logic_vector(31 downto 0));
    end component;
        
    -- Signals for numbers to be multiplied, and the resulting pruduct
    signal ina,inb,outc : std_logic_vector(31 downto 0) := (others => '0');
    -- Clock signal for the floating point multiplier
    signal clk : std_logic := '0';
    -- Signals to set when data in the register is valid
    signal bVal,aVal,cReady : std_logic := '0';
    
    -- Set the clock period
    constant clk_period : time := 10ns;

begin

    -- Map the multiplier module
    A1 : multiplier PORT MAP(
        clk => clk,
        aVal => aVal,
        bVal => bVal,
        cReady => cReady,
        a => ina,
        b => inb,
        c => outc);
        
   -- Create the stimulus to for the multiplier module
   stim_proc : process begin
        wait for 20 ns;     -- hold reset state for 20ns.
        ina <= "10111111110000000000000000000000";  -- -1.5
        inb <= "00111111000000000000000000000000";  -- 0.5
        aVal <= '1';    -- set the flag for the data in port a being valid
        bVal <= '1';    -- set the flag for the data in port b being valid
        cReady <= '1';  -- set the flag for the module being ready to receive the product
        wait for 10 ns; -- Wait for 10 ns
        ina <= "11000000001000000000000000000000";  -- -2.5
        inb <= "10111111000000000000000000000000";  -- -0.5
        wait;
        end process;
    
    -- Create the clock signal
    clk_process : process begin
          clk <= '0';
          wait for clk_period/2;
          clk <= '1';
          wait for clk_period/2;
          end process;


end Behavioral;
