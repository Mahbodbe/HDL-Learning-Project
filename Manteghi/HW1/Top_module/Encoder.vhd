library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Encoder is
    Port ( Datai : in  STD_LOGIC_VECTOR (7 downto 0);
           Odd : in  STD_LOGIC;
           Datao : out  STD_LOGIC_VECTOR (12 downto 0));
end Encoder;

architecture Behavioral of Encoder is

signal s : STD_LOGIC_VECTOR ( 12 downto 0);
signal t : STD_LOGIC_VECTOR ( 3 downto 0);

begin


-- Datao assignments:
t(0) <= Datai(1) xor Datai(3) xor Datai(4) xor Datai(6) xor Datai(7) ;
Datao(12) <= t(0) xor Odd ;


t(1) <= Datai(1) xor Datai(2) xor Datai(4) xor Datai(5) xor Datai(7)  ;
Datao(11) <= t(1) xor Odd ;

Datao(10) <= Datai(7);

t(2) <= Datai(0) xor Datai(4) xor Datai(5) xor Datai(6) ;
Datao(9) <= t(2) xor Odd ;

Datao(8) <= Datai(6);
Datao(7) <= Datai(5);
Datao(6) <= Datai(4);

t(3) <= Datai(3) xor Datai(2) xor Datai(1) xor Datai(0) ;
Datao(5) <= t(3) xor Odd ;

Datao(4) <= Datai(3);
Datao(3) <= Datai(2);
Datao(2) <= Datai(1);
Datao(1) <= Datai(0);

-- Signal 's' assignments:

s(0) <= t(0) xor Odd ;

s(1) <= t(1) xor Odd ;

s(2) <= Datai(0);
s(3) <= t(2) xor Odd ;
s(4) <= Datai(1);
s(5) <= Datai(2);
s(6) <= Datai(3);
s(7) <= t(3) xor Odd ;
s(8) <= Datai(4);
s(9) <= Datai(5);
s(10) <= Datai(6);
s(11) <= Datai(7);

-- Final XOR for Datao(0):
s(12) <= s(0) xor s(1) xor s(2) xor s(3) xor s(4) xor s(5) xor s(6) xor s(7) xor s(8) xor s(9) xor s(10) xor s(11);

Datao(0) <= s(12) xor Odd;



end Behavioral;

