----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:30 07/23/2014 
-- Design Name: 
-- Module Name:    Cordic_UAR_1 - Behavioral 
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
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;
USE work.cordic_package.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Cordic_UAR_1 is
    Port ( LED0: out STD_LOGIC;
			  LED1 : out STD_LOGIC;
			  LED2 : out STD_LOGIC;
			  LED3 : out STD_LOGIC;
			  LED4 : out STD_LOGIC;
			  LED5 : out STD_LOGIC;
           code : in  STD_LOGIC_VECTOR (2 downto 0);
           rst : in  STD_LOGIC;
           Start : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  next_s_out 	: out STD_LOGIC_VECTOR(1 downto 0);
			  current_s_out 	: out STD_LOGIC_VECTOR(1 downto 0);
			  done_unique : out STD_LOGIC;
           bit_out : out  STD_LOGIC
			   );
end Cordic_UAR_1;

architecture Behavioral of Cordic_UAR_1 is
component parallel_2_serial is
    Port ( 
		  x : in  STD_LOGIC_VECTOR (31 downto 0);
		  y : in  STD_LOGIC_VECTOR (31 downto 0);
		  z : in  STD_LOGIC_VECTOR (31 downto 0);
		  StartTx : in  STD_LOGIC;
		  sel : in  STD_LOGIC_VECTOR (2 downto 0);
		  clk : in  STD_LOGIC;
		  reset : in  STD_LOGIC;
			--outpus
		  bit_out1 : out  STD_LOGIC;
		  ns_send_data : out  send_data_state_type;
		  ps_send_data : out  send_data_state_type;
		  ns_ascii : out  ascii_state_type;
		  ps_ascii : out  ascii_state_type;
		  ns_uart : out  uart_state_type;
		  ps_uart : out  uart_state_type;
		  uart_ready, ascii_ready: out std_logic); 
		  
end component parallel_2_serial;

component SystemSchematic is
	port (
		 X_Input  : in    std_logic_vector (31 downto 0); 
		 Y_Input  : in    std_logic_vector (31 downto 0); 
		 Z_Input  : in    std_logic_vector (31 downto 0); 
		 Clock    : in    std_logic; 
		 Reset    : in    std_logic; 
		 Start    : in    std_logic; 
		 Code     : in    std_logic_vector (2 downto 0);
		 done		 : out	std_logic;
		 X_Output : out   std_logic_vector (31 downto 0); 
		 Y_Output : out   std_logic_vector (31 downto 0);
	    next_s 	: out STD_LOGIC_VECTOR(1 downto 0);
	    current_s 	: out STD_LOGIC_VECTOR(1 downto 0);		 
		 Z_Output : out   std_logic_vector (31 downto 0)
			);
		 
		 
end component SystemSchematic;

signal XLXN_1:	std_logic_vector(31 downto 0);
signal XLXN_2:	std_logic_vector(31 downto 0);
signal XLXN_3:	std_logic_vector(31 downto 0);
signal XLXN_4:	std_logic;
signal Sel : STD_LOGIC_VECTOR (2 downto 0) := "010";
signal done_signal : std_logic;
signal x_in : STD_LOGIC_VECTOR (31 downto 0);
signal y_in : STD_LOGIC_VECTOR (31 downto 0);
signal z_in : STD_LOGIC_VECTOR (31 downto 0);
--signal slow_clock_test: std_logic;
begin

--XLXN_4 <= done;




LED0 <= code(0);
LED1 <= code(1);
LED2 <= code(2);
LED3 <= Start;
LED4 <= rst;
LED5 <= done_signal;


XLXI_1 : SystemSchematic
	Port Map(Clock=>clk,
				 Code(2 downto 0)=>Code(2 downto 0),
				 Reset=>rst,
				 Start=>Start,
				 done=>done_signal,
				 X_Input(31 downto 0)=>X_In(31 downto 0),
				 Y_Input(31 downto 0)=>Y_In(31 downto 0),
				 Z_Input(31 downto 0)=>Z_In(31 downto 0),
				 X_Output(31 downto 0)=>XLXN_1(31 downto 0),
				 Y_Output(31 downto 0)=>XLXN_2(31 downto 0),
				 Z_Output(31 downto 0)=>XLXN_3(31 downto 0),
				 next_s(1 downto 0)=>next_s_out(1 downto 0),
				 current_s(1 downto 0)=>current_s_out(1 downto 0));

   XLXI_2 : parallel_2_serial
      port map (clk=>clk,
                StartTx=>done_signal,
                reset=>rst,
                sel(2 downto 0)=>Sel(2 downto 0),
                x(31 downto 0)=>XLXN_1(31 downto 0),
                y(31 downto 0)=>XLXN_2(31 downto 0),
                z(31 downto 0)=>XLXN_3(31 downto 0),
					 bit_out1=>bit_out );
					 
		x_in <= "00100110110111010011101101101010" when code = "000" else -- circrot mode
				  "00100110110111010011101101101010" when code = "100" else -- circvec mode
				  "00000111101110100101110011111010" when code = "001" else  --hyprot mode
				  "00111101110100101110011111010011" when code = "101" else  --hypvec mode
				  "00001100110011001100110011001101" when code = "010" else  --linrot mode
				  "00001100110011001100110011001101" when code = "110";  --linvec mode
				  
				  
		y_in <= "00000000000000000000000000000000" when code = "000" else -- circrot mode
				  "00100110110111010011101101101010" when code = "100" else -- circvec mode
		        "00001111011101001011100111110101" when code = "001" else  --hyprot mode
				  "00010111001011110001011011101111" when code = "101" else  --hypvec mode
				  "00000101000111101011100001010010" when code = "010" else  --linrot mode
				  "00000101000111101011100001010010" when code = "110";  --linvec mode
				  
		z_in <= "00100001100000101010010001110000" when code = "000" else  -- circrot mode
				  "00110010010000111111011010101001" when code = "100" else  -- circvec mode
				  "01000000000000000000000000000000" when code = "001" else  --hyprot mode
				  "00000000000000000000000000000000" when code = "101" else  --hypvec mode
				  "01100000000000000000000000000000" when code = "010" else  --linrot mode
				  "01000000000000000000000000000000" when code = "110";  --linvec mode
	
		
	

end Behavioral;

