----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:26 07/14/2014 
-- Design Name: 
-- Module Name:    AddSub - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- AddSub:			
--			Used for Y and Z vector calculations ONLY
--       ** X vector calculations must be completed by X_AddSub **

--			a_in: 		operand
--			b_in: 		operand
--			sel:  		used to select between add and sub operations
--			val_out: 	result of calculation

entity AddSub is
    Port ( a_in : in  STD_LOGIC_VECTOR (31 downto 0);
			  b_in : in  STD_LOGIC_VECTOR (31 downto 0);
           val_out : out  STD_LOGIC_VECTOR (31 downto 0);
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

