----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:12 07/14/2014 
-- Design Name: 
-- Module Name:    Shifter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Shifter:

--		input:		vector to be shifted
--		i:				number of positions to shift vector
--		output:		resultant

entity Shifter is
    Port ( val_in : in  STD_LOGIC_VECTOR (31 downto 0);
			  i : in  STD_LOGIC_VECTOR (4 downto 0);
           val_out : out  STD_LOGIC_VECTOR (31 downto 0));
end Shifter;

architecture Behavioral of Shifter is

begin
	val_out <= to_stdlogicvector(to_bitvector(val_in) sra to_integer(unsigned(i)));

end Behavioral;

