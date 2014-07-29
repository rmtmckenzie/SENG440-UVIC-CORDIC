----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:19 07/14/2014 
-- Design Name: 
-- Module Name:    XOR - Behavioral 
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







-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- I think we should rename this file ~J
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!





-- XOR:
--
--		Determines whether X vector operation should use an addition or subtraction based on the
--		values of mu and m provided by the controller

--		u: 		used to manipulate sign of x value
--		m_in:		indicates processor mode - also used to manipulate sign of x value
--		sel:		resultant sign (1 is positive, 0 is negative)


entity Neg is
    Port ( u : in  STD_LOGIC;
           m_in : in  STD_LOGIC_VECTOR (1 downto 0);
           sel : out  STD_LOGIC);
end Neg;

architecture Behavioral of Neg is

	signal m : STD_LOGIC;

begin

 -- **** 0 is NEGATIVE ****
 -- **** 1 is POSITIVE ****
 
 -- TRUTH TABLE:  
 
 --   u |  m  ||  sel
 --  ---|------------
 --   0 |  0  ||  1
 --   0 |  1  ||  0
 --   1 |  0  ||  0
 --   1 |  1  ||  1
 
 
	m <= m_in(0);
	sel <= u xnor m;

end Behavioral;

