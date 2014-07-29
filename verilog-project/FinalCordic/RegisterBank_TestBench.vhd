--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:59:18 07/15/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Documents/FinalCordic/FinalCordic/RegisterBank_TestBench.vhd
-- Project Name:  FinalCordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterBank
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
 
ENTITY RegisterBank_TestBench IS
END RegisterBank_TestBench;
 
ARCHITECTURE behavior OF RegisterBank_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterBank
    PORT(
         x_in : IN  std_logic_vector(31 downto 0);
         y_in : IN  std_logic_vector(31 downto 0);
         z_in : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         x_out : OUT  std_logic_vector(31 downto 0);
         y_out : OUT  std_logic_vector(31 downto 0);
         z_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(31 downto 0) := (others => '0');
   signal y_in : std_logic_vector(31 downto 0) := (others => '0');
   signal z_in : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal x_out : std_logic_vector(31 downto 0);
   signal y_out : std_logic_vector(31 downto 0);
   signal z_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterBank PORT MAP (
          x_in => x_in,
          y_in => y_in,
          z_in => z_in,
          clk => clk,
          x_out => x_out,
          y_out => y_out,
          z_out => z_out
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
      wait for 100 ns;	

      wait for clk_period*10;

      x_in <= "00000000000000000000000000000001";
		y_in <= "00000000000000000000000000000011";
		z_in <= "00000000000000000000000000000111";
		
		wait for clk_period*10;

      x_in <= "11111100000000000000000000000001";
		y_in <= "11111100000000000000000000000011";
		z_in <= "11111100000000000000000000000111";

		wait for clk_period*10;

      x_in <= "11111100000000011111110000000001";
		y_in <= "11111100000000011111110000000011";
		z_in <= "11111100000000011111110000000111";

      wait;
   end process;

END;
