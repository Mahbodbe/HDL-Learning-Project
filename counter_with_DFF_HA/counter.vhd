library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
    Port ( EN : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           set : in  STD_LOGIC;
           Q_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  t : out STD_LOGIC);
end counter;

architecture Behavioral of counter is


component FB_adder is
    Port ( V : in  STD_LOGIC_VECTOR (3 downto 0);
           EN : in  STD_LOGIC;
           RES : out  STD_LOGIC_VECTOR (3 downto 0);
           t : out STD_LOGIC);
end component;

component FB_Async_sync_D_FF is
    Port ( D_FB : in  STD_LOGIC_VECTOR (3 downto 0);
           reset_fb : in  STD_LOGIC;
           set_fb : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q_FB : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sa : STD_LOGIC_VECTOR(3 downto 0);

signal sd : STD_LOGIC_VECTOR(3 downto 0);

begin

adder : FB_adder port map
(
EN => EN,
RES => sa,
V => sd,
t => t
);


DFF : FB_Async_sync_D_FF port map
(
D_FB => sa,
Q_FB => sd,
reset_fb => reset,
set_fb => set,
clk => clk
);
Q_out <= sd;


end Behavioral;


