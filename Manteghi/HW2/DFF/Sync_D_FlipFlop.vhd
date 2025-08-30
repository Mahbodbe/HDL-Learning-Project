library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sync_D_FlipFlop is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Sync_D_FlipFlop;

architecture Behavioral of Sync_D_FlipFlop is

begin

process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '0') then
				Q <= D;
			elsif(reset= '1') then
				Q <= '0';
			end if;
		end if;

end process;


end Behavioral;

