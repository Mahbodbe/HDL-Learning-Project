LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY D_FlipFlop_tb IS
END D_FlipFlop_tb;
 
ARCHITECTURE behavior OF D_FlipFlop_tb IS 
 
 
    COMPONENT D_FlipFlop
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   signal D : std_logic := '0';
   signal clk : std_logic := '0';

   signal Q : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: D_FlipFlop PORT MAP (
          D => D,
          clk => clk,
          Q => Q
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

      wait for 12 ns;

		D <= '1';
		wait for 25 ns;

		
		D <= '0';
		 wait for 15 ns;

		D <= '1';
		wait for 13 ns;
		
		D <= '0';
		wait for 18 ns;
		
		D <= '1';
		wait for 10 ns;

		
      wait;
   end process;

END;
