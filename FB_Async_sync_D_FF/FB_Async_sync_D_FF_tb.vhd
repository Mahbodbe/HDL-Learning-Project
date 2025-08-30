LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY FB_Async_sync_D_FF_tb IS
END FB_Async_sync_D_FF_tb;
 
ARCHITECTURE behavior OF FB_Async_sync_D_FF_tb IS 
 
 
    COMPONENT FB_Async_sync_D_FF
    PORT(
         D_FB : IN  std_logic_vector(3 downto 0);
         reset_fb : IN  std_logic;
         set_fb : IN  std_logic;
         clk : IN  std_logic;
         Q_FB : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   signal D_FB : std_logic_vector(3 downto 0) := (others => '0');
   signal reset_fb : std_logic := '0';
   signal set_fb : std_logic := '0';
   signal clk : std_logic := '0';

   signal Q_FB : std_logic_vector(3 downto 0);

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: FB_Async_sync_D_FF PORT MAP (
          D_FB => D_FB,
          reset_fb => reset_fb,
          set_fb => set_fb,
          clk => clk,
          Q_FB => Q_FB
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

		D_FB <= "1111";
		wait for 25 ns;

		
		D_FB <= "0000";
		wait for 15 ns;

		D_FB <= "1111";
		wait for 10 ns;
		
		reset_fb <= '1';
		wait for 18 ns;
		reset_fb <= '0';
		
		D_FB <= "1111";
		wait for 10 ns;

		D_FB <= "0000";
		wait for 10 ns;
		
		set_fb <= '1';

      wait;
   end process;

END;
