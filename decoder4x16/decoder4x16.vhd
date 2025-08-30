library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder4x16 is
    Port ( inp : in  STD_LOGIC_VECTOR (3 downto 0);
           ena : in  STD_LOGIC;
           Outp : out  STD_LOGIC_VECTOR (15 downto 0));
end decoder4x16;

architecture Behavioral of decoder4x16 is

component decoder2x4 is
    Port ( inp : in  STD_LOGIC_VECTOR (1 downto 0);
           En : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal u : STD_LOGIC_VECTOR(1 downto 0);
signal l : STD_LOGIC_VECTOR(1 downto 0);
signal s: STD_LOGIC_VECTOR(3 downto 0);
signal y1 : STD_LOGIC_VECTOR(3 downto 0);
signal y2 : STD_LOGIC_VECTOR(3 downto 0);
signal y3 : STD_LOGIC_VECTOR(3 downto 0);
signal y4 : STD_LOGIC_VECTOR(3 downto 0);

begin
u <= inp(3 downto 2);
l <= inp(1 downto 0);
d0 : decoder2x4  port map
(
inp => u,
En => ena,
outp => s
);

d1 : decoder2x4  port map
(
inp => l,
En => s(0),
outp => y1
);

d2 : decoder2x4  port map
(
inp => l,
En => s(1),
outp => y2

);

d3 : decoder2x4  port map
(
inp => l,
En => s(2),
outp => y3

);

d4 : decoder2x4 port map
(
inp => l,
En => s(3),
outp => y4

);


process(inp, ena, y1, y2, y3, y4)



begin
if(ena = '0') then
	Outp <= "0000000000000000";
else
	Outp <= y4 & y3 & y2 & y1;
end if;
end process;



end Behavioral;

