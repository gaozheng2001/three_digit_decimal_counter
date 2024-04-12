----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/04/16 13:07:13
-- Design Name: 
-- Module Name: tb_counter - Behavioral
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

entity tb_counter is
--  Port ( );
end tb_counter;

architecture Behavioral of tb_counter is
    component counter
    port(
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        LOAD : in STD_LOGIC;
        d1_in : in STD_LOGIC_VECTOR (3 downto 0);
        d10_in : in STD_LOGIC_VECTOR (3 downto 0);
        d100_in : in STD_LOGIC_VECTOR (3 downto 0);
        d1 : out STD_LOGIC_VECTOR (3 downto 0);
        d10 : out STD_LOGIC_VECTOR (3 downto 0);
        d100 : out STD_LOGIC_VECTOR (3 downto 0)
    );
    end component;
    
    component clk_wiz_0
    port(-- Clock in ports
        -- Clock out ports
        clk_out_10M          : out    std_logic;
        -- Status and control signals
        reset             : in     std_logic;
        locked            : out    std_logic;
        clk_in1           : in     std_logic
    );
    end component;

    component counterer_1hz is
    Port (
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        CLK_OUT_1hz : out STD_LOGIC
    );
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
    
    --input 
    signal CLK : std_logic := '0';
    signal RESET : std_logic := '0';
    signal LOAD : std_logic := '0';

    signal d1_in : std_logic_vector(3 downto 0):="0010";
    signal d10_in : std_logic_vector(3 downto 0):="0010";
    signal d100_in : std_logic_vector(3 downto 0):="0010";   

    --Outputs
    signal d1 : std_logic_vector(3 downto 0):="0000";
    signal d10 : std_logic_vector(3 downto 0):="0000";
    signal d100 : std_logic_vector(3 downto 0):="0000";
    
    signal clk_out_10M : std_logic;
    signal locked : std_ulogic;
    signal clk_out_1 : std_logic;
    
    constant period : time := 10 ns;
begin
    uut : counter
    port map(
    CLK => CLK,
    RESET => RESET,
    LOAD => LOAD,
    d1_in => d1_in,
    d10_in => d10_in,
    d100_in => d100_in,
    d1 => d1,
    d10 => d10,
    d100 => d100
    );
    
    system_clocke : clk_wiz_0
    port map ( 
    -- Clock out ports  
    clk_out_10M => clk_out_10M,
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
    
    clock_gen: process
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

    load_process : process
    begin
        LOAD <= '1';
        wait for 1ms;
        LOAD <= '0';
        wait;
    end process;

end Behavioral;
