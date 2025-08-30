library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity counter is
	generic
	(
	   num :integer:=32
	);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Outc : out  STD_LOGIC_VECTOR (num -1 downto 0));
end counter;

architecture Behavioral of counter is
component FA_Parametric is
    generic (
        num : integer := 32
    );
    Port (
        a : in  STD_LOGIC_VECTOR(num - 1 downto 0);
        b : in  STD_LOGIC_VECTOR(num - 1 downto 0);
        s : out STD_LOGIC_VECTOR(num - 1 downto 0);
        c : out STD_LOGIC
    );
end component;

signal s1,s2:std_logic_VECTOR (num-1 downto 0);
signal s3:std_logic_VECTOR (num-1 downto 0);
signal s4:std_logic_VECTOR (num-2 downto 0);
signal s : STD_LOGIC;

begin

s4<= (others=>'0');
s3<= s4 & '1';

u1: FA_Parametric generic map
(
num=>num
)
 port map
(
	a=>s1,
	b=>s3,
	s=>s2,
	c=>open
);
s <= '0';
u2: for i in  0 to num-1 generate
   FDRSE_inst : FDRSE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => s1(i),      -- Data output
      C => clk,      -- Clock input
      CE => '1',    -- Clock enable input
      D => s2(i),      -- Data input
      R => reset,      -- Synchronous reset input
      S => s     -- Synchronous set input
   );
 
Outc <=s1;	
end generate;


end Behavioral;

