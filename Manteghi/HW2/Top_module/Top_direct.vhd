library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_direct is
    Port ( unlock, cunlock, reset, vcc_1, s_i : in  STD_LOGIC;
           clk, clk_d : in  STD_LOGIC;
           y : out  STD_LOGIC);
end Top_direct;

architecture Behavioral of Top_direct is

signal unlock_b, cunlock_b, reset_b, jclk, js, k, M1, M2, b1, DO : STD_LOGIC;
signal q : STD_LOGIC_VECTOR(31 downto 0);
signal x : STD_LOGIC_VECTOR(2 downto 0);
signal O8 : STD_LOGIC_VECTOR(7 downto 0);
signal CA, CB : STD_LOGIC_VECTOR(15 downto 0);
signal reset_u3, clk_u4, reset_u5 : STD_LOGIC;

begin

unlock_b <= not unlock;
cunlock_b <= not cunlock;
reset_b <= not reset; 
reset_u3 <= unlock_b or reset_b;
clk_u4 <= b1 and (not DO);
reset_u5 <= reset_b or jclk;

u1: entity work.counter
    generic map ( num => 32)
    port map (clk => clk, reset => reset_b, Outc => q);

u2: entity work.Comparator16
    port map (Ac => CA, Bc => CB, Oc => jclk);

u3: entity work.JKFF
    port map (K => '1', J => js, clk => jclk, Ojk => k, reset => reset_u3);

u4: entity work.counter
    generic map (num => 3)
    port map (clk => clk_u4, reset => reset_b, Outc => x);

u5: entity work.counter
    generic map (num => 16)
    port map (clk => M1, reset => reset_u5, Outc => CA);

u6: entity work.Sync_D_FlipFlop
    port map (D => b1, Q => DO, reset => reset_b, clk => q(11));

u7: entity work.Mux2x1
    port map (Am2(0) => '1', Am2(1) => '0', Sm2 => cunlock_b, Om2 => js);

u8: entity work.Mux2x1
    port map (Am2(0) => M2, Am2(1) => '0', Sm2 => k, Om2 => M1);

u9: entity work.Mux8x1
    port map (
        Am(0) => q(31), Am(1) => q(27), Am(2) => q(23), Am(3) => q(19),
        Am(4) => q(15), Am(5) => q(11), Am(6) => q(7), Am(7) => q(3),
        Om => M2, Sm => x
    );

u10: entity work.SIPO_parametric
    generic map (number => 16)
    port map (si => s_i, clk => clk_d, res => reset_b, Osipo => CB);

u11: entity work.SIPO_parametric
    generic map (number => 8)
    port map (si => vcc_1, clk => q(11), res => reset_b, Osipo => O8);

b1 <= O8(0) and O8(1) and O8(2) and O8(3) and O8(4) and O8(5) and O8(6) and O8(7);
y <= k;

end Behavioral;