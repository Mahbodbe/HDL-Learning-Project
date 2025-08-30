library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder is
    Port ( a_in_half : in  STD_LOGIC;
           b_in_half : in  STD_LOGIC;
           c_out_half : out  STD_LOGIC;
           s_out_half : out  STD_LOGIC);
end HalfAdder;

architecture Behavioral of HalfAdder is


begin

	s_out_half <= a_in_half xor b_in_half;
	c_out_half <= a_in_half and b_in_half;
	
end Behavioral;

