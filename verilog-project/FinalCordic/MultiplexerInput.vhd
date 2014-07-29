----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:55:11 07/15/2014 
-- Design Name: 
-- Module Name:    MultiplexerInput - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MultiplexerInput is
    Port ( external_x_in : in  STD_LOGIC_VECTOR (31 downto 0);
           external_y_in : in  STD_LOGIC_VECTOR (31 downto 0);
           external_z_in : in  STD_LOGIC_VECTOR (31 downto 0);
           internal_x_in : in  STD_LOGIC_VECTOR (31 downto 0);
           internal_y_in : in  STD_LOGIC_VECTOR (31 downto 0);
           internal_z_in : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC;
           x_out : out  STD_LOGIC_VECTOR (31 downto 0);
           y_out : out  STD_LOGIC_VECTOR (31 downto 0);
           z_out : out  STD_LOGIC_VECTOR (31 downto 0));
end MultiplexerInput;

architecture Behavioral of MultiplexerInput is

begin

	x_out <= external_x_in when (sel = '1') else
				internal_x_in when (sel = '0');
				
	y_out <= external_y_in when (sel = '1') else
				internal_y_in when (sel = '0');
				
	z_out <= external_z_in when (sel = '1') else
				internal_z_in when (sel = '0');
	
	
end Behavioral;
