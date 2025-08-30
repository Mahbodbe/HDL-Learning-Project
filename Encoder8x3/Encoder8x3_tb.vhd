LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY Encoder8x3_tb IS
END Encoder8x3_tb;
 
ARCHITECTURE behavior OF Encoder8x3_tb IS 
 
 
    COMPONENT Encoder8x3
    PORT(
         inp : IN  std_logic_vector(7 downto 0);
         outp : OUT  std_logic_vector(2 downto 0);
         v : OUT  std_logic;
         b : OUT  std_logic
        );
    END COMPONENT;
    

   signal inp : std_logic_vector(7 downto 0) := (others => '0');

   signal outp : std_logic_vector(2 downto 0);
   signal v : std_logic;
   signal b : std_logic;

 
BEGIN
 
   uut: Encoder8x3 PORT MAP (
          inp => inp,
          outp => outp,
          v => v,
          b => b
        );


   stim_proc: process
   begin		
      -- hold reset state for 200 ns.
      wait for 50 ns;	


	  inp <= "11111111"; 
	  wait for 20 ns;

	  inp <= "11111110"; 
	  wait for 20 ns;

	  inp <= "11101111"; 
	  wait for 20 ns;

	  inp <= "01111111"; 
	  wait for 20 ns;

	  inp <= "10111011"; 
	  wait for 20 ns;

	  inp <= "11111100"; 
	  wait for 20 ns;

	  inp <= "11110111"; 
	  wait for 20 ns;

	  inp <= "00000000"; 
	  wait for 20 ns;

      wait;
   end process;

END;
