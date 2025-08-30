library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL;

entity Top_behav is Port ( 
			unlock, cunlock, reset, vcc_1, s_i : in  STD_LOGIC;
			clk, clk_d : in  STD_LOGIC; 
			y : out  STD_LOGIC ); 
			end Top_behav;

architecture Behavioral of Top_behav is

signal unlock_b, cunlock_b, reset_b, jclk, js, k, M1, M2, b1, DO : STD_LOGIC := '0';
signal q : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal x : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
signal O8 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal CA, CB : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal reset_u3, clk_u4, reset_u5 : STD_LOGIC := '0';
signal counter_q3 : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
signal counter_q16 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal jkff_out : STD_LOGIC := '0';
signal dff_q : STD_LOGIC := '0';
signal sipo16 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal sipo8 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal s : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

signal counter_q32 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal carry : STD_LOGIC;

begin 
unlock_b <= not unlock; 
cunlock_b <= not cunlock; 
reset_b <= not reset; 
reset_u3 <= unlock_b or reset_b; 
clk_u4 <= b1 and (not DO); 
reset_u5 <= reset_b or jclk;

process(clk)
begin
    if rising_edge(clk) then
        if reset_b = '1' then
            counter_q32 <= (others => '0');
        else
            counter_q32 <= std_logic_vector(unsigned(counter_q32) + 1);
        end if;
    end if;
end process;
q <= counter_q32;

s <= CA xnor CB;
jclk <= '1' when s = x"FFFF" else '0';

process(jclk, reset_u3)
begin
    if reset_u3 = '1' then
        jkff_out <= '0';
    elsif rising_edge(jclk) then
        jkff_out <= (js and not jkff_out);
    end if;
end process;
y <= jkff_out;

process(clk_u4)
begin
    if rising_edge(clk_u4) then
        if reset_b = '1' then
            counter_q3 <= (others => '0');
        else
            counter_q3 <= std_logic_vector(unsigned(counter_q3) + 1);
        end if;
    end if;
end process;
x <= counter_q3;

process(M1)
begin
    if rising_edge(M1) then
        if reset_u5 = '1' then
            counter_q16 <= (others => '0');
        else
            counter_q16 <= std_logic_vector(unsigned(counter_q16) + 1);
        end if;
    end if;
end process;
CA <= counter_q16;

process(q(11))
begin
    if rising_edge(q(11)) then
        if reset_b = '1' then
            dff_q <= '0';
        else
            dff_q <= b1;
        end if;
    end if;
end process;
DO <= dff_q;

js <= '1' when cunlock_b = '0' else '0';
M1 <= M2 when k = '0' else '0';

with x select
    M2 <= q(31) when "000",
          q(27) when "001",
          q(23) when "010",
          q(19) when "011",
          q(15) when "100",
          q(11) when "101",
          q(7)  when "110",
          q(3)  when "111",
          '0'   when others;

process(clk_d)
begin
    if rising_edge(clk_d) then
        if reset_b = '1' then
            sipo16 <= (others => '0');
        else
            sipo16 <= s_i & sipo16(15 downto 1);
        end if;
    end if;
end process;
CB <= sipo16;

process(q(11))
begin
    if rising_edge(q(11)) then
        if reset_b = '1' then
            sipo8 <= (others => '0');
        else
            sipo8 <= vcc_1 & sipo8(7 downto 1);
        end if;
    end if;
end process;
O8 <= sipo8;

b1 <= O8(0) and O8(1) and O8(2) and O8(3) and O8(4) and O8(5) and O8(6) and O8(7);
y <= k;

end Behavioral;