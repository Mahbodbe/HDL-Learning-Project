LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY new_mealy_tb IS
END new_mealy_tb;
 
ARCHITECTURE behavior OF new_mealy_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mealy_new
    PORT(
         clk : IN  std_logic;
         res : IN  std_logic;
         din : IN  std_logic;
         dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal res : std_logic := '0';
   signal din : std_logic := '0';

 	--Outputs
   signal dout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mealy_new PORT MAP (
          clk => clk,
          res => res,
          din => din,
          dout => dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 10 ns;
		
		din <= '0'; wait for 10 ns;
		din <= '1'; wait for 10 ns;
		din <= '0'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '0'; wait for 10 ns;		
		din <= '0'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;	
		din <= '0'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;		
		din <= '1'; wait for 10 ns;
		din <= '0'; wait for 10 ns;
		din <= '1';	wait for 10 ns;
		din <= '1';	wait for 10 ns;
		din <= '0';	wait for 10 ns;
		
       wait;
   end process;

END;
