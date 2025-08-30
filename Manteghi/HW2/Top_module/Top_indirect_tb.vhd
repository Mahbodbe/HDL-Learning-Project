LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

ENTITY Top_indirect_tb IS
END Top_indirect_tb;

ARCHITECTURE behavior OF Top_indirect_tb IS 

    -- Component declaration for the DUT
    COMPONENT Top_indirect
    PORT(
         unlock : IN  std_logic;
         cunlock : IN  std_logic;
         reset : IN  std_logic;
         vcc_1 : IN  std_logic;
         s_i : IN  std_logic;
         clk : IN  std_logic;
         clk_d : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;

    -- Signal declarations
    signal unlock   : std_logic := '0';
    signal cunlock  : std_logic := '0';
    signal reset    : std_logic := '0';
    signal vcc_1    : std_logic := '0';
    signal s_i      : std_logic := '0';
    signal clk      : std_logic := '0';
    signal clk_d    : std_logic := '0';
    signal y        : std_logic;

    -- Clock periods
    constant clk_period    : time := 16 ns;
    constant clk_d_period  : time := 1 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: Top_indirect PORT MAP (
        unlock => unlock,
        cunlock => cunlock,
        reset => reset,
        vcc_1 => vcc_1,
        s_i => s_i,
        clk => clk,
        clk_d => clk_d,
        y => y
    );

    -- Clock generation for clk (main clock)
    clk_process : process
    begin
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
    end process;

    -- Clock generation for clk_d (serial data clock)
    clk_d_process : process
    begin
            clk_d <= '0';
            wait for clk_d_period/2;
            clk_d <= '1';
            wait for clk_d_period/2;
    end process;

    -- Stimulus process
    stim_proc1: process
    begin		
		reset <= '1';
		unlock <='1';
		cunlock <= '1';
		s_i <= '0';
		wait for clk_d_period * 32;	
		cunlock <= '0';

      wait;
    end process;
	 

END;
