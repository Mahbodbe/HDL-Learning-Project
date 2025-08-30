LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY Top_module_tb IS
END Top_module_tb;
 
ARCHITECTURE behavior OF Top_module_tb IS 
 
 
    COMPONENT Top_module
    PORT(
         Data : IN  std_logic_vector(7 downto 0);
         Oddmode : IN  std_logic;
         error : IN  std_logic_vector(12 downto 0);
         Valid : OUT  std_logic;
         Dataout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   signal Data : std_logic_vector(7 downto 0) := (others => '0');
   signal Oddmode : std_logic := '0';
   signal error : std_logic_vector(12 downto 0) := (others => '0');

   signal Valid : std_logic;
   signal Dataout : std_logic_vector(7 downto 0);

BEGIN
 
   uut: Top_module PORT MAP (
          Data => Data,
          Oddmode => Oddmode,
          error => error,
          Valid => Valid,
          Dataout => Dataout
        );


 

   stim_proc: process
   begin		
      wait for 100 ns;	
		
		Data <= "10010001";
		Oddmode <= '0';
		error <= "0000000000000";
		wait for 100 ns;
		error <= "0010000000000";
		wait for 100 ns;
		error <= "0001000001000";
		
      wait;
   end process;

END;
