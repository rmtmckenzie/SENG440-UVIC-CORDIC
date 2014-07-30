library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Combiner is
    Port ( X : in  STD_LOGIC_VECTOR (15 downto 0);
           Y : in  STD_LOGIC_VECTOR (15 downto 0);
           Arm_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end Combiner;

architecture Behavioral of Combiner is

begin

Arm_out <= X & Y;

end Behavioral;

