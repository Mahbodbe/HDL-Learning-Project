LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY multiplexer4x1_tb IS
END multiplexer4x1_tb;
 
ARCHITECTURE behavior OF multiplexer4x1_tb IS 
 
 
    COMPONENT multiplexer4x1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    

   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';

   signal f : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplexer4x1 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          s0 => s0,
          s1 => s1,
          f => f
        );


   stim_proc: process
   begin		
		a <= '1';
		b <= '0';
		c <= '1';
		d <= '0';
		
		s0 <= '0';
		s1 <= '0';
		wait for 100 ns;	
		
		s0 <= '1';
		s1 <= '0';
		wait for 100 ns;
		
		s0 <= '0';
		s1 <= '1';
		wait for 100 ns;
		
		s0 <= '1';
		s1 <= '1';
		wait for 100 ns;
		
		
      wait;
   end process;

END;
