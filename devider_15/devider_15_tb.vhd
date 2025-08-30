LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--USE ieee.numeric_std.ALL;
 
ENTITY devider_15_tb IS
END devider_15_tb;
 
ARCHITECTURE behavior OF devider_15_tb IS 
 
 
    COMPONENT devider_15
    PORT(
         clk : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    
   signal clk : std_logic := '0';

   signal q : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
   uut: devider_15 PORT MAP (
          clk => clk,
          q => q
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
      wait for 100 ns;	

      wait for clk_period*10;


      wait;
   end process;

END;
