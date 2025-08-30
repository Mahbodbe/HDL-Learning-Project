LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY tbmultiplexer4x1_tb IS
END tbmultiplexer4x1_tb;
 
ARCHITECTURE behavior OF tbmultiplexer4x1_tb IS 
 
 
    COMPONENT tbmultiplexer4x1
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         b : IN  std_logic_vector(1 downto 0);
         c : IN  std_logic_vector(1 downto 0);
         d : IN  std_logic_vector(1 downto 0);
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         f : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');
   signal c : std_logic_vector(1 downto 0) := (others => '0');
   signal d : std_logic_vector(1 downto 0) := (others => '0');
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';


   signal f : std_logic_vector(1 downto 0);

 
BEGIN
 
   uut: tbmultiplexer4x1 PORT MAP (
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
		a <= "00";
		b <= "01";
		c <= "10";
		d <= "11";
		
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
