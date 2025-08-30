library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_FlipFlop_j is
    Port ( T : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end T_FlipFlop_j;

architecture Behavioral of T_FlipFlop_j is

signal s : STD_LOGIC := '0';

begin

process(clk)

	begin

		if(rising_edge(clk)) then
			Q<= T xor s;
			s<=T xor s;

			
		end if;

end process;

end Behavioral;

