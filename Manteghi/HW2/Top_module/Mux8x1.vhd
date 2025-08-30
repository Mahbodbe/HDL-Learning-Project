library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Mux8x1 is
    Port ( Am : in  STD_LOGIC_VECTOR (7 downto 0);
           Om : out  STD_LOGIC;
           Sm : in  STD_LOGIC_VECTOR (2 downto 0));
end Mux8x1;

architecture Behavioral of Mux8x1 is

begin

with Sm select
Om <= Am(0) when "000",
		Am(1) when "001",
		Am(2) when "010",
		Am(3) when "011",
		Am(4) when "100",
		Am(5) when "101",
		Am(6) when "110",
		Am(7) when "111",
		'0' when others;
		
		
end Behavioral;

