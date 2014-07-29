----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:46:03 07/15/2014 
-- Design Name: 
-- Module Name:    Comparator - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all; 

entity Comparator is
    Port ( Zi : in  STD_LOGIC_VECTOR (31 downto 0);
           Yi : in  STD_LOGIC_VECTOR (31 downto 0);
           OperationSelect : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is
 signal compare : std_logic := '0';
begin
	-- 1 for subtract signal, 0 for add signal.
	Output <= '0' when ( ((OperationSelect = '1') and (Yi(31) = '0')) or ((OperationSelect = '0') and (Zi(31) = '1')) ) else
				 '1' when ( ((OperationSelect = '1') and (Yi(31) = '1')) or ( (OperationSelect = '0') and (Zi(31) = '0')) ) else
				 'Z';

end Behavioral;

