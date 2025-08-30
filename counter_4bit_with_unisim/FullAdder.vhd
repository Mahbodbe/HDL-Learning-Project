----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:37:10 03/16/2025 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port ( a_in_one_full : in  STD_LOGIC;
           b_in_one_full : in  STD_LOGIC;
           c_in_one_full : in  STD_LOGIC;
           c_out_one_full : out  STD_LOGIC;
           s_out_one_full : out  STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

component HalfAdder is
    Port ( a_in_half : in  STD_LOGIC;
           b_in_half : in  STD_LOGIC;
           c_out_half : out  STD_LOGIC;
           s_out_half : out  STD_LOGIC);
end component;

signal s1, s2, s3 : STD_LOGIC;

begin

halfadder1 : HalfAdder port map
(
	a_in_half => a_in_one_full,
	b_in_half => b_in_one_full,
	c_out_half => s1,
	s_out_half => s2
		
);
	
halfadder2 : HalfAdder port map
(
	a_in_half => s2,
	b_in_half => c_in_one_full,
	c_out_half => s3,
	s_out_half => s_out_one_full
);
	
c_out_one_full <= s1 or s3;

end Behavioral;

