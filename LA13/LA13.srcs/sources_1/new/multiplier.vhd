----------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- 
-- Create Date: 04/11/2017 07:21:28 PM
-- Module Name: multiplier - Behavioral
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier is
    Port(clk : in std_logic;
    aVal, bVal, cReady : in std_logic;
    a,b : in std_logic_vector(31 downto 0);
    c : out std_logic_vector(31 downto 0));
end multiplier;

architecture Behavioral of multiplier is

    -- declare the mulitplier IP
    component floating_point_1 IS
      PORT (
        aclk : IN STD_LOGIC;
        s_axis_a_tvalid : IN STD_LOGIC;
        s_axis_a_tready : OUT STD_LOGIC;
        s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axis_b_tvalid : IN STD_LOGIC;
        s_axis_b_tready : OUT STD_LOGIC;
        s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        m_axis_result_tvalid : OUT STD_LOGIC;
        m_axis_result_tready : IN STD_LOGIC;
        m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
      );
    END component;
    
    -- Dummy signal for IP flag
    signal s_axis_a_tready :  STD_LOGIC;
    -- Dummy signal for IP flag
    signal s_axis_b_tready :  STD_LOGIC;
    -- Signal to check if the result is valid
    signal m_axis_result_tvalid :  STD_LOGIC := '1';
    -- Signal to obtain the product
    signal m_axis_result_tdata :  STD_LOGIC_VECTOR(31 DOWNTO 0);

begin

    M1: floating_point_1 port map(
        aclk => clk,
        s_axis_a_tvalid => aVal,
        s_axis_a_tready => s_axis_a_tready,
        s_axis_a_tdata => a, 
        s_axis_b_tvalid => bVal,
        s_axis_b_tready => s_axis_b_tready,
        s_axis_b_tdata => b,
        m_axis_result_tvalid => m_axis_result_tvalid,
        m_axis_result_tready => cReady,
        m_axis_result_tdata => m_axis_result_tdata);
        
    -- Process to take the result and set it to the output
    process(m_axis_result_tvalid,m_axis_result_tdata)
    begin
        -- If the product is valid, set the output to be the product
        if(m_axis_result_tvalid = '1')then
            c <= m_axis_result_tdata;
        end if;
    end process;


end Behavioral;
