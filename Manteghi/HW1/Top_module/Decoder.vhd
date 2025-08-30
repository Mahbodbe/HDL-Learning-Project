library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Decoder is
    Port ( Datad : in  STD_LOGIC_VECTOR (12 downto 0);
           Odd : in  STD_LOGIC;
           Datado : out  STD_LOGIC_VECTOR (7 downto 0);
           Valid : out STD_LOGIC );
end Decoder;

architecture Behavioral of Decoder is

signal temp : STD_LOGIC_VECTOR (12 downto 0);
signal Pnzero : STD_LOGIC;
signal C : STD_LOGIC_VECTOR (3 downto 0);
signal Cnzero : STD_LOGIC;
signal t : STD_LOGIC_VECTOR(12 downto 0);

begin

--check bits
C(0) <= Datad(2) xor Datad(4) xor Datad(6) xor Datad(8) xor Datad(10) xor Datad(12) xor Odd;
C(1) <= Datad(2) xor Datad(3) xor Datad(6) xor Datad(7) xor Datad(10) xor Datad(11) xor Odd;
C(2) <= Datad(1) xor Datad(6) xor Datad(7) xor Datad(8) xor Datad(9) xor Odd;
C(3) <= Datad(1) xor Datad(2) xor Datad(3) xor Datad(4) xor Datad(5) xor Odd;

Pnzero <= Datad(0) xor Datad(1) xor Datad(2) xor Datad(3)  xor Datad(5) xor Datad(6) xor Datad(7) xor Datad(8) xor Datad(9) xor Datad(10) xor Datad(11) xor Datad(12) xor Odd;

Cnzero <= C(0) or C(1) or C(2) or C(3);

Valid <= not (Cnzero and not Pnzero);

t(12) <= (not C(3)) and (not C(2)) and (not C(1)) and  C(0); -- C = "0001"
t(11) <= (not C(3)) and (not C(2)) and (not C(1)) and  (not C(0));   -- C = "0010"
t(10) <= (not C(3)) and (not C(2)) and C(1) and C(0); -- C = "0011"
t(9) <= (not C(3)) and C(2) and  (not C(1)) and (not C(0));
t(8) <= (not C(3)) and C(2)and (not C(1)) and C(0);
t(7) <= (not C(3)) and  C(2)  and C(1) and (not C(0));
t(6) <= (not C(3)) and C(2) and C(1) and C(0);
t(5) <= C(3) and  (not C(2)) and (not C(1)) and (not C(0));
t(4) <= C(3) and (not C(2)) and (not C(1)) and C(0);
t(3) <= C(3) and (not C(2)) and (not C(1)) and  (not C(0));
t(2)<= C(3) and (not C(2)) and C(1) and C(0);
t(1)<= C(3) and  C(2) and (not C(1)) and (not C(0));
t(0)<= C(3) and C(2) and (not C(1)) and  C(0);

temp <= Datad xor t; -- if t(n) = 0 => temp(n) = Datad(n) else temp(n) = toggle(Datad(n))
--out
Datado(7) <= temp(10);
Datado(6) <= temp(8);
Datado(5) <= temp(7);
Datado(4) <= temp(6);
Datado(3) <= temp(4);
Datado(2) <= temp(3);
Datado(1) <= temp(2);
Datado(0) <= temp(1);

end Behavioral;
