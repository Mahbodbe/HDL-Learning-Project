LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY Encoder_tb IS
END Encoder_tb;
 
ARCHITECTURE behavior OF Encoder_tb IS 
 
 
    COMPONENT Encoder
    PORT(
         Datai : IN  std_logic_vector(7 downto 0);
         Odd : IN  std_logic;
         Datao : OUT  std_logic_vector(12 downto 0)
        );
    END COMPONENT;
    

   signal Datai : std_logic_vector(7 downto 0) := (others => '0');
   signal Odd : std_logic := '0';

   signal Datao : std_logic_vector(12 downto 0);

BEGIN
 
   uut: Encoder PORT MAP (
          Datai => Datai,
          Odd => Odd,
          Datao => Datao
        );


   stim_proc: process
   begin		

		Datai <= "10010001";
		Odd <= '1';
		wait for 100 ns;
		Datai <= "10010001";
		Odd <= '0';

      wait;
   end process;

END;
