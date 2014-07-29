--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:37:16 07/15/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Documents/FinalCordic/FinalCordic/Controller_TestBench.vhd
-- Project Name:  FinalCordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Controller
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
 
ENTITY Controller_TestBench IS
END Controller_TestBench;
 
ARCHITECTURE behavior OF Controller_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Controller
    PORT(
         code : IN  std_logic_vector(2 downto 0);
         start : IN  std_logic;
         m : OUT  std_logic_vector(1 downto 0);
         i : OUT  std_logic_vector(4 downto 0);
         op : OUT  std_logic;
         input_en : OUT  std_logic;
         output_en : OUT  std_logic;
			done : OUT  std_logic;
         rst : IN  std_logic;

         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal code : std_logic_vector(2 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal m : std_logic_vector(1 downto 0);
   signal i : std_logic_vector(4 downto 0);
   signal op : std_logic;
   signal input_en : std_logic;
   signal output_en : std_logic;
	signal done : std_logic;


   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Controller PORT MAP (
          code => code,
          start => start,
          m => m,
          i => i,
          op => op,
          input_en => input_en,
          output_en => output_en,
          rst => rst,
			 done=>done,

          clk => clk
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
      

      wait for clk_period;

      rst <= '1';
		
		wait for clk_period;
		
		rst <= '0';
		
		wait for clk_period;
		
		code <= "000";
		start <= '1';
		
		wait for clk_period;
		
		start <= '0';

      wait;
   end process;

END;
