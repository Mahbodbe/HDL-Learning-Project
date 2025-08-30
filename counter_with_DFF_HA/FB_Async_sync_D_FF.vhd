library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FB_Async_sync_D_FF is
    Port ( D_FB : in  STD_LOGIC_VECTOR (3 downto 0);
           reset_fb : in  STD_LOGIC;
           set_fb : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q_FB : out  STD_LOGIC_VECTOR (3 downto 0));
end FB_Async_sync_D_FF;

architecture Behavioral of FB_Async_sync_D_FF is

component Async_sync_D_FF is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           set : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

begin

D_FF1 : Async_sync_D_FF port map
(
	D => D_FB(0),
	clk => clk,
	reset => reset_fb,
	set => set_fb,
	Q => Q_FB(0)
);

D_FF2 : Async_sync_D_FF port map
(
	D => D_FB(1),
	clk => clk,
	reset => reset_fb,
	set => set_fb,
	Q => Q_FB(1)
);

D_FF3 : Async_sync_D_FF port map
(
	D => D_FB(2),
	clk => clk,
	reset => reset_fb,
	set => set_fb,
	Q => Q_FB(2)
);

D_FF4 : Async_sync_D_FF port map
(
	D => D_FB(3),
	clk => clk,
	reset => reset_fb,
	set => set_fb,
	Q => Q_FB(3)
);

end Behavioral;

