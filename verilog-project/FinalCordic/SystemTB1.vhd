-- Vhdl test bench created from schematic C:\Users\kloftis\Downloads\FinalCordic 2014-07-16\FinalCordic\SystemSchematic.sch - Thu Jul 17 14:52:26 2014
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
ENTITY SystemSchematic_SystemSchematic_sch_tb IS
END SystemSchematic_SystemSchematic_sch_tb;
ARCHITECTURE behavioral OF SystemSchematic_SystemSchematic_sch_tb IS 

   COMPONENT SystemSchematic
   PORT( X_Input	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Y_Input	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Z_Input	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Clock	:	IN	STD_LOGIC; 
          Reset	:	IN	STD_LOGIC; 
          Start	:	IN	STD_LOGIC; 
          Code	:	IN	STD_LOGIC_VECTOR (2 DOWNTO 0); 

          X_Output	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Y_Output	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Z_Output	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0));
   END COMPONENT;

   SIGNAL X_Input	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Y_Input	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Z_Input	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Clock	:	STD_LOGIC;
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL Start	:	STD_LOGIC;
   SIGNAL Code	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL X_Output	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Y_Output	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Z_Output	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   constant clk_period : time := 10 ns;

BEGIN

   UUT: SystemSchematic PORT MAP(
		X_Input => X_Input, 
		Y_Input => Y_Input, 
		Z_Input => Z_Input, 
		Clock => Clock, 
		Reset => Reset, 
		Start => Start, 
		Code => Code, 

		X_Output => X_Output, 
		Y_Output => Y_Output, 
		Z_Output => Z_Output
   );
	
	
	   clk_process :process
   begin
		Clock <= '0';
		wait for clk_period/2;
		Clock <= '1';
		wait for clk_period/2;
   end process;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT for clk_period;
		
		Reset <= '1';
		
      WAIT for clk_period;
		
		Reset <= '0';
      
		WAIT for clk_period;

		
		
				

		
		--circrot
		Y_Input <= "00000000000000000000000000000000";
		X_Input <= "00100110110111010011101101101010";
		Z_Input <= "00100001100000101010010001110000";
		Code <= "000";
		Start <= '1';
      WAIT for clk_period;
		Start <= '0';
		WAIT for clk_period*34;
		
		--hyprot
		Y_Input <= "00001111011101001011100111110101";
		X_Input <= "00000111101110100101110011111010";
		Z_Input <= "01000000000000000000000000000000";
		Code <= "001";
		Start <= '1';
      WAIT for clk_period;
		Start <= '0';
		WAIT for clk_period*34;
		
		--linrot
		Y_Input <= "00000101000111101011100001010010";
		X_Input <= "00001100110011001100110011001101";
		Z_Input <= "01100000000000000000000000000000";
		Code <= "010";
		Start <= '1';
      WAIT for clk_period;
		Start <= '0';
		WAIT for clk_period*34;
		
		--circvec
		Y_Input <= "00100110110111010011101101101010";
		X_Input <= "00100110110111010011101101101010";
		Z_Input <= "00110010010000111111011010101001";
		Code <= "100";
		Start <= '1';
      WAIT for clk_period;
		Start <= '0';
		WAIT for clk_period*34;
		
		--hypvec
		Y_Input <= "00010111001011110001011011101111";
		X_Input <= "00111101110100101110011111010011";
		Z_Input <= "00000000000000000000000000000000";
		Code <= "101";
		Start <= '1';
      WAIT for clk_period;
		Start <= '0';
		WAIT for clk_period*34;
		
		--linvec
		Y_Input <= "00000101000111101011100001010010";
		X_Input <= "00001100110011001100110011001101";
		Z_Input <= "01000000000000000000000000000000";
		Code <= "110";
		Start <= '1';
      WAIT for clk_period;
		Start <= '0';
		WAIT for clk_period*34;
		
		      WAIT for clk_period;
		

		
		Reset <= '1';
		
      WAIT for clk_period;
		
		Reset <= '0';
      
		WAIT for clk_period;

		
		WAIT;
		End Process;

END;
