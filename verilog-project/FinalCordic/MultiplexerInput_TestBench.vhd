--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:29:08 07/15/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Documents/FinalCordic/FinalCordic/MultiplexerInput_TestBench.vhd
-- Project Name:  FinalCordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MultiplexerInput
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MultiplexerInput_TestBench IS
END MultiplexerInput_TestBench;
 
ARCHITECTURE behavior OF MultiplexerInput_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MultiplexerInput
    PORT(
         external_x_in : IN  std_logic_vector(31 downto 0);
         external_y_in : IN  std_logic_vector(31 downto 0);
         external_z_in : IN  std_logic_vector(31 downto 0);
         internal_x_in : IN  std_logic_vector(31 downto 0);
         internal_y_in : IN  std_logic_vector(31 downto 0);
         internal_z_in : IN  std_logic_vector(31 downto 0);
         sel : IN  std_logic;
         x_out : OUT  std_logic_vector(31 downto 0);
         y_out : OUT  std_logic_vector(31 downto 0);
         z_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal external_x_in : std_logic_vector(31 downto 0) := (others => '0');
   signal external_y_in : std_logic_vector(31 downto 0) := (others => '0');
   signal external_z_in : std_logic_vector(31 downto 0) := (others => '0');
   signal internal_x_in : std_logic_vector(31 downto 0) := (others => '0');
   signal internal_y_in : std_logic_vector(31 downto 0) := (others => '0');
   signal internal_z_in : std_logic_vector(31 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal x_out : std_logic_vector(31 downto 0);
   signal y_out : std_logic_vector(31 downto 0);
   signal z_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MultiplexerInput PORT MAP (
          external_x_in => external_x_in,
          external_y_in => external_y_in,
          external_z_in => external_z_in,
          internal_x_in => internal_x_in,
          internal_y_in => internal_y_in,
          internal_z_in => internal_z_in,
          sel => sel,
          x_out => x_out,
          y_out => y_out,
          z_out => z_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


		external_x_in <= "00000000000000000000000000000001";
		external_y_in <= "00000000000000000000000000000011";
		external_z_in <= "00000000000000000000000000000111";
		internal_x_in <= "11110000000000000000000000000001";
		internal_y_in <= "11110000000000000000000000000011";
		internal_z_in <= "11110000000000000000000000000111";
		sel <= '0';
		
		wait for 100ns;

		sel <= '1';
		
		wait for 100ns;
		
		external_x_in <= "00000000000001111111000000000001";
		external_y_in <= "00000000000001111110000000000011";
		external_z_in <= "00000000000001111100000000000111";
		internal_x_in <= "11110000000001111100000000000001";
		internal_y_in <= "11110000000001111100000000000011";
		internal_z_in <= "11110000000001111110000000000111";		
		
		wait for 100ns;
		
		sel <= '0';

      wait;
   end process;

END;
