library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Fifo is
    Port ( din : in  STD_LOGIC_VECTOR (7 downto 0);
           dout : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           rd_en : in  STD_LOGIC;
           wr_en : in  STD_LOGIC;
           full : out  STD_LOGIC;
           empty : out  STD_LOGIC;
           almost_full : out  STD_LOGIC;
           almost_empty : out  STD_LOGIC;
           data_count : out  STD_LOGIC_VECTOR (3 downto 0));
end Fifo;

architecture Behavioral of Fifo is

type mem_type is array(0 to 7) of std_logic_vector( 7 downto 0);
signal memory:mem_type;

signal count : integer range 0 to 8:=0;
signal rd_index : integer range 0 to 7:=0;
signal wr_index : integer range 0 to 7:=0;


begin
data_count <= conv_std_logic_vector(count, 4);

process(clk)

	begin
	if(rising_edge(clk)) then
		if(wr_en='1') then
			if(count < 8)then
				memory(wr_index)<= din;
				wr_index <= wr_index + 1;
				if(wr_index=7) then 
					wr_index <= 0;
				end if;
				count <= count + 1;
			end if;
		end if;
		
		if(rd_en='1') then
			if(count < 7) then
				dout <= memory(rd_index);
				rd_index <= rd_index +1;
				if(rd_index=7) then 
					rd_index<=0;
				end if;
				count <= count - 1;
			end if;
		end if;
	end if;
end process;

process(clk)
	begin
	if(rising_edge(clk)) then
		if(count >= 7) then 
			full <='1';
		else
			full <= '0';
		end if;
		
		if(count = 0) then
			empty <= '1';
		else 
			empty <= '0';
		end if;
		
		if(count >= 6) then 
			almost_full <='1';
		else
			almost_full <= '0';
		end if;
		
		if(count < 2) then
			almost_empty <= '1';
		else 
			almost_empty <= '0';
		end if;	
		
	end if;	

end process;

end Behavioral;

