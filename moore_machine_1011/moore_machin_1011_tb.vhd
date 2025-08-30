LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--USE ieee.numeric_std.ALL;
 
ENTITY moore_machin_1011_tb IS
END moore_machin_1011_tb;
 
ARCHITECTURE behavior OF moore_machin_1011_tb IS 
  
    COMPONENT moore_1011
    PORT(
         clk : IN  std_logic;
         din : IN  std_logic;
         rst : IN  std_logic;
         dout : OUT  std_logic
        );
    END COMPONENT;
    

   signal clk : std_logic := '0';
   signal din : std_logic := '0';
   signal rst : std_logic := '0';

   signal dout : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: moore_1011 PORT MAP (
          clk => clk,
          din => din,
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
		din <= '0'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '0'; wait for 10 ns;		
		din <= '0'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;	
		din <= '0'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;
		din <= '0'; wait for 10 ns;
		din <= '1';	wait for 10 ns;
		din <= '1';	wait for 10 ns;
		din <= '0';	wait for 10 ns;
		
      wait;
   end process;

END;
