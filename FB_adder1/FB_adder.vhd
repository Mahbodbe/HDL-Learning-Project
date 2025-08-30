library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FB_adder is
    Port ( V : in  STD_LOGIC_VECTOR (3 downto 0);
           EN : in  STD_LOGIC;
           RES : out  STD_LOGIC_VECTOR (3 downto 0);
           t : out STD_LOGIC);
end FB_adder;architecture Behavioral of FB_ADDER is

component HalfAdder is
    Port ( a_in_half : in  STD_LOGIC;
           b_in_half : in  STD_LOGIC;
           c_out_half : out  STD_LOGIC;
           s_out_half : out  STD_LOGIC);
end component;

signal s1, s2, s3, s4 : STD_LOGIC;

begin

HA1 : HalfAdder port map
(
	a_in_half => EN,
	b_in_half => V(0),
	c_out_half => RES(0),
	s_out_half => s1
);

HA2 : HalfAdder port map
(
	a_in_half => s1,
	b_in_half => V(1),
	c_out_half => RES(1),
	s_out_half => s2
);

HA3 : HalfAdder port map
(
	a_in_half => s2,
	b_in_half => V(2),
	c_out_half => RES(2),
	s_out_half => s3
);


HA4 : HalfAdder port map
(
	a_in_half => s3,
	b_in_half => V(3),
	c_out_half => RES(3),
	s_out_half => s4
);

t <= s4;


end Behavioral;

