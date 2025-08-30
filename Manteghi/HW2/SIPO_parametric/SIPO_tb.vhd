LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY SIPO_tb IS
END SIPO_tb;
 
ARCHITECTURE behavior OF SIPO_tb IS 
    COMPONENT SIPO_parametric
    PORT(
         si : IN  std_logic;
         clk : IN  std_logic;
         res : IN  std_logic;
         Osipo : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   signal si : std_logic := '0';
   signal clk : std_logic := '0';
   signal res : std_logic := '0';

   signal Osipo : std_logic_vector(7 downto 0);

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: SIPO_parametric PORT MAP (
          si => si,
          clk => clk,
          res => res,
          Osipo => Osipo
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
		res <= '1';
      wait for clk_period*10; 
		res <= '0';
		si <= '1';
		wait for clk_period*10;
		si<= '0';
      wait;
   end process;

END;
