----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/16/2017 05:19:26 PM
-- Design Name:
-- Module Name: cpu - Behavioral
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


LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

-- entity cpu is
-- PORT(clk, clk100MHz : in STD_LOGIC;
--    reset : in STD_LOGIC;
--    Inport0, Inport1 : in STD_LOGIC_VECTOR(7 downto 0);
--    ledport0, ledport1  : out STD_LOGIC_VECTOR(7 downto 0);
--    sevport0, sevport1, sevport2, sevport3 : out std_logic_vector(6 downto 0) := "1111111");
-- end cpu;
entity cpu is
PORT(clk, clk100MHz : in STD_LOGIC;
   reset : in STD_LOGIC;
   Inport0, Inport1 : in STD_LOGIC_VECTOR(7 downto 0);
   ledport0, ledport1  : out STD_LOGIC_VECTOR(7 downto 0);
   sevport0, sevport1, sevport2, sevport3 : out std_logic_vector(6 downto 0) := "1111111";
   PCt : out UNSIGNED(8 downto 0);
   IRt : out STD_LOGIC_VECTOR(7 downto 0);
   MDRt : out STD_LOGIC_VECTOR(7 downto 0);
   At,Bt : out SIGNED(7 downto 0);
   Nt,Zt,Vt : out STD_LOGIC;
   DATAt : out STD_LOGIC_VECTOR(7 downto 0));
end cpu;

architecture a of cpu is
-- ----------- Declare the ALU component ----------
component alu is
port(A, B : in SIGNED(7 downto 0);
        F : in STD_LOGIC_VECTOR(2 downto 0);
        Y : out SIGNED(7 downto 0);
    N,V,Z : out STD_LOGIC);
end component;
-- ------------ Declare signals interfacing to ALU -------------
signal ALU_A, ALU_B : SIGNED(7 downto 0);
signal ALU_FUNC : STD_LOGIC_VECTOR(2 downto 0);
signal ALU_OUT : SIGNED(7 downto 0);
signal ALU_N, ALU_V, ALU_Z : STD_LOGIC;

-- ------------ Declare the 512x8 RAM component --------------
-- component microram is
-- port (  CLOCK   : in STD_LOGIC ;
--     ADDRESS  : in STD_LOGIC_VECTOR (8 downto 0);
--     DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
--     DATAIN  : in STD_LOGIC_VECTOR (7 downto 0);
--     WE  : in STD_LOGIC
--    );
-- end component;

-- component microram_sim is
component microram_sim_inc is
port (  CLOCK   : in STD_LOGIC ;
    ADDRESS  : in STD_LOGIC_VECTOR (8 downto 0);
    DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
    DATAIN  : in STD_LOGIC_VECTOR (7 downto 0);
    WE  : in STD_LOGIC
   );
end component;



-- ---------- Declare signals interfacing to RAM ---------------
signal RAM_DATA_OUT : STD_LOGIC_VECTOR(7 downto 0);  -- DATAOUT output of RAM
signal ADDR : STD_LOGIC_VECTOR(8 downto 0);           -- ADDRESS input of RAM
signal RAM_WE : STD_LOGIC;

-- ---------- Declare the state names and state variable -------------
type STATE_TYPE is (Fetch, Operand, Memory, Execute);
signal CurrState : STATE_TYPE;
-- ---------- Declare the internal CPU registers -------------------
signal PC : UNSIGNED(8 downto 0);
signal IR : STD_LOGIC_VECTOR(7 downto 0);
signal MDR : STD_LOGIC_VECTOR(7 downto 0);

signal A,B : SIGNED(7 downto 0);
signal N,Z,V : STD_LOGIC;
-- ---------- Declare the common data bus ------------------
signal DATA : STD_LOGIC_VECTOR(7 downto 0);

-- -----------------------------------------------------
-- This function returns TRUE if the given op code is a
-- 4-phase instruction rather than a 2-phase instruction
-- -----------------------------------------------------
function Is4Phase(constant DATA : STD_LOGIC_VECTOR(7 downto 0)) return BOOLEAN is
variable MSB5 : STD_LOGIC_VECTOR(4 downto 0);
variable RETVAL : BOOLEAN;
begin
  MSB5 := DATA(7 downto 3);
  if(MSB5 = "00000" or MSB5 = "01100") then
   RETVAL := true;
  else
   RETVAL := false;
  end if;
 return RETVAL;
end function;

-- BCDO function
function BCDO(constant BCD_Num : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
  variable SEV_SEG : std_logic_vector(6 downto 0);
begin
  case BCD_Num is
    when "0000" => SEV_SEG := "0000001"; -- 0
    when "0001" => SEV_SEG := "1001111"; -- 1
    when "0010" => SEV_SEG := "0010010"; -- 2
    when "0011" => SEV_SEG := "0000110"; -- 3
    when "0100" => SEV_SEG := "1001100"; -- 4
    when "0101" => SEV_SEG := "0100100"; -- 5
    when "0110" => SEV_SEG := "0100000"; -- 6
    when "0111" => SEV_SEG := "0001111"; -- 7
    when "1000" => SEV_SEG := "0000000"; -- 8
    when "1001" => SEV_SEG := "0000100"; -- 9
    when others => SEV_SEG := "1111110"; -- -
  end case;
  return SEV_SEG;
end function;



-- --------- Declare variables that indicate which registers are to be written --------
-- --------- from the DATA bus at the start of the next Fetch cycle. ------------------
signal Exc_RegWrite : STD_LOGIC;        -- Latch data bus in A or B
signal Exc_CCWrite : STD_LOGIC;         -- Latch ALU status bits in CCR
signal Exc_IOWrite : STD_LOGIC;         -- Latch data bus in I/O
signal Exc_SevSeg : STD_LOGIC;
signal Exc_Deb : STD_LOGIC;
signal Exc_Inc : std_logic;
signal Exc_Stor : std_logic;

signal deb0, deb1 : std_logic := '0';
signal we : std_logic := '0';

begin
-- ------------ Instantiate the ALU component ---------------
U1 : alu PORT MAP (ALU_A, ALU_B, ALU_FUNC, ALU_OUT, ALU_N, ALU_V, ALU_Z);

-- ------------ Drive the ALU_FUNC input ----------------
ALU_FUNC <= IR(6 downto 4);

-- ------------ Instantiate the RAM component -------------
-- U2 : microram PORT MAP (CLOCK => clk, ADDRESS => ADDR, DATAOUT => RAM_DATA_OUT, DATAIN => DATA, WE => RAM_WE);
-- U2 : microram_sim PORT MAP (CLOCK => clk, ADDRESS => ADDR, DATAOUT => RAM_DATA_OUT, DATAIN => DATA, WE => RAM_WE);
U2 : microram_sim_inc PORT MAP (CLOCK => clk, ADDRESS => ADDR, DATAOUT => RAM_DATA_OUT, DATAIN => DATA, WE => RAM_WE);

PCt <= PC;
IRt <= IR;
MDRt <= MDR;
At <= A;
Bt <= B;
Nt <= N;
Zt <= Z;
Vt <= V;
DATAt <= DATA;


process (Inport0,clk100MHz,clk)
  variable inport_prev : std_logic_vector(7 downto 0) := X"00";
  variable cnt0, cnt1 : integer := 0;
begin
  if(Inport0(0) /= inport_prev(0))then
    cnt0 := 0;
    deb0 <= '0';
  end if;

  if(Inport0(1) /= inport_prev(1))then
    cnt1 := 0;
    deb1 <= '0';
  end if;

  --if(rising_edge(clk100MHz))then
  if(rising_edge(clk))then
    if(Inport0(0) = '0')then
      --if(cnt0 < 4000000)then
      if(cnt0 < 18)then
        cnt0 := cnt0 + 1;
      else
        deb0 <= '1';
      end if;
    else
      deb0 <= '0';
    end if;

    if(Inport0(1) = '0')then
      --if(cnt1 < 4000000)then
      if(cnt1 < 18)then
        cnt1 := cnt1 + 1;
      else
        deb1 <= '1';
      end if;
    else
      deb1 <= '0';
    end if;
  end if;

end process;



-- ---------------- Generate RAM write enable ---------------------
-- The address and data are presented to the RAM during the Memory phase,
-- hence this is when we need to set RAM_WE high.
process (CurrState,IR,we)
begin
  if((CurrState = Memory) and ((IR(7 downto 2) = "000001") or we = '1')) then
    RAM_WE <= '1';
  else
    RAM_WE <= '0';
  end if;
end process;

-- ---------------- Generate address bus --------------------------
with CurrState select
  ADDR <= STD_LOGIC_VECTOR(PC) when Fetch,
    STD_LOGIC_VECTOR(PC) when Operand,  -- really a don't care
    IR(1) & MDR when Memory,
    STD_LOGIC_VECTOR(PC) when Execute,
    STD_LOGIC_VECTOR(PC) when others;   -- just to be safe

-- --------------------------------------------------------------------
-- This is the next-state logic for the 4-phase state machine.
-- --------------------------------------------------------------------
process (clk,reset)
    variable temp : integer;
    variable ab_temp : signed(7 downto 0);
begin
  if(reset = '1') then
    CurrState <= Fetch;
    PC <= (others => '0');
    IR <= (others => '0');
    MDR <= (others => '0');
    A <= X"01";
    B <= (others => '0');
    N <= '0';
    Z <= '0';
    V <= '0';
    ledport0 <= (others => '0');
    ledport1 <= (others => '0');
    sevport0 <= (others => '1');
    sevport1 <= (others => '1');
    sevport2 <= (others => '1');
    sevport3 <= (others => '1');
    temp := 0;
    we <= '0';
  elsif(rising_edge(clk)) then
   case CurrState is
      when Fetch =>
        IR <= DATA;
        temp := 0;
        if(Is4Phase(DATA)) then
            PC <= PC + 1;
            CurrState <= Operand;
        else
            CurrState <= Execute;
        end if;

     when Operand =>
        MDR <= DATA;
        CurrState <= Memory;

     when Memory =>
        CurrState <= Execute;
        if(we = '1')then
            we <= '0';
            --CurrState <= Fetch;
        end if;

     when Execute =>
        -- if(temp = 0)then
        PC <= PC + 1;
        -- end if;
        CurrState <= Fetch;

        if(Exc_RegWrite = '1') then   -- Writing result to A or B
          if(IR(0) = '0') then
           A <= SIGNED(DATA);
          else
           B <= SIGNED(DATA);
          end if;
        end if;

        if(Exc_CCWrite = '1') then    -- Updating flag bits
          V <= ALU_V;
          N <= ALU_N;
          Z <= ALU_Z;
        end if;

        if(Exc_IOWrite = '1') then    -- Write to Outport0 or OutPort1
          if(IR(1) = '0') then
           ledport0 <= DATA;
          else
           ledport1 <= DATA;
          end if;
        end if;

        if(Exc_SevSeg = '1') then     -- Write to seven seg 0 and seven seg 1
            if(IR(0) = '0')then
                sevport0 <= BCDO(DATA(3 downto 0));
                sevport1 <= BCDO(DATA(7 downto 4));
            else
                sevport2 <= BCDO(DATA(3 downto 0));
                sevport3 <= BCDO(DATA(7 downto 4));
            end if;
        end if;

        if(Exc_Deb = '1')then -- write debounced state
          if(IR(0) = '0') then
            if(IR(1) = '0')then
                --A <= signed("0000000" & deb0);
                A <= ("0000000" & deb0);
            else
                --A <= signed("0000000" & deb1);
                A <= ("0000000" & deb1);
            end if;
          else
            if(IR(1) = '0')then
                B <= ("0000000" & deb0);
                --B <= signed(deb0);
            else
                B <= ("0000000" & deb1);
                --B <= signed(deb1);
            end if;
          end if;
        end if;

        if(Exc_Inc = '1' and temp = 0)then
            if(IR(0) = '0') then
                ab_temp := signed(DATA) + 1;
                A <= ab_temp;
            else
                ab_temp := signed(DATA) + 1;
                B <= ab_temp;
            end if;

            if(ab_temp = 0)then
                Z <= '1';
            else
                Z <= '0';
            end if;

            if(ab_temp(7) = '1')then
                N <= '1';
            else
                N <= '0';
            end if;

            if(ab_temp = -128)then
                V <= '1';
            else
                V <= '0';
            end if;
            -- increment
            -- store
            CurrState <= Memory;
            we <= '1';
            temp := 1;
            PC <= PC;
        end if;

        if(Exc_Stor = '1')then
            null;
        end if;

      when Others => CurrState <= Fetch;
    end case;
  end if;
end process;


process (CurrState,RAM_DATA_OUT,A,B,ALU_OUT,Inport0,Inport1,IR)
begin
-- Set these to 0 in each phase unless overridden, just so we don't
-- generate latches (which are unnecessary).
Exc_RegWrite <= '0';
Exc_CCWrite <= '0';
Exc_IOWrite <= '0';
Exc_SevSeg <= '0';
Exc_Deb <= '0';
Exc_Inc <= '0';
Exc_Stor <= '0';

-- Same idea
ALU_A <= A;
ALU_B <= B;

-- Same idea
DATA <= RAM_DATA_OUT;

case CurrState is
   when Fetch | Operand => DATA <= RAM_DATA_OUT;

   when Memory => if(IR(0) = '0') then
             DATA <= STD_LOGIC_VECTOR(A);
            else
             DATA <= STD_LOGIC_VECTOR(B);
            end if;

   when Execute => case IR(7 downto 1) is
      when "1000000"       -- ADD R
       | "1001000"      -- SUB R
       | "1100000"      -- XOR R
       | "1111000" =>      -- CLR R
          DATA <= STD_LOGIC_VECTOR(ALU_OUT);
          Exc_RegWrite <= '1';
                      Exc_CCWrite <= '1';

      when "1010000"      -- LSL R
       | "1011000"      -- LSR R
       | "1101000"      -- COM R
       | "1110000" =>      -- NEG R
          if(IR(0) = '0') then
             ALU_A <= A;
          else
             ALU_A <= B;
          end if;
          DATA <= STD_LOGIC_VECTOR(ALU_OUT);
          Exc_RegWrite <= '1';
          Exc_CCWrite <= '1';

      when "0000100"|"0000101" =>          -- OUT R,P
          if(IR(0) = '0') then
           DATA <= STD_LOGIC_VECTOR(A);
          else
           DATA <= STD_LOGIC_VECTOR(B);
          end if;
          Exc_IOWrite <= '1';

      --when "1000100" =>          -- BCDO R
      when "0100000" =>
          if(IR(0) = '0') then
           DATA <= STD_LOGIC_VECTOR(A);
          else
           DATA <= STD_LOGIC_VECTOR(B);
          end if;
          Exc_SevSeg <= '1';

      when "0000110"|"0000111" =>           -- IN P,R
          if(IR(1) = '0') then
           DATA <= Inport0;
          else
           DATA <= Inport1;
          end if;
          Exc_RegWrite <= '1';

      when "0101000"|"0101001" =>           -- DEB B,R
        -- if(IR(1) = '0') then
        --   DATA <= "0000000" & "0";
        -- else
        --   DATA <= "0000000" & "1";
        -- end if;
        Exc_Deb <= '1';

      when "0000000"|"0000001" =>          -- LOAD M,R
          DATA <= RAM_DATA_OUT;
          Exc_RegWrite <= '1';

      when "0110000"|"0110001" =>          -- Inc M,R
          DATA <= RAM_DATA_OUT;
          --Exc_RegWrite <= '1';
          Exc_Inc <= '1';

      when "0000010"|"0000011" =>         -- STOR R,M
            Exc_Stor <= '1';

      when others => null;
      end case;
    end case;
end process;

end a;
