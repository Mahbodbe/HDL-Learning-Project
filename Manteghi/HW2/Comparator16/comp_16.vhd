LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY comp_16 IS
END comp_16;
 
ARCHITECTURE behavior OF comp_16 IS 
 
 
    COMPONENT Comparator16
    PORT(
         Ac : IN  std_logic_vector(15 downto 0);
         Bc : IN  std_logic_vector(15 downto 0);
         Oc : OUT  std_logic
        );
    END COMPONENT;
    

   signal Ac : std_logic_vector(15 downto 0) := (others => '0');
   signal Bc : std_logic_vector(15 downto 0) := (others => '0');

   signal Oc : std_logic;
BEGIN
 
   uut: Comparator16 PORT MAP (
          Ac => Ac,
          Bc => Bc,
          Oc => Oc
        );

   stim_proc: process
   begin		
		Ac <= "0000000000000010";
		Bc <= "0000000000000010";
		wait for 100 ns;
		
		Ac <= "0000000000000010";
		Bc <= "1000000000000010";
		wait for 100 ns;
		
		
		Ac <= "0000000010000010";
		Bc <= "0000000010000010";
		wait for 100 ns;
		
		Ac <= "1000000000000010";
		Bc <= "0000000000000010";
		wait for 100 ns;
		
   wait;
   end process;

END;
