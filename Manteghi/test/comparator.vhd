library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comprator is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC);
end comprator;

architecture Behavioral of comprator is
signal s : STD_LOGIC_VECTOR(3 downto 0);
begin

S <= A xnor B;

C <= S(0) and S(1) and S(2) and S(3);


end Behavioral;

