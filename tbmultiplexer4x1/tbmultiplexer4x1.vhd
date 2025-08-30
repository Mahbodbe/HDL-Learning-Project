library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tbmultiplexer4x1 is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           b : in  STD_LOGIC_VECTOR (1 downto 0);
           c : in  STD_LOGIC_VECTOR (1 downto 0);
           d : in  STD_LOGIC_VECTOR (1 downto 0);
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           f : out  STD_LOGIC_VECTOR (1 downto 0));
end tbmultiplexer4x1;

architecture Behavioral of tbmultiplexer4x1 is

component multiplexer4x1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           f : out  STD_LOGIC);
end component;

begin

m1 : multiplexer4x1 port map
(
a => a(0),
b => b(0),
c => c(0),
d => d(0),
s0 => s0,
s1 => s1,
f => f(0)
);

m2 : multiplexer4x1 port map
(
a => a(1),
b => b(1),
c => c(1),
d => d(1),
s0 => s0,
s1 => s1,
f => f(1)
);



end Behavioral;

