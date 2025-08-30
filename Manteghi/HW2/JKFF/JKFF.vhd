library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JKFF is
    Port (
        K, J   : in  STD_LOGIC;
        clk    : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        Ojk    : out STD_LOGIC
    );
end JKFF;

architecture Behavioral of JKFF is
    signal ou : STD_LOGIC;
begin

    process(clk, reset)
    begin
        if reset = '1' then
            ou <= '0';
        elsif rising_edge(clk) then
            ou <= (J and (not ou)) or ((not K) and ou);
        end if;
    end process;

    Ojk <= ou;

end Behavioral;
