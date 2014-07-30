----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:01:01 07/30/2014 
-- Design Name: 
-- Module Name:    Spliter - Behavioral 
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

entity Spliter is
    Port ( Arm1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Arm2 : in  STD_LOGIC_VECTOR (31 downto 0);
           X : out  STD_LOGIC_VECTOR (15 downto 0);
           Y : out  STD_LOGIC_VECTOR (15 downto 0);
           Z : out  STD_LOGIC_VECTOR (15 downto 0);
           i : out  STD_LOGIC_VECTOR (15 downto 0));
end Spliter;

architecture Behavioral of Spliter is

begin

X <= Arm2(31 downto 16);
Y <= Arm2(15 downto 0);
i <= Arm1(31 downto 16);
Z <= Arm1(15 downto 0);


end Behavioral;

