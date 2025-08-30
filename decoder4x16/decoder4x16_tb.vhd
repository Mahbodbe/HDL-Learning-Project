LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY decoder4x16_tb IS
END decoder4x16_tb;
 
ARCHITECTURE behavior OF decoder4x16_tb IS 
 
 
    COMPONENT decoder4x16
    PORT(
         inp : IN  std_logic_vector(3 downto 0);
         ena : IN  std_logic;
         Outp : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inp : std_logic_vector(3 downto 0) := (others => '0');
   signal ena : std_logic := '0';

 	--Outputs
   signal Outp : std_logic_vector(15 downto 0);

BEGIN
 
   uut: decoder4x16 PORT MAP (
          inp => inp,
          ena => ena,
          Outp => Outp
        );

   stim_proc: process
   begin		
      wait for 5 ns;	
		ena <= '0';
		inp <= "1011";
      wait for 5 ns;

		ena <= '1';
		
		inp <= "0000";
		wait for 10 ns;
		
		inp <= "0001";
		wait for 10 ns;
		
		inp <= "0010";
		wait for 10 ns;
		
		inp <= "0011";
		wait for 10 ns;
		
		inp <= "0100";
		wait for 10 ns;
		
		inp <= "0101";
		wait for 10 ns;
		
		inp <= "0110";
		wait for 10 ns;
		
		inp <= "0111";
		wait for 10 ns;
		
		inp <= "1000";
		wait for 10 ns;
		
		inp <= "1001";
		wait for 10 ns;
		
		inp <= "1010";
		wait for 10 ns;
		
		inp <= "1011";
		wait for 10 ns;
		
		inp <= "1100";
		wait for 10 ns;
		
		inp <= "1101";
		wait for 10 ns;
		
		inp <= "1110";
		wait for 10 ns;
		
		inp <= "1111";
		wait for 10 ns;
      
		wait;
		
   end process;

END;
