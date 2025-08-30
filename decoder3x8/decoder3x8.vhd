library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder3x8 is
    Port ( inp : in  STD_LOGIC_VECTOR (2 downto 0);
           otp : out  STD_LOGIC_VECTOR (7 downto 0);
           en : in  STD_LOGIC);
end decoder3x8;

architecture Behavioral of decoder3x8 is

begin

process(inp, en)
begin
if(en='0') then
	otp <= "00000000";
else
case inp is
when "000" =>
	otp <= "00000001";
when "001" =>
	otp <= "00000010";
when "010" =>
	otp <= "00000100";
when "011" =>
	otp <= "00001000";
when "100" =>
	otp <= "00010000";
when "101" =>
	otp <= "00100000";
when "110" =>
	otp <= "01000000";
when "111" =>
	otp <= "10000000";
when others =>
		otp <= "00000000";
end case;
end if;
end process;

end Behavioral;

