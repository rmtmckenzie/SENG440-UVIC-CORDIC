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
use IEEE.NUMERIC_STD.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- X_AddSub:			
--			Used for X vector calculations ONLY
--       **  Y and Z vector calculations must be completed by AddSub **

--			a_in: 		operand
--			b_in: 		operand
--			m:				used to skip calculation when processor is in linear mode
--			sel:  		used to select between add and sub operations
--			val_out: 	result of calculation



entity X_AddSub is
    Port ( a_in : in  STD_LOGIC_VECTOR (31 downto 0);
			  b_in : in  STD_LOGIC_VECTOR (31 downto 0);
           val_out : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC;
			  m : in STD_LOGIC_VECTOR (1 downto 0));
end X_AddSub;

-- *** NOTE ON SIGNS: 1 is ADD, 0 is SUB *** --
-- ****  "sel" is computed in XOR file using m and u values

architecture Behavioral of X_AddSub is

begin
	val_out <=  a_in when m = "10" -- x does not change in linear mode
	else (a_in + b_in) when (sel = '1') 
	else (a_in - b_in);

end Behavioral;

