
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY counter_tb IS
END counter_tb;
 
ARCHITECTURE behavior OF counter_tb IS 
 
 
    COMPONENT counter
    PORT(
         EN : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         set : IN  std_logic;
         Q_out : OUT  std_logic_vector(3 downto 0);
         t : OUT  std_logic
        );
    END COMPONENT;
    
   signal EN : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal set : std_logic := '0';

   signal Q_out : std_logic_vector(3 downto 0);
   signal t : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: counter PORT MAP (
          EN => EN,
          clk => clk,
          reset => reset,
          set => set,
          Q_out => Q_out,
          t => t
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	EN <= '0';
	reset <= '0';
	set <= '1';
	wait for 15 ns;
	set <= '0';
	
	EN <= '1';
	
	wait for 100 ns;
	
	EN <= '0';
	
	reset <= '1';
	
	wait for 10 ns;
	EN <= '1';
	reset <= '0';
		
	wait for 50 ns;
	
	EN <= '0';
	
	set <= '1';
	
	wait for 10 ns;
	
	EN <= '1';
	set <= '0';
	wait for 10 ns;
	
	
	
	wait;
	
   end process;

END;
