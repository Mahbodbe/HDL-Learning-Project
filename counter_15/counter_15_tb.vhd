LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--USE ieee.numeric_std.ALL;
 
ENTITY counter_15_tb IS
END counter_15_tb;
 
ARCHITECTURE behavior OF counter_15_tb IS 
 
 
    COMPONENT counter_15
    PORT(
         clk : IN  std_logic;
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   signal clk : std_logic := '0';

   signal q : std_logic_vector(3 downto 0);

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: counter_15 PORT MAP (
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
