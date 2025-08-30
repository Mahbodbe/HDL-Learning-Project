LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY counter_with_DFF_HA IS
END counter_with_DFF_HA;
 
ARCHITECTURE behavior OF counter_with_DFF_HA IS 
 
 
    COMPONENT counter
    PORT(
         EN : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         set : IN  std_logic;
         Q_out : OUT  std_logic_vector(3 downto 0);
         t : OUT  std_logic
        );
    END COMPONENT;
    
   signal EN : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal set : std_logic := '0';
   signal Q_out : std_logic_vector(3 downto 0);
   signal t : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: counter PORT MAP (
          EN => EN,
          clk => clk,
          reset => reset,
          set => set,
          Q_out => Q_out,
          t => t
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

   end process;

END;
