--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:47:18 07/23/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Downloads/FinalCordic w UART1/FinalCordic/UART_TEST.vhd
-- Project Name:  FinalCordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: parallel_2_serial
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.cordic_package.ALL;

 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY UART_TEST IS
END UART_TEST;
 
ARCHITECTURE behavior OF UART_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT parallel_2_serial
    PORT(
         x : IN  std_logic_vector(31 downto 0);
         y : IN  std_logic_vector(31 downto 0);
         z : IN  std_logic_vector(31 downto 0);
         done : IN  std_logic;
         sel : IN  std_logic_vector(2 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         bit_out1 : OUT  std_logic;
         slow_clk_out : OUT  std_logic;

         uart_ready : OUT  std_logic;
         ascii_ready : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(31 downto 0) := (others => '0');
   signal y : std_logic_vector(31 downto 0) := (others => '0');
   signal z : std_logic_vector(31 downto 0) := (others => '0');
   signal done : std_logic := '0';
   signal sel : std_logic_vector(2 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal bit_out1 : std_logic;
   signal slow_clk_out : std_logic;
   signal uart_ready : std_logic;
   signal ascii_ready : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: parallel_2_serial PORT MAP (
          x => x,
          y => y,
          z => z,
          done => done,
          sel => sel,
          clk => clk,
          reset => reset,
          bit_out1 => bit_out1,
          slow_clk_out => slow_clk_out,
          uart_ready => uart_ready,
          ascii_ready => ascii_ready
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      WAIT for clk_period*10;
		
		reset <= '1';
		
      WAIT for clk_period;
		
		reset <= '0';
      
		WAIT for clk_period;

		
		
				

		
		--circrot
		Y <= "00000000000000000000000000000000";
		X <= "00100110110111010011101101101010";
		Z <= "00100001100000101010010001110000";

		done <= '1';
      WAIT for clk_period;
		done <= '0';
		WAIT for clk_period*34;

      wait;
   end process;

END;
