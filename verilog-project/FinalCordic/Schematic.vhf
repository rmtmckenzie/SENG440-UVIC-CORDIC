--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : Schematic.vhf
-- /___/   /\     Timestamp : 07/23/2014 14:54:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/jdparry/Downloads/FinalCordic w UART1/FinalCordic/Schematic.vhf" -w "C:/Users/jdparry/Downloads/FinalCordic w UART1/FinalCordic/Schematic.sch"
--Design Name: Schematic
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Schematic is
   port ( clk     : in    std_logic; 
          Code    : in    std_logic_vector (2 downto 0); 
          rst     : in    std_logic; 
          Start   : in    std_logic; 
          X_In    : in    std_logic_vector (31 downto 0); 
          Y_In    : in    std_logic_vector (31 downto 0); 
          Z_In    : in    std_logic_vector (31 downto 0); 
          bit_out : out   std_logic; 
          done    : out   std_logic);
end Schematic;

architecture BEHAVIORAL of Schematic is
   component Cordic_UAR_1
      port ( rst      : in    std_logic; 
             Start    : in    std_logic; 
             clk      : in    std_logic; 
             x_in     : in    std_logic_vector (31 downto 0); 
             y_in     : in    std_logic_vector (31 downto 0); 
             z_in     : in    std_logic_vector (31 downto 0); 
             code     : in    std_logic_vector (2 downto 0); 
             bit_out  : out   std_logic; 
             done : out   std_logic);
   end component;
   
begin
   XLXI_2 : Cordic_UAR_1
      port map (clk=>clk,
                code(2 downto 0)=>Code(2 downto 0),
                rst=>rst,
                Start=>Start,
                x_in(31 downto 0)=>X_In(31 downto 0),
                y_in(31 downto 0)=>Y_In(31 downto 0),
                z_in(31 downto 0)=>Z_In(31 downto 0),
                bit_out=>bit_out,
                done=>done);
   
end BEHAVIORAL;


