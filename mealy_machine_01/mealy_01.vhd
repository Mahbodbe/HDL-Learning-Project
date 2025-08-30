library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--library UNISIM;
--use UNISIM.VComponents.all;

entity mealy_01 is
    Port ( din : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dout : out  STD_LOGIC);
end mealy_01;

architecture Behavioral of mealy_01 is

type state is(st0, st1);
signal present_state, next_state : state;

begin

process(clk)
begin
	if(rising_Edge(clk)) then 
		if(rst = '1') then
			present_state <= st0;
		else
			present_state <= next_state;
		end if;
	end if;
	
end process;

process(present_state, din)
begin 
	next_state <= st0;
	case(present_state) is
		when st0 =>
			if(din = '0') then 
				next_state <= st1;
			else
				next_state <= st0;
			end if;
		when st1 =>
			if(din = '1') then 
				next_state <= st0;
			else
				next_state <= st1;
			end if;
		when others =>
			next_state <= st0;
	end case;	

end process;

process(present_state, din)
begin
	case(present_state) is
		when st1 =>
			if(din = '1') then
				dout <= '1';
			else
				dout <= '0';
			end if;
		when others =>
			dout <= '0';
	end case;
end process;





end Behavioral;

