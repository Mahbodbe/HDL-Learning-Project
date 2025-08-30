library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity D_FlipFlop is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end D_FlipFlop;

architecture Behavioral of D_FlipFlop is

begin

process(clk)
	begin
		if(rising_edge(clk)) then
			Q <= D;
		end if;

end process;


end Behavioral;

