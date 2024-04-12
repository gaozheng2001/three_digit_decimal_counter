----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/04/12 22:11:39
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           d1_in : in STD_LOGIC_VECTOR (3 downto 0);
           d10_in : in STD_LOGIC_VECTOR (3 downto 0);
           d100_in : in STD_LOGIC_VECTOR (3 downto 0);
           d1 : out STD_LOGIC_VECTOR (3 downto 0);
           d10 : out STD_LOGIC_VECTOR (3 downto 0);
           d100 : out STD_LOGIC_VECTOR (3 downto 0)
     );
end counter;

architecture STRUCTURE of counter is
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

component counterer_1hz is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CLK_OUT_1hz : out STD_LOGIC);
end component;

component three_counter 
port(
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           EN : in std_logic;
           d1_in : in STD_LOGIC_VECTOR (3 downto 0);
           d10_in : in STD_LOGIC_VECTOR (3 downto 0);
           d100_in : in STD_LOGIC_VECTOR (3 downto 0);
           d1 : out STD_LOGIC_VECTOR (3 downto 0);
           d10 : out STD_LOGIC_VECTOR (3 downto 0);
           d100 : out STD_LOGIC_VECTOR (3 downto 0)
);
end component;

signal clk_out_10M : std_logic;
signal locked : std_ulogic;
signal clk_out_1 : std_logic;
begin

system_clocke : clk_wiz_0
   port map ( 
  -- Clock out ports  
   clk_out1  => clk_out_10M,
  -- Status and control signals                
   reset => RESET,
   locked => locked,
   -- Clock in ports
   clk_in1 => CLK
 );
 
 counter_1hz: counterer_1hz
    port map(
        CLK => clk_out_10M,
        RESET => RESET,
        CLK_OUT_1hz => clk_out_1
    );
 
 three_counters : three_counter
    port map (
    CLK => clk_out_10M,
    RESET => RESET,
    LOAD => LOAD,
    EN => clk_out_1,
    d1_in => d1_in,
    d10_in => d10_in,
    d100_in => d100_in,
    d1 => d1,
    d10 => d10,
    d100 => d100
);

end STRUCTURE;
