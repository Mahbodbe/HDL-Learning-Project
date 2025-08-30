library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Async_sync_D_FF is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           set : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Async_sync_D_FF;

architecture Behavioral of Async_sync_D_FF is

begin

process(clk, set)

	begin
		if(rising_edge(clk)) then
			if(reset = '0') then
				Q <= D;
			elsif(reset= '1') then
				Q <= '0';
			end if;
		end if;
		if(set = '1') then
			Q <= '1';
		end if;

end process;



end Behavioral;

