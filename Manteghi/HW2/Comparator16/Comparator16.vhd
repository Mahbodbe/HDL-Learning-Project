library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator16 is
    Port ( Ac, Bc : in  STD_LOGIC_VECTOR (15 downto 0);
           Oc : out  STD_LOGIC);
end Comparator16;

architecture Behavioral of Comparator16 is

signal s : STD_LOGIC_VECTOR(15 downto 0);

begin

s <= Ac xnor Bc;
Oc <= '1' when s = x"FFFF" else '0';

end Behavioral;

