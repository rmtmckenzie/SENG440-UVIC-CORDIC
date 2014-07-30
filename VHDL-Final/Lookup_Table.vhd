library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lookup_Table is
    Port ( i : in  STD_LOGIC_VECTOR (15 downto 0);
           theta : out  STD_LOGIC_VECTOR (15 downto 0));
end Lookup_Table;

architecture Behavioral of Lookup_Table is

type storage_array is array(15 downto 0) of STD_LOGIC_VECTOR(15 downto 0); --empty array

constant circular: storage_array := (
    0 => "0110010010000111",
    1 => "0011101101011000",
    2 => "0001111101011010",
    3 => "0000111111101010",
    4 => "0000011111111100",
    5 => "0000001111111111",
    6 => "0000000111111111",
    7 => "0000000011111111",
    8 => "0000000001111111",
    9 => "0000000000111111",
    10 => "0000000000011111",
    11 => "0000000000001111",
    12 => "0000000000000111",
    13 => "0000000000000011",
    14 => "0000000000000001",
    15 => "0000000000000000"
);

begin

end Behavioral;

