LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY Decoder_tb IS
END Decoder_tb;
 
ARCHITECTURE behavior OF Decoder_tb IS 
 
 
    COMPONENT Decoder
    PORT(
         Datad : IN  std_logic_vector(12 downto 0);
         Odd : IN  std_logic;
         Datado : OUT  std_logic_vector(7 downto 0);
         Valid : OUT  std_logic
        );
    END COMPONENT;
    

   signal Datad : std_logic_vector(12 downto 0) := (others => '0');
   signal Odd : std_logic := '0';

   signal Datado : std_logic_vector(7 downto 0);
   signal Valid : std_logic;

 
BEGIN
 
   uut: Decoder PORT MAP (
          Datad => Datad,
          Odd => Odd,
          Datado => Datado,
          Valid => Valid
        );


   stim_proc: process
   begin		
		Datad <= "1001101100011";
		Odd<= '0';

		
      wait;
   end process;

END;
