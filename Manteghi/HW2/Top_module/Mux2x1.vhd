library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2x1 is
    Port ( Am2 : in  STD_LOGIC_VECTOR (1 downto 0);
           Om2 : out  STD_LOGIC;
           Sm2 : in  STD_LOGIC);
end Mux2x1;

architecture Behavioral of Mux2x1 is

begin

with Sm2 select
Om2 <= Am2(0) when '0',
		 Am2(1) when '1',
		 '0' when others;
end Behavioral;

