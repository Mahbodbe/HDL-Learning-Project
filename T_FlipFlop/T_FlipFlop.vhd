library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity T_FlipFlop is
    Port ( T : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end T_FlipFlop;

architecture Behavioral of T_FlipFlop is

signal s : STD_LOGIC := '0';

begin

process(clk)
	begin
		if(rising_edge(clk)) then
			if(t = '1') then
				if(s = '1') then
					Q <= '0';
					s <= '0';
				elsif(s = '0') then
					Q <= '1';
					s <= '1';
				end if;		
			
			end if;
		
		end if;

end process;




end Behavioral;

