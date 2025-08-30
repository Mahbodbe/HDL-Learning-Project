LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Async_sync_D_FF_tb IS
END Async_sync_D_FF_tb;
 
ARCHITECTURE behavior OF Async_sync_D_FF_tb IS 
 
 
    COMPONENT Async_sync_D_FF
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         set : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   signal D : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal set : std_logic := '0';

   signal Q : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: Async_sync_D_FF PORT MAP (
          D => D,
          clk => clk,
          reset => reset,
          set => set,
          Q => Q
        );

   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   stim_proc: process
   begin		
      wait for 12 ns;

		D <= '1';
		wait for 25 ns;

		
		D <= '0';
		wait for 15 ns;

		D <= '1';
		wait for 10 ns;
		
		reset <= '1';
		wait for 18 ns;
		
		D <= '1';
		wait for 10 ns;
		
		D <= '0';
		wait for 10 ns;
		
		set <= '1';

      wait;
   end process;

END;
