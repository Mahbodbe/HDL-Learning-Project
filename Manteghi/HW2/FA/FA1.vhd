library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
    Port (
        ai : in  STD_LOGIC;
        bi : in  STD_LOGIC;
        ci : in  STD_LOGIC;
        co : out STD_LOGIC;
        so : out STD_LOGIC
    );
end FA;

architecture Behavioral of FA is
begin
    so <= ai xor bi xor ci;
    
    co <= (ai and bi) or (bi and ci) or (ai and ci);
end Behavioral;
