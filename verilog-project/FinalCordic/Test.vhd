--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:29:15 07/23/2014
-- Design Name:   
-- Module Name:   C:/Users/jdparry/Downloads/FinalCordic w UART1/FinalCordic/Test.vhd
-- Project Name:  FinalCordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Cordic_UAR_1
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
 
ENTITY Test IS
END Test;
 
ARCHITECTURE behavior OF Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Cordic_UAR_1
    PORT(
--         x_in : IN  std_logic_vector(31 downto 0);
--         y_in : IN  std_logic_vector(31 downto 0);
--         z_in : IN  std_logic_vector(31 downto 0);
         code : IN  std_logic_vector(2 downto 0);
         rst : IN  std_logic;
         Start : IN  std_logic;
         clk : IN  std_logic;
         done_unique : OUT  std_logic;
         bit_out : OUT  std_logic;
--			slow_clock_test: out std_logic;
			next_s_out 	: out STD_LOGIC_VECTOR(1 downto 0);
			current_s_out 	: out STD_LOGIC_VECTOR(1 downto 0)
--			done_out_test: out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(31 downto 0) := (others => '0');
   signal y_in : std_logic_vector(31 downto 0) := (others => '0');
   signal z_in : std_logic_vector(31 downto 0) := (others => '0');
   signal code : std_logic_vector(2 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal Start : std_logic := '0';
   signal clk : std_logic := '0';
	signal slow_clk_status : std_logic;
	signal done_out_status : std_logic;
 	--Outputs
   signal done : std_logic;
   signal bit_out : std_logic;
	signal next_s 	: STD_LOGIC_VECTOR(1 downto 0);
	signal current_s 	: STD_LOGIC_VECTOR(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Cordic_UAR_1 PORT MAP (
--          x_in => x_in,
--          y_in => y_in,
--          z_in => z_in,
          code => code,
          rst => rst,
          Start => Start,
          clk => clk,
          done_unique => done,
          bit_out => bit_out,
--			 slow_clock_test=>slow_clk_status,
			 current_s_out=>current_s,
			 next_s_out=>next_s
--			 done_out_test=>done_out_status
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
   tb : PROCESS
   BEGIN
      WAIT for clk_period*10;
		
		rst <= '1';
		
      WAIT for clk_period;
		
		rst <= '0';
      
		WAIT for clk_period;

		
		
				

		
		--circrot
		Y_In <= "00100110110111010011101101101010";
		X_In <= "00100110110111010011101101101010";
		Z_In <= "00110010010000111111011010101001";
		Code <= "100";
		Start <= '1';
      WAIT for clk_period;
		Start <= '0';
		WAIT for clk_period*34;

      wait;
   end process;

END;
