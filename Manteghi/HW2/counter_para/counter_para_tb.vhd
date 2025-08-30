LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY counter_para_tb IS
END counter_para_tb;
 
ARCHITECTURE behavior OF counter_para_tb IS 
 
 
    COMPONENT counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Outc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

   signal Outc : std_logic_vector(31 downto 0);

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: counter PORT MAP (
          clk => clk,
          reset => reset,
          Outc => Outc
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
      wait for clk_period*10;
      wait for clk_period*10;
		wait for 3 ns;
		reset <= '1';
      wait for clk_period*10;
      wait for clk_period*10;
		reset <= '0';
      wait for clk_period*10;
      wait for clk_period*10;
      wait for clk_period*10;
      wait for clk_period*10;
      wait for clk_period*10;
      wait for clk_period*10;
      wait for clk_period*10;
      wait for clk_period*10;

      wait;
   end process;

END;
