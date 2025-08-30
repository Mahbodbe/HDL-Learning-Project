LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY decoder3x8_tb IS
END decoder3x8_tb;
 
ARCHITECTURE behavior OF decoder3x8_tb IS 
 
 
    COMPONENT decoder3x8
    PORT(
         inp : IN  std_logic_vector(2 downto 0);
         otp : OUT  std_logic_vector(7 downto 0);
         en : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inp : std_logic_vector(2 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal otp : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder3x8 PORT MAP (
          inp => inp,
          otp => otp,
          en => en
        );


   -- Stimulus process
   stim_proc: process
   begin		
      wait for 10 ns;	
		en <= '0';
		wait for 50 ns;	
		
		en <= '1';

		inp <= "000";
		wait for 50 ns;		
		
		inp <= "001";
		wait for 50 ns;	
		
		inp <= "010";
		wait for 50 ns;
		
		inp <= "011";
		wait for 50 ns;
		
		inp <= "100";
		wait for 50 ns;

		inp <= "101";
		wait for 50 ns;

		inp <= "110";
		wait for 50 ns;
		
		inp <= "111";
		wait for 50 ns;

		
      wait;
   end process;

END;
