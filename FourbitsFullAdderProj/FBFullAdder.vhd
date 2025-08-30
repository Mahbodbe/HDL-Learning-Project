----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:12:07 03/16/2025 
-- Design Name: 
-- Module Name:    FBFullAdder - Behavioral 
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

entity FBFullAdder is
    Port ( a_in_four_full : in  STD_LOGIC_VECTOR (3 downto 0);
           b_in_four_full : in  STD_LOGIC_VECTOR (3 downto 0);
           c_in_four_full : in  STD_LOGIC;
           c_out_four_full : out  STD_LOGIC;
           s_out_four_full : out  STD_LOGIC_VECTOR (3 downto 0));
end FBFullAdder;

architecture Behavioral of FBFullAdder is

component FullAdder is
    Port ( a_in_one_full : in  STD_LOGIC;
           b_in_one_full : in  STD_LOGIC;
           c_in_one_full : in  STD_LOGIC;
           c_out_one_full : out  STD_LOGIC;
           s_out_one_full : out  STD_LOGIC);
end component;

signal s1_f, s2_f, s3_f : STD_LOGIC;

begin

fa1 : FullAdder port map
(
a_in_one_full => a_in_four_full(0),
b_in_one_full => b_in_four_full(0),
c_in_one_full => c_in_four_full,
c_out_one_full => s1_f,
s_out_one_full => s_out_four_full(0)
);


fa2 : FullAdder port map
(
a_in_one_full => a_in_four_full(1),
b_in_one_full => b_in_four_full(1),
c_in_one_full => s1_f,
c_out_one_full => s2_f,
s_out_one_full => s_out_four_full(1)
);


fa3 : FullAdder port map
(
a_in_one_full => a_in_four_full(2),
b_in_one_full => b_in_four_full(2),
c_in_one_full => s2_f,
c_out_one_full => s3_f,
s_out_one_full => s_out_four_full(2)
);


fa4 : FullAdder port map
(
a_in_one_full => a_in_four_full(3),
b_in_one_full => b_in_four_full(3),
c_in_one_full => s3_f,
c_out_one_full => c_out_four_full,
s_out_one_full => s_out_four_full(3)
);

end Behavioral;

