library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Top_module is
    Port ( Data : in  STD_LOGIC_VECTOR (7 downto 0);
           Oddmode : in  STD_LOGIC;
           error : in  STD_LOGIC_VECTOR (12 downto 0);
           Valid : out  STD_LOGIC;
           Dataout : out  STD_LOGIC_VECTOR (7 downto 0));
end Top_module;

architecture Behavioral of Top_module is

--include component
component Encoder is
    Port ( Datai : in  STD_LOGIC_VECTOR (7 downto 0);
           Odd : in  STD_LOGIC;
           Datao : out  STD_LOGIC_VECTOR (12 downto 0));
end component;

component Decoder is
    Port ( Datad : in  STD_LOGIC_VECTOR (12 downto 0);
           Odd : in  STD_LOGIC;
           Datado : out  STD_LOGIC_VECTOR (7 downto 0);
           Valid : out STD_LOGIC );
end component;

signal res1 : STD_LOGIC_VECTOR ( 12 downto 0);
signal res2 : STD_LOGIC_VECTOR ( 12 downto 0);

begin
-- encoder component
En : Encoder port map
(
	Datai => Data,
	Odd => Oddmode,
	Datao => res1
);
-- decoder component
res2 <= res1 xor error;

De : Decoder port map
(
	Datad => res2,
	Odd => Oddmode,
	Datado => Dataout,
	Valid => Valid
);


end Behavioral;

