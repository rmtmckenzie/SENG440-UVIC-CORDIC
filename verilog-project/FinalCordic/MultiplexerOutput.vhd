----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:08:10 07/15/2014 
-- Design Name: 
-- Module Name:    MultiplexerOutput - Behavioral 
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

entity MultiplexerOutput is
    Port ( external_x_out : out  STD_LOGIC_VECTOR (31 downto 0);
           external_y_out : out  STD_LOGIC_VECTOR (31 downto 0);
           external_z_out : out  STD_LOGIC_VECTOR (31 downto 0);
           internal_x_out : out  STD_LOGIC_VECTOR (31 downto 0);
           internal_y_out : out  STD_LOGIC_VECTOR (31 downto 0);
           internal_z_out : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC;
           x_in : in  STD_LOGIC_VECTOR (31 downto 0);
           y_in : in  STD_LOGIC_VECTOR (31 downto 0);
           z_in : in  STD_LOGIC_VECTOR (31 downto 0));
end MultiplexerOutput;

architecture Behavioral of MultiplexerOutput is

begin

	external_x_out <= x_in when (sel = '1');
	external_y_out <= y_in when (sel = '1');
	external_z_out <= z_in when (sel = '1');
	
	internal_x_out <= x_in;
	internal_y_out <= y_in;
	internal_z_out <= z_in;


end Behavioral;
