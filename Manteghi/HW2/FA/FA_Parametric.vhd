library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_Parametric is
    generic (
        num : integer := 32
    );
    Port (
        a : in  STD_LOGIC_VECTOR(num - 1 downto 0);
        b : in  STD_LOGIC_VECTOR(num - 1 downto 0);
        s : out STD_LOGIC_VECTOR(num - 1 downto 0);
        c : out STD_LOGIC
    );
end FA_Parametric;

architecture Behavioral of FA_Parametric is
    component FA is
        Port (
            ai : in  STD_LOGIC;
            bi : in  STD_LOGIC;
            ci : in  STD_LOGIC;
            co : out STD_LOGIC;
            so : out STD_LOGIC
        );
    end component;

    signal sig: std_logic_vector(num downto 0);
begin
    sig(0) <= '0';  

    u1: for i in 0 to num - 1 generate
    begin
        u: FA port map (
            ai => a(i),
            bi => b(i),
            ci => sig(i),
            co => sig(i+1),
            so => s(i)
        );
    end generate;

    c <= sig(num); 
end Behavioral;
