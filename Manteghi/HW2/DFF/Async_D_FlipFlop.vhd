
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Async_D_FlipFlop is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           reset : in  STD_LOGIC);
end Async_D_FlipFlop;

architecture Behavioral of Async_D_FlipFlop is

begin

process(clk, reset)
	begin
		if(rising_edge(clk)) then
			Q <= D;
		end if;
		
		if(reset='1') then
			Q<='0';
		end if;

end process;

end Behavioral;

