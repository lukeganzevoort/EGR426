--------------------------------------------------------------------------------
-- Company: GVSU EGR 426
-- Engineer: Luke Ganzevoort
-- Create Date: 02/12/2017
--
-- Module: debounce.vhd
-- Description: This file takes a button and debounces it
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity debounce is
  port( clk,rst,x : in std_logic;
    pb_out : out std_logic);
end debounce;

architecture Behavioral of debounce is

  type state_type is (reset, wait0, wait1, wait2, pressed);
  signal current_state, next_state : state_type;

begin

  reset_process : process(clk,rst)
  begin
    if(rst = '1') then
      current_state <= reset;
    elsif rising_edge(clk) then
      current_state <= next_state;
    end if;
  end process;

  state_machine_process : process(current_state, x)
  begin
    case current_state is
      when reset =>
        if x = '1' then
          next_state <= wait0;
        else
          next_state <= reset;
        end if;

      when wait0 =>
        if x = '1' then
          next_state <= wait1;
        else
          next_state <= reset;
        end if;

      when wait1 =>
        if x = '1' then
          next_state <= wait2;
        else
          next_state <= reset;
        end if;

      when wait2 =>
        if x = '1' then
          next_state <= pressed;
        else
          next_state <= reset;
        end if;

      when pressed =>
        if x = '1' then
          next_state <= pressed;
        else
          next_state <= reset;
        end if;
    end case;

  end process;

  set_output_process : process(current_state)
  begin
    if(current_state = pressed) then
      pb_out <= '1';
    else
      pb_out <= '0';
    end if;
  end process;
end Behavioral;
