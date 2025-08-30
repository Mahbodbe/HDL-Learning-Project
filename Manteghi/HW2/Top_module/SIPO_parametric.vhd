library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIPO_parametric is
	generic 
	(
		number:integer:=8
	);
    Port ( si : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           res : in  STD_LOGIC;
           Osipo : out  STD_LOGIC_VECTOR (number-1 downto 0));
end SIPO_parametric;

architecture Behavioral of SIPO_parametric is
signal x: STD_LOGIC_VECTOR(number-1 downto 0);
begin

process(clk)

begin

	if(rising_edge(clk)) then 
		if(res='1') then 
			x <= (others => '0');
		else
			x <= si & x(number-1 downto 1);
		end if;
	end if;
		

end process;

Osipo <= x;
end Behavioral;

