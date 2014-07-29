--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:50:22 07/15/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Documents/FinalCordic/FinalCordic/Comparator_TestBench.vhd
-- Project Name:  FinalCordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparator
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
 
ENTITY Comparator_TestBench IS
END Comparator_TestBench;
 
ARCHITECTURE behavior OF Comparator_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         Zi : IN  std_logic_vector(31 downto 0);
         Yi : IN  std_logic_vector(31 downto 0);
         OperationSelect : IN  std_logic;
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Zi : std_logic_vector(31 downto 0) := (others => '0');
   signal Yi : std_logic_vector(31 downto 0) := (others => '0');
   signal OperationSelect : std_logic := '0';

 	--Outputs
   signal Output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          Zi => Zi,
          Yi => Yi,
          OperationSelect => OperationSelect,
          Output => Output
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		OperationSelect <= '1';
      Yi <= "10000000000000000000000000000111"; 
		Zi <= "00000000000000000000000000000111";
		
		wait for 100ns;
		 
		 OperationSelect <= '0';

		wait for 100ns;
		
		Yi <= "00000000000000000000000000000111"; 
		Zi <= "10000000000000000000000000000111";
		wait for 100ns;
		
		OperationSelect <= '1';

      wait;
   end process;

END;
