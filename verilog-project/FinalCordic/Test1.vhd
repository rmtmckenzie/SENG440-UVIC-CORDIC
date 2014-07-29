-- Vhdl test bench created from schematic C:\Users\jdparry\Downloads\FinalCordic w UART1\FinalCordic\Schematic.sch - Wed Jul 23 13:21:45 2014
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
ENTITY Schematic_Schematic_sch_tb IS
END Schematic_Schematic_sch_tb;
ARCHITECTURE behavioral OF Schematic_Schematic_sch_tb IS 

   COMPONENT Schematic
   PORT( rst	:	IN	STD_LOGIC; 
          Start	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          X_In	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Y_In	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Z_In	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Code	:	IN	STD_LOGIC_VECTOR (2 DOWNTO 0); 
			 bit_out	:	OUT	STD_LOGIC;
			 done: out std_logic );
   END COMPONENT;

   SIGNAL rst	:	STD_LOGIC;
   SIGNAL Start	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL X_In	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Y_In	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Z_In	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Code	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal done :	STD_LOGIC;
   SIGNAL bit_out	:	STD_LOGIC;
	
	   constant clk_period : time := 10 ns;

BEGIN

   UUT: Schematic PORT MAP(
		rst => rst, 
		Start => Start, 
		clk => clk, 
		X_In => X_In, 
		Y_In => Y_In, 
		Z_In => Z_In, 
		Code => Code, 
		bit_out => bit_out,
		done => done
   );

-- *** Test Bench - User Defined Section ***
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
--	done_out1 <= done_out;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

		WAIT for clk_period*10;
		
		rst <= '1';
		
      WAIT for clk_period;
		
		rst <= '0';
      
		WAIT for clk_period*10;
		
					--circrot
		y_in <= "00000000000000000000000000000000";
		x_in <= "00100110110111010011101101101010";
		z_in <= "00100001100000101010010001110000";
		Code <= "000";
		Start <= '1';
      WAIT for clk_period*10;
		Start <= '0';
		WAIT for clk_period*34;

      -- insert stimulus here 

      wait;
		end process;
-- *** End Test Bench - User Defined Section ***

END;
