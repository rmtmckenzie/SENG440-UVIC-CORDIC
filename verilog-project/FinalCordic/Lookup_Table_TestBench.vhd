--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:51 07/15/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Documents/FinalCordic/FinalCordic/Lookup_Table_TestBench.vhd
-- Project Name:  FinalCordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lookup_Table
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
 
ENTITY Lookup_Table_TestBench IS
END Lookup_Table_TestBench;
 
ARCHITECTURE behavior OF Lookup_Table_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lookup_Table
    PORT(
         i : IN  std_logic_vector(4 downto 0);
         m : IN  std_logic_vector(1 downto 0);
         theta : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(4 downto 0) := (others => '0');
   signal m : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal theta : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lookup_Table PORT MAP (
          i => i,
          m => m,
          theta => theta
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

            wait for 100 ns;	
      i <= "00000";
		m <= "01";


      wait for 100 ns;	
		m <= "00";


      wait for 100 ns;	
      i <= "00001";
		m <= "00";

      wait for 100 ns;	
      i <= "00010";
		m <= "00";

      wait;
   end process;

END;
