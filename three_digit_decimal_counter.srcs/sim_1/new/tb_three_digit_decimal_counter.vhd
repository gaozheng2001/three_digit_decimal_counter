----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/30 14:56:26
-- Design Name: 
-- Module Name: tb_three_digit_decimal_counter - Behavioral
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
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;
-- use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_three_digit_decimal_counter is
--  Port ( );
end tb_three_digit_decimal_counter;

architecture Behavioral of tb_three_digit_decimal_counter is
    component three_digit_decimal_counter
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           EN : in std_logic;
           enout : out std_logic);
    end component;
    --Inputs
    signal CLK : std_logic := '0';
    signal RESET : std_logic := '0';
    signal EN : std_logic := '0';

    --Outputs
    signal enout : std_logic:='0';
    
    constant period : time := 100 ns;
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: three_digit_decimal_counter PORT MAP (
        CLK => CLK,
        RESET => RESET,
        EN => EN,
        enout =>enout
    );

    clock_gen: process
    begin
        CLK <= '0';
        wait for period/2;
        CLK <= '1';
        wait for period/2;
    end process;
    
    en_gen: process
    begin
        EN <= '0';
        wait for period/2;
        EN <= '1';
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
    
    --monitor : process
    --constant n : integer := 1000;
    --variable number : integer range 0 to 999 :=0;
    --begin
    --    wait until reset <= '0';
    --    wait for 1 ns;
    --    for i in 0 to n loop
    --       number := to_integer(unsigned(d100))*100+to_integer(unsigned(d10))*10+to_integer(unsigned(d1));
    --        assert number = i mod n
    --        report "count of " & integer'image(i mod n) & " failed"
    --        severity error;
    --        wait until clk = '1';
    --        wait for 1 ns;
    --    end loop;
    --    wait;
    --end process;

end Behavioral;
