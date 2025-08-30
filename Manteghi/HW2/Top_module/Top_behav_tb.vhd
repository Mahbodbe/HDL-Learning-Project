LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY Top_behav_tb IS
END Top_behav_tb;
 
ARCHITECTURE behavior OF Top_behav_tb IS 
 
 
    COMPONENT Top_behav
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
    

   signal unlock : std_logic := '0';
   signal cunlock : std_logic := '0';
   signal reset : std_logic := '0';
   signal vcc_1 : std_logic := '0';
   signal s_i : std_logic := '0';
   signal clk : std_logic := '0';
   signal clk_d : std_logic := '0';

   signal y : std_logic;

   constant clk_period : time := 16 ns;
   constant clk_d_period : time := 1 ns;
 
BEGIN
 
   uut: Top_behav PORT MAP (
          unlock => unlock,
          cunlock => cunlock,
          reset => reset,
          vcc_1 => vcc_1,
          s_i => s_i,
          clk => clk,
          clk_d => clk_d,
          y => y
        );

   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   clk_d_process :process
   begin
		clk_d <= '0';
		wait for clk_d_period/2;
		clk_d <= '1';
		wait for clk_d_period/2;
   end process;
 

   stim_proc: process
   begin		

		reset <= '1';
		unlock <='1';
		cunlock <= '1';
		s_i <= '0';
		wait for clk_d_period * 32;	
		reset <= '0';

	wait;
   end process;

END;
