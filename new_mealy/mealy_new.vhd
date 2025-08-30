library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mealy_new is
    Port ( clk : in  STD_LOGIC;
           din : in  STD_LOGIC;
           dout : out  STD_LOGIC);
end mealy_new;

architecture Behavioral of mealy_new is

type state is (s0, s1, s2, s3);
signal pst, nst : state;

begin

process(clk)
begin

	if rising_edge(clk) then
		pst <= nst;
	end if;

end process;

process(din ,pst)
begin
	if pst = s0 then
		if din = '1' then
			nst <= s1;
			dout <= '0';
		else 
			nst <= s0;
			dout <= '0';
		end if;
		
	elsif pst = s1 then
		if din = '1' then
			nst <= s1;
			dout <= '0';
		else
			nst <= s2;
			dout <= '0';
		end if;
	elsif pst = s2 then
		if din = '1' then
			nst <= s1;
			dout <= '1';
		else
			nst <= s0;
			dout <= '0';
		end if;
	end if;
end process;


end Behavioral;

