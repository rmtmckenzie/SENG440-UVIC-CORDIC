--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:12:25 07/15/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Documents/FinalCordic/FinalCordic/MultiplexerOutput_TestBench.vhd
-- Project Name:  FinalCordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MultiplexerOutput
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
 
ENTITY MultiplexerOutput_TestBench IS
END MultiplexerOutput_TestBench;
 
ARCHITECTURE behavior OF MultiplexerOutput_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MultiplexerOutput
    PORT(
         external_x_out : OUT  std_logic_vector(31 downto 0);
         external_y_out : OUT  std_logic_vector(31 downto 0);
         external_z_out : OUT  std_logic_vector(31 downto 0);
         internal_x_out : OUT  std_logic_vector(31 downto 0);
         internal_y_out : OUT  std_logic_vector(31 downto 0);
         internal_z_out : OUT  std_logic_vector(31 downto 0);
         sel : IN  std_logic;
         x_in : IN  std_logic_vector(31 downto 0);
         y_in : IN  std_logic_vector(31 downto 0);
         z_in : IN  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel : std_logic := '0';
   signal x_in : std_logic_vector(31 downto 0) := (others => '0');
   signal y_in : std_logic_vector(31 downto 0) := (others => '0');
   signal z_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal external_x_out : std_logic_vector(31 downto 0);
   signal external_y_out : std_logic_vector(31 downto 0);
   signal external_z_out : std_logic_vector(31 downto 0);
   signal internal_x_out : std_logic_vector(31 downto 0);
   signal internal_y_out : std_logic_vector(31 downto 0);
   signal internal_z_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MultiplexerOutput PORT MAP (
          external_x_out => external_x_out,
          external_y_out => external_y_out,
          external_z_out => external_z_out,
          internal_x_out => internal_x_out,
          internal_y_out => internal_y_out,
          internal_z_out => internal_z_out,
          sel => sel,
          x_in => x_in,
          y_in => y_in,
          z_in => z_in
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		x_in <= "00000000000000000000000000000001";
		y_in <= "00000000000000000000000000000011";
		z_in <= "00000000000000000000000000000111";
		
		wait for 10ns;
		
		sel <= '0';
		
		wait for 100ns;
		
		sel <= '1';
		
		wait for 100ns;

		x_in <= "00000000000000111000000000000001";
		y_in <= "00000000000000111000000000000011";
		z_in <= "00000000000000111000000000000111";
		
		wait for 100ns;
		
		sel <= '0';

      wait;
   end process;

END;
