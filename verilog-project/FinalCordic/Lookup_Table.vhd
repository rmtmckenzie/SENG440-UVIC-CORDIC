----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:51:56 07/15/2014 
-- Design Name: 
-- Module Name:    Lookup_Table - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;x	

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lookup_Table is
    Port ( i : in  STD_LOGIC_VECTOR (4 downto 0);
           m : in  STD_LOGIC_VECTOR (1 downto 0);
           theta : out  STD_LOGIC_VECTOR (31 downto 0));
end Lookup_Table;



architecture Behavioral of Lookup_Table is
type storage_array is array(31 downto 0) of STD_LOGIC_VECTOR(31 downto 0); --empty array


--creating storage tables for hyperbolic and circular tables
constant hyperbolic: storage_array := (

	0  => "00000000000000000000000000000000",
	1  => "00100011001001111101010011110101",
	2  => "00010000010110001010111011111011",
	3  => "00001000000010101100010010001110",
	4  => "00000100000000010101011000100011",
	5  => "00000010000000000010101010110001",
	6  => "00000001000000000000010101010110",
	7  => "00000000100000000000000010101011",
	8  => "00000000010000000000000000010101",
	9  => "00000000001000000000000000000011",
	10 => "00000000000100000000000000000000",
	11 => "00000000000010000000000000000000",
	12 => "00000000000001000000000000000000",
	13 => "00000000000000100000000000000000",
	14 => "00000000000000010000000000000000",
	15 => "00000000000000001000000000000000",
	16 => "00000000000000000100000000000000",
	17 => "00000000000000000010000000000000",
	18 => "00000000000000000001000000000000",
	19 => "00000000000000000000100000000000",
	20 => "00000000000000000000010000000000",
	21 => "00000000000000000000001000000000",
	22 => "00000000000000000000000100000000",
	23 => "00000000000000000000000010000000",
	24 => "00000000000000000000000001000000",
	25 => "00000000000000000000000000100000",
	26 => "00000000000000000000000000010000",
	27 => "00000000000000000000000000001000",
	28 => "00000000000000000000000000000100",
	29 => "00000000000000000000000000000010",
	30 => "00000000000000000000000000000001",
	31 => "00000000000000000000000000000001"
);

constant circular: storage_array := (
	0  => "00110010010000111111011010101001",
	1  => "00011101101011000110011100000101",
	2  => "00001111101011011011101011111101",
	3  => "00000111111101010110111010100111",
	4  => "00000011111111101010101101110111",
	5  => "00000001111111111101010101011100",
	6  => "00000000111111111111101010101011",
	7  => "00000000011111111111111101010101",
	8  => "00000000001111111111111111101011",
	9  => "00000000000111111111111111111101",
	10 => "00000000000100000000000000000000",
	11 => "00000000000010000000000000000000",
	12 => "00000000000001000000000000000000",
	13 => "00000000000000100000000000000000",
	14 => "00000000000000010000000000000000",
	15 => "00000000000000001000000000000000",
	16 => "00000000000000000100000000000000",
	17 => "00000000000000000010000000000000",
	18 => "00000000000000000001000000000000",
	19 => "00000000000000000000100000000000",
	20 => "00000000000000000000010000000000",
	21 => "00000000000000000000001000000000",
	22 => "00000000000000000000000100000000",
	23 => "00000000000000000000000010000000",
	24 => "00000000000000000000000001000000",
	25 => "00000000000000000000000000100000",
	26 => "00000000000000000000000000010000",
	27 => "00000000000000000000000000001000",
	28 => "00000000000000000000000000000100",
	29 => "00000000000000000000000000000010",
	30 => "00000000000000000000000000000001",
	31 => "00000000000000000000000000000001"
);

constant linear: storage_array := (
	0  => "01000000000000000000000000000000",
	1  => "00100000000000000000000000000000",
	2  => "00010000000000000000000000000000",
	3  => "00001000000000000000000000000000",
	4  => "00000100000000000000000000000000",
	5  => "00000010000000000000000000000000",
	6  => "00000001000000000000000000000000",
	7  => "00000000100000000000000000000000",
	8  => "00000000010000000000000000000000",
	9  => "00000000001000000000000000000000",
	10 => "00000000000100000000000000000000",
	11 => "00000000000010000000000000000000",
	12 => "00000000000001000000000000000000",
	13 => "00000000000000100000000000000000",
	14 => "00000000000000010000000000000000",
	15 => "00000000000000001000000000000000",
	16 => "00000000000000000100000000000000",
	17 => "00000000000000000010000000000000",
	18 => "00000000000000000001000000000000",
	19 => "00000000000000000000100000000000",
	20 => "00000000000000000000010000000000",
	21 => "00000000000000000000001000000000",
	22 => "00000000000000000000000100000000",
	23 => "00000000000000000000000010000000",
	24 => "00000000000000000000000001000000",
	25 => "00000000000000000000000000100000",
	26 => "00000000000000000000000000010000",
	27 => "00000000000000000000000000001000",
	28 => "00000000000000000000000000000100",
	29 => "00000000000000000000000000000010",
	30 => "00000000000000000000000000000001",
	31 => "00000000000000000000000000000000"
);

begin

--set output theta based on current iteration and selected mode
theta <= hyperbolic(conv_integer(i)) when (m = "01") else
			circular(conv_integer(i)) when (m = "00") else
			linear(conv_integer(i)) when (m = "10");

end Behavioral;