library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator is
    Port ( Zi : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is
 signal compare : std_logic := '0';
begin
	-- 1 for subtract signal, 0 for add signal.
	Output <= '1' when (Zi(15) = '1') else
				 '0' when (Zi(15) = '0') else
				 'Z';

end Behavioral;

