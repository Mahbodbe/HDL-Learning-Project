LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--USE ieee.numeric_std.ALL;
 
ENTITY mealy_01_tb IS
END mealy_01_tb;
 
ARCHITECTURE behavior OF mealy_01_tb IS 
 
 
    COMPONENT mealy_01
    PORT(
         din : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         dout : OUT  std_logic
        );
    END COMPONENT;
    

   signal din : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

   signal dout : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: mealy_01 PORT MAP (
          din => din,
          clk => clk,
          rst => rst,
          dout => dout
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
		
		din <= '0'; wait for 10 ns;
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '0'; wait for 10 ns;		
		din <= '0'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;	
      wait;
   end process;

END;
