LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY T_FlipFlop_tb IS
END T_FlipFlop_tb;
 
ARCHITECTURE behavior OF T_FlipFlop_tb IS 
 
 
    COMPONENT T_FlipFlop
    PORT(
         T : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   signal T : std_logic := '0';
   signal clk : std_logic := '0';


   signal Q : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: T_FlipFlop PORT MAP (
          T => T,
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


      wait for 10 ns;

		T <= '1';
		wait for 12 ns;
		T <= '0';
		wait for 11 ns;
		T <= '1';
		wait for 18 ns;
		T <= '0';
		wait for 15 ns;
		T <= '1';
		wait for 13 ns;
		T <= '0';
		wait for 10 ns;

      wait;
   end process;

END;
