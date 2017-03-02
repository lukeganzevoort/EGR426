-- This code is to be used for evaluation purposes only
--  C:\USERS\LUKE\DOCUMENTS\EGR426\LA06\DEBOUNCE.vhd
--  VHDL code created by Visual Software Solution's StateCAD 4.11
--  Thu Mar 02 17:19:27 2017

-- This VHDL code (for use with IEEE compliant tools) was generated using: 
--  binary encoded state assignment with structured code format.
--  Minimization is enabled,  implied else is enabled, 
--  and outputs are manually optimized.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DEBOUNCE IS
	PORT (CLK,PB,RESET: IN std_logic;
		Debounced : OUT std_logic);
END;

ARCHITECTURE BEHAVIOR OF DEBOUNCE IS
	SIGNAL sreg : std_logic_vector (2 DOWNTO 0);
	SIGNAL next_sreg : std_logic_vector (2 DOWNTO 0);
	CONSTANT STATE0 : std_logic_vector (2 DOWNTO 0) :="000";
	CONSTANT STATE1 : std_logic_vector (2 DOWNTO 0) :="001";
	CONSTANT STATE2 : std_logic_vector (2 DOWNTO 0) :="010";
	CONSTANT STATE3 : std_logic_vector (2 DOWNTO 0) :="011";
	CONSTANT STATE4 : std_logic_vector (2 DOWNTO 0) :="100";

BEGIN
	PROCESS (CLK, RESET, next_sreg)
	BEGIN
		IF ( RESET='1' ) THEN
			sreg <= STATE0;
		ELSIF CLK='1' AND CLK'event THEN
			sreg <= next_sreg;
		END IF;
	END PROCESS;

	PROCESS (sreg,PB)
	BEGIN
		Debounced <= '0'; 

		next_sreg<=STATE0;

		CASE sreg IS
			WHEN STATE0 =>
				Debounced<='0';
				IF ( PB='1' ) THEN
					next_sreg<=STATE1;
				 ELSE
					next_sreg<=STATE0;
				END IF;
			WHEN STATE1 =>
				Debounced<='0';
				IF ( PB='0' ) THEN
					next_sreg<=STATE0;
				END IF;
				IF ( PB='1' ) THEN
					next_sreg<=STATE2;
				END IF;
			WHEN STATE2 =>
				Debounced<='0';
				IF ( PB='0' ) THEN
					next_sreg<=STATE0;
				END IF;
				IF ( PB='1' ) THEN
					next_sreg<=STATE3;
				END IF;
			WHEN STATE3 =>
				Debounced<='0';
				IF ( PB='0' ) THEN
					next_sreg<=STATE0;
				END IF;
				IF ( PB='1' ) THEN
					next_sreg<=STATE4;
				END IF;
			WHEN STATE4 =>
				Debounced<='1';
				IF ( PB='1' ) THEN
					next_sreg<=STATE4;
				END IF;
				IF ( PB='0' ) THEN
					next_sreg<=STATE0;
				END IF;
			WHEN OTHERS =>
		END CASE;
	END PROCESS;
END BEHAVIOR;
