library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity devider_15 is
    Port ( clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end devider_15;

architecture Behavioral of devider_15 is


component FBFullAdder is
    Port ( a_in_four_full : in  STD_LOGIC_VECTOR (3 downto 0);
           b_in_four_full : in  STD_LOGIC_VECTOR (3 downto 0);
           c_in_four_full : in  STD_LOGIC;
           c_out_four_full : out  STD_LOGIC;
           s_out_four_full : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal s1: std_logic_vector(3 downto 0);
signal s2 : std_logic_vector( 3 downto 0);
signal rst: std_logic;
signal s3, s4 : std_logic;
begin


u1: FBFullAdder port map
(
	a_in_four_full => s1,
	b_in_four_full => "0001",
	s_out_four_full => s2,
	c_out_four_full => open,
	c_in_four_full => '0'
);

rst <= s1(0) and s1(1) and  s1(2) and s1(3);

  
u2 : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => s1(0),      -- Data output
      C => clk,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => rst,  -- Asynchronous clear input
      D => s2(0)       -- Data input
   );
	

  
u3 : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => s1(1),      -- Data output
      C => clk,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => rst,  -- Asynchronous clear input
      D => s2(1)       -- Data input
   );
	
  
u4 : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => s1(2),      -- Data output
      C => clk,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => rst,  -- Asynchronous clear input
      D => s2(2)       -- Data input
   );
	
  
u5 : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => s1(3),      -- Data output
      C => clk,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => rst,  -- Asynchronous clear input
      D => s2(3)       -- Data input
   );
	
s4 <= not s3;

u6 : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => s3,      -- Data output
      C => rst,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => '0',  -- Asynchronous clear input
      D => s4       -- Data input
   );
	

q <= s3;



end Behavioral;

