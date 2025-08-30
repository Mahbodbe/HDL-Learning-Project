LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY JKFF_tb IS
END JKFF_tb;
 
ARCHITECTURE behavior OF JKFF_tb IS 
 
 
    COMPONENT JKFF
    PORT(
         K : IN  std_logic;
         J : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         Ojk : OUT  std_logic
        );
    END COMPONENT;
    

   signal K : std_logic := '0';
   signal J : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

   signal Ojk : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: JKFF PORT MAP (
          K => K,
          J => J,
          clk => clk,
          reset => reset,
          Ojk => Ojk
        );

   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   stim_proc: process
   begin		
		reset<='1';
		wait for clk_period*10;
		reset<='0';
		J <= '0';
		K <= '1';
		wait for clk_period*10;
		J <= '1';
		K <= '1';
		
		
	

      -- insert stimulus here 

      wait;
   end process;

END;
