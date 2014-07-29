-- Vhdl test bench created from schematic C:\Users\jdparry\Documents\FinalCordic\FinalCordic\ALU.sch - Tue Jul 15 15:06:37 2014
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY ALU_ALU_sch_tb IS
END ALU_ALU_sch_tb;
ARCHITECTURE behavioral OF ALU_ALU_sch_tb IS 

   COMPONENT ALU
   PORT( Y	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          m	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          Z	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Theta	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Z_out	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          X_out	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Y_out	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          X	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          u	:	IN	STD_LOGIC; 
          i	:	IN	STD_LOGIC_VECTOR (4 DOWNTO 0));
   END COMPONENT;

   SIGNAL Y	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL m	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL Z	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Theta	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Z_out	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL X_out	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Y_out	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL X	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL u	:	STD_LOGIC;
   SIGNAL i	:	STD_LOGIC_VECTOR (4 DOWNTO 0);

BEGIN

   UUT: ALU PORT MAP(
		Y => Y, 
		m => m, 
		Z => Z, 
		Theta => Theta, 
		Z_out => Z_out, 
		X_out => X_out, 
		Y_out => Y_out, 
		X => X, 
		u => u, 
		i => i
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	
	-- circrot
	WAIT FOR 10 ns;
     Y <= "00000000000000000000000000000000";
	  X <= "00100110110111010011101101101010";
	  Z <= "00100001100000101010010001110000";
	  Theta <= "00110010010000111111011010101001";
	  i <= "00000";
	  u <= '1';
	  m <= "00";
	  wait for 100 ns;
	  

	  --linrot
	  Y <= "00000101000111101011100001010010";
	  X <= "00001100110011001100110011001101";
	  Z <= "01100000000000000000000000000000";
	  Theta <= "01000000000000000000000000000000";
	  i <= "00000";
	  u <= '1';
	  m <= "10";
	  wait for 100 ns;
	  
	  
	  --hyprot
	  Y <= "00001111011101001011100111110101";
	  X <= "00000111101110100101110011111010";
	  Z <= "01000000000000000000000000000000";
	  Theta <= "00100011001001111101010011110101";
	  i <= "00001";
	  u <= '1';
	  m <= "01";
	  wait for 100 ns;
	  
	  --circvec
	  Y <= "00100110110111010011101101101010";
	  X <= "00100110110111010011101101101010";
	  Z <= "00110010010000111111011010101001";
	  Theta <= "00110010010000111111011010101001";
	  i <= "00000";
	  u <= '0';
	  m <= "00";
	  
	  --linvec
	  Y <= "00000101000111101011100001010010";
	  X <= "00001100110011001100110011001101";
	  Z <= "01000000000000000000000000000000";
	  Theta <= "01000000000000000000000000000000";
	  i <= "00000";
	  u <= '0';
	  m <= "10";
	  wait for 100 ns;
	  
	  --hyprot
	  Y <= "00010111001011110001011011101111";
	  X <= "00111101110100101110011111010011";
	  Z <= "00000000000000000000000000000000";
	  Theta <= "00100011001001111101010011110101";
	  i <= "00001";
	  u <= '0';
	  m <= "01";
	  wait for 100 ns;

		wait;
	  
	  
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
