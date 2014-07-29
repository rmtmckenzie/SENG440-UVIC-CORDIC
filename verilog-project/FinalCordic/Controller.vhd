----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:53 07/15/2014 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
	

entity Controller is
	Port ( 	code 	: 	in STD_LOGIC_VECTOR (2 downto 0);
				start	: 	in STD_LOGIC;
				
				m		: out STD_LOGIC_VECTOR (1 downto 0);
				i		: out STD_LOGIC_VECTOR (4 downto 0);
				op		: out STD_LOGIC;
				
				input_en	: out	STD_LOGIC;
				output_en: out STD_LOGIC;
				
				next_s 	: out STD_LOGIC_VECTOR(1 downto 0);
				current_s 	: out STD_LOGIC_VECTOR(1 downto 0);
				
				done 	: out STD_LOGIC;
				
				rst	: 	in STD_LOGIC;
				clk 	: 	in STD_LOGIC
		);
end Controller;

architecture Behavioral of Controller is

signal next_state : STD_LOGIC_VECTOR (1 downto 0);
signal current_state : STD_LOGIC_VECTOR (1 downto 0);
signal mode : STD_LOGIC_VECTOR(1 downto 0);

signal counter : UNSIGNED(4 downto 0) := (others => '0');

begin
cs: process(clk, rst)
	variable four : STD_LOGIC := '1';
	variable thirteen : STD_LOGIC := '1';
	
	begin
		if rst = '1' then
			current_state <= "00";
		elsif rising_edge(clk) then
			current_state <= next_state;
			if current_state = "01" then
				if (counter = "00100" and four = '1' and mode = "01") then
					four := '0';
				elsif (counter = "01101" and thirteen = '1' and mode = "01") then
					thirteen := '0';
				else
					counter <= counter + 1;
				end if;
			elsif current_state = "10" then
				four := '1';
				thirteen := '1';
				if mode = "01" then
					counter <= "00001";
				else
					counter <= "00000";
				end if;
			end if;
		end if;
	next_s <= next_state;
	current_s <= current_state;
	end process cs;
			
nex: process(current_state, start, counter)
	begin
		if current_state = "00" then
			if start = '1' then
				m <= code(1 downto 0);
				mode <= code(1 downto 0);
				op <= code(2);
				input_en <= '1';
				done <= '0';
				next_state <= "01";
			else
				next_state <= "00";
				m <= "00";
				op <= '0';
				input_en <= '0';
				output_en <= '0';
				i <= "00000";
				done <= '0';
			end if;
			
		elsif current_state = "01" then
			input_en <= '0';
			i <= STD_LOGIC_VECTOR(counter);
			if counter = "11111" then
--				next_state <= "00";
				output_en <= '1';
				done <= '1';
				next_state <= "10";
			else
				next_state <= "01";
			end if;
		elsif current_state = "10" then
			if start ='0' then
				next_state <= "00";
			else
				next_state <= "10";
			end if;
--				done <= '1';
				output_en <= '0';
		end if;
		
		
		
end process nex;
				
				
end;