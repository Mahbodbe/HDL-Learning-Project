library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder8x3 is
    Port (
        inp   : in  STD_LOGIC_VECTOR(7 downto 0); 
        outp  : out STD_LOGIC_VECTOR(2 downto 0);
        v : out STD_LOGIC;
        b  : out STD_LOGIC
    );
end Encoder8x3;

architecture Behavioral of Encoder8x3 is
begin
process(inp)
begin
outp  <= "000";
v<= '0';
b <= '0';

if inp /= "11111111" then
	v <= '1';
	b  <= '1';

	if inp(0) = '0' then
		 outp <= "000";
	elsif inp(1) = '0' then
		 outp <= "001";
	elsif inp(2) = '0' then
		 outp <= "010";
	elsif inp(3) = '0' then
		 outp <= "011";
	elsif inp(4) = '0' then
		 outp <= "100";
	elsif inp(5) = '0' then
		 outp <= "101";
	elsif inp(6) = '0' then
		 outp <= "110";
	elsif inp(7) = '0' then
		 outp <= "111";
	end if;
end if;
end process;
end Behavioral;