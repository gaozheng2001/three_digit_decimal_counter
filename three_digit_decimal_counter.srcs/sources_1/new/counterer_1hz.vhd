----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/04/13 01:38:56
-- Design Name: 
-- Module Name: counterer_1hz - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counterer_1hz is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CLK_OUT_1hz : out STD_LOGIC);
end counterer_1hz;

architecture Behavioral of counterer_1hz is
component three_digit_decimal_counter 
port(
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           EN : in std_logic;
           enout : out std_logic
);
end component;

begin
    down10M: three_digit_decimal_counter 
    port map(
        CLK => CLK,
        RESET => RESET,
        EN => CLK,
        enout => CLK_OUT_1hz
    );
end Behavioral;
