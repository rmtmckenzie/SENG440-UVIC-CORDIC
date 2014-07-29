----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:44 07/15/2014 
-- Design Name: 
-- Module Name:    RegisterBank - Behavioral 
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

entity RegisterBank is
    Port ( 
				x_in : in  STD_LOGIC_VECTOR (31 downto 0);
				y_in : in  STD_LOGIC_VECTOR (31 downto 0);
				z_in : in  STD_LOGIC_VECTOR (31 downto 0);
				clk : in  STD_LOGIC;
				x_out : out  STD_LOGIC_VECTOR (31 downto 0);
				y_out : out  STD_LOGIC_VECTOR (31 downto 0);
				z_out : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterBank;

architecture Behavioral of RegisterBank is

	-- one register for each value of x, y, and z
	type register_bank is array (integer range 0 to 2) of std_logic_vector(31 downto 0);
	
	signal bank: register_bank;
begin




writeProcess:
process(clk ) is
begin
	
	if(clk='1' and clk'event) then
		bank(0) <= x_in;
		bank(1) <= y_in;
		bank(2) <= z_in;
		
	end if;
end process;

		x_out <= bank(0);
		y_out <= bank(1);
		z_out <= bank(2);

end Behavioral;

