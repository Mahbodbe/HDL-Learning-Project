library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity multiplexer4x1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           f : out  STD_LOGIC);
end multiplexer4x1;

architecture Behavioral of multiplexer4x1 is

begin
process(a, b, c, d, s0,s1)
begin
if(s0 = '0' and s1 = '0') then
f <= a;
elsif(s0 = '1' and s1 = '0') then
f <= b;
elsif(s0 = '0' and s1 = '1') then
f <= c;
else
f <= d;

end if;
end process;

end Behavioral;

