LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Mux8x1_tb IS
END Mux8x1_tb;
 
ARCHITECTURE behavior OF Mux8x1_tb IS 
 
 
    COMPONENT Mux8x1
    PORT(
         Am : IN  std_logic_vector(7 downto 0);
         Om : OUT  std_logic;
         Sm : IN  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   signal Am : std_logic_vector(7 downto 0) := (others => '0');
   signal Sm : std_logic_vector(2 downto 0) := (others => '0');

   signal Om : std_logic;
BEGIN
 
   uut: Mux8x1 PORT MAP (
          Am => Am,
          Om => Om,
          Sm => Sm
        );


   stim_proc: process
   begin		
      wait for 100 ns;	
		Am <= "01010101";
		Sm <= "000";
		wait for 100 ns;	
		Sm <= "001";
		wait for 100 ns;	
		Sm <= "010";
		wait for 100 ns;	
		Sm <= "011";
		wait for 100 ns;	
		Sm <= "100";
		wait for 100 ns;	
		Sm <= "101";
		wait for 100 ns;	
		Sm <= "110";
		wait for 100 ns;	
		Sm <= "111";

      wait;
   end process;

END;
