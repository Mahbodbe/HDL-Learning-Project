LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY FA_tb IS
END FA_tb;
 
ARCHITECTURE behavior OF FA_tb IS 
 
 
    COMPONENT FA_Parametric
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         b : IN  std_logic_vector(31 downto 0);
         s : OUT  std_logic_vector(31 downto 0);
         c : OUT  std_logic
        );
    END COMPONENT;
    

   signal a : std_logic_vector(31 downto 0) := (others => '0');
   signal b : std_logic_vector(31 downto 0) := (others => '0');

   signal s : std_logic_vector(31 downto 0);
   signal c : std_logic;
BEGIN
 
   uut: FA_Parametric PORT MAP (
          a => a,
          b => b,
          s => s,
          c => c
        );

 

   stim_proc: process
   begin		
      wait for 100 ns;	
		a <= "00000000000000000000000000000001";
		b <= "00000000000000000000000000000001";
		wait for 100 ns;	
		a <= "10000000000000000000000000000001";
		b <= "00000000100000000000000000000001";
		
      wait;
   end process;

END;
