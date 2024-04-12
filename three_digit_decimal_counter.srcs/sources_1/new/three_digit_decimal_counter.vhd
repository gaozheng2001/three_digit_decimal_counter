----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/30 14:46:36
-- Design Name: 
-- Module Name: three_digit_decimal_counter - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity three_digit_decimal_counter is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           EN : in std_logic;
           enout : out std_logic);
end three_digit_decimal_counter;

architecture Behavioral of three_digit_decimal_counter is
--signal count : integer range 0 to 9999999;
type state_type is(s0, s1);
signal state, state_next :state_type;
signal count, count_next : std_logic_vector(23 downto 0);
constant upcount :integer:=10000000;
begin
-- register
process (CLK, RESET, EN) is
begin
    if RESET = '1' then
        state <= s0;
        count <= (others => '0');
    elsif CLK'event and CLK='1' then
        if EN = '1' then
            state <= state_next;
            count <= count_next;
        end if;
    end if;
end process;
process (state, state_next, EN, count, count_next) is
begin
    enout <= '0';
    state_next <= s0;
    count_next <= count;
    case state is
        when s0 => 
            count_next <= (others => '0');
            enout <='1';
            state_next <= s1;
        when s1 => 
            if count = upcount - 2 then
                count_next <= (others => '0');
                state_next <= s0;
            else 
                count_next <= count + 1;
                state_next <= s1;
            end if;
    end case;
end process;

end Behavioral;
