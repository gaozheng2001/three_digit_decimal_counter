library IEEE;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.all;

entity tb_counter_1hz is
--  Port ( );
end tb_counter_1hz;

architecture Behavioral of tb_counter_1hz is
component counter_1hz
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CLK_OUT_1hz : out STD_LOGIC);
    end component;
    
    component three_digit_decimal_counter
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           EN : in std_logic;
           enout : out std_logic);
    end component;
    
    --Inputs
    signal CLK : std_logic := '0';
    signal RESET : std_logic := '0';

    --Outputs
    signal CLK_OUT_1hz : std_logic:='0';
        
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: counter_1hz 
    PORT MAP (
        CLK => CLK,
        RESET => RESET,
        CLK_OUT_1hz => CLK_OUT_1hz
    );
    
    down10M: three_digit_decimal_counter 
    port map(
        CLK => CLK,
        RESET => RESET,
        EN => CLK,
        enout => CLK_OUT_1hz
    );

    clock_gen: process
    constant period : time := 100 ns;
    begin
        CLK <= '0';
        wait for period/2;
        CLK <= '1';
        wait for period/2;
    end process;
    
    reset_process : process
    begin
        RESET <= '1';
        for i in 1 to 2 loop
            wait until CLK = '1';
        end loop;
        RESET <= '0';
        wait;
    end process;
end Behavioral;
