--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
--
-- Create Date: 01/26/2017 08:35:47 PM
-- Module Name: state_machine - Behavioral
-- Description: This file acts as a state machine for the reaction timer.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Define the inputs and outputs
entity state_machine is
    Port ( clk_1ms : in STD_LOGIC;
        btn_press : in STD_LOGIC_VECTOR (1 downto 0);
        Num : out STD_LOGIC_VECTOR (13 downto 0));
end state_machine;

architecture Behavioral of state_machine is
begin

-- Every 1ms check the state machine process
Process(clk_1ms)
  -- variable to count up from 0 to 9999 for the display
  variable cnt : std_logic_vector (13 downto 0) := "00000000000000";
  -- variable to define the current state
  variable state : std_logic_vector (2 downto 0) := "000";
  -- variable to wait for 3 seconds before beginning
  variable temp_cnt : std_logic_vector (11 downto 0) := "000000000000";

  begin
  if rising_edge(clk_1ms) then
    case state is

      -- State: Wait to start counting
      when "000" =>
        temp_cnt := temp_cnt + 1; -- count up to 3000
        cnt := "00000000000000"; -- reset the counter
        if (temp_cnt = 3000) and (btn_press(1) = '0') then
          temp_cnt := "000000000000";
          state := "001";
        end if;

      -- State: Begin counting to 9999
      when "001" => -- Counting
        cnt := cnt + 1;
        -- stop at 9999 or when the center button is pressed
        if (cnt >= 9999) or (btn_press(1) = '1') then
          state := "010";
        end if;

      -- State: wait for the button to be released
      when "010" => -- Wait for btn release
        if btn_press(1) = '0' then
          state := "011";
        end if;

      -- Wait until the up button is pressed
      when "011" => -- Freeze with score screen
        if btn_press(0) = '1' then
          state := "100";
        end if;

      -- Wait until the up button is released
      when "100" => -- Wait for button release to reset
        if btn_press(0) = '0' then
          state := "000";
        end if;

      -- This should never be, but incase, go to the beginning state
      when others => state := "000";

    end case;
  end if;

  -- Set the output
  Num <= cnt;
end process;

end Behavioral;
