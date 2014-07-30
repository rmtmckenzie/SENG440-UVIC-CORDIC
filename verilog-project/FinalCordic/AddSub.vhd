library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- AddSub:			
--			Used for Y and Z vector calculations ONLY
--       ** X vector calculations must be completed by X_AddSub **

--			a_in: 		operand
--			b_in: 		operand
--			sel:  		used to select between add and sub operations
--			val_out: 	result of calculation

entity AddSub is
    Port ( a_in : in  STD_LOGIC_VECTOR (15 downto 0);
			  b_in : in  STD_LOGIC_VECTOR (15 downto 0);
           val_out : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC);
end AddSub;

architecture Behavioral of AddSub is

--  NOTE ON SIGNS:
--				0 is NEGATIVE = SUBTRACT
--				1 is POSITIVE = ADD
begin
	val_out <= (a_in + b_in) when sel = '1' else
				  (a_in - b_in);

end Behavioral;

