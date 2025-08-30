LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY decoder2x4_tb IS
END decoder2x4_tb;
 
ARCHITECTURE behavior OF decoder2x4_tb IS 
 
 
    COMPONENT decoder2x4
    PORT(
         inp : IN  std_logic_vector(1 downto 0);
         En : IN  std_logic;
         outp : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   signal inp : std_logic_vector(1 downto 0) := (others => '0');
   signal En : std_logic := '0';

   signal outp : std_logic_vector(3 downto 0);
 
BEGIN
 
   uut: decoder2x4 PORT MAP (
          inp => inp,
          En => En,
          outp => outp
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		En <= '0';
		wait for 20 ns;
		
		En <= '1';
		
		inp <= "00";
		wait for 20 ns;

		inp <= "01";
		wait for 20 ns;

		inp <= "10";
		wait for 20 ns;
		
		
		inp <= "11";
		wait for 20 ns;
		
      wait;
   end process;

END;
