----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/05/05 10:08:55
-- Design Name: 
-- Module Name: tb_ip - Behavioral
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

entity tb_ip is
--  Port ( );
end tb_ip;

architecture Behavioral of tb_ip is
component clk_wiz_0
port
 (-- Clock in ports
  -- Clock out ports
  clk_out1          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;

signal clk: std_logic:='0';
signal reset: std_logic:='0';
signal lock, clk_out: std_logic:='0';

constant per: time := 100 ns;

begin
uut: clk_wiz_0
   port map ( 
  -- Clock out ports  
   clk_out1  => clk_out,
  -- Status and control signals                
   reset => reset,
   locked => lock,
   -- Clock in ports
   clk_in1 => clk
 );
 
    clock_gen: process
    begin
        clk <= '0';
        wait for per/2;
        clk <= '1';
        wait for per/2;
    end process;
    
    reset_process : process
    begin
        reset <= '1';
        for i in 1 to 2 loop
            wait until clk = '1';
        end loop;
        reset <= '0';
        wait;
    end process;

end Behavioral;
