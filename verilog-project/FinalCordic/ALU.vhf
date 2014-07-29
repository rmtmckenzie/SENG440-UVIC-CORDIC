--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : ALU.vhf
-- /___/   /\     Timestamp : 07/29/2014 15:44:28
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/jdparry/Downloads/FUCKYEAHBITCHES!!!/FinalCordic/ALU.vhf -w C:/Users/jdparry/Downloads/FUCKYEAHBITCHES!!!/FinalCordic/ALU.sch
--Design Name: ALU
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

entity ALU is
   port ( i     : in    std_logic_vector (4 downto 0); 
          m     : in    std_logic_vector (1 downto 0); 
          Theta : in    std_logic_vector (31 downto 0); 
          u     : in    std_logic; 
          X     : in    std_logic_vector (31 downto 0); 
          Y     : in    std_logic_vector (31 downto 0); 
          Z     : in    std_logic_vector (31 downto 0); 
          X_out : out   std_logic_vector (31 downto 0); 
          Y_out : out   std_logic_vector (31 downto 0); 
          Z_out : out   std_logic_vector (31 downto 0));
end ALU;

architecture BEHAVIORAL of ALU is
   attribute BOX_TYPE   : string ;
   signal XLXN_8  : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_19 : std_logic_vector (31 downto 0);
   signal XLXN_20 : std_logic_vector (31 downto 0);
   component AddSub
      port ( sel     : in    std_logic; 
             a_in    : in    std_logic_vector (31 downto 0); 
             b_in    : in    std_logic_vector (31 downto 0); 
             val_out : out   std_logic_vector (31 downto 0));
   end component;
   
   component Shifter
      port ( i       : in    std_logic_vector (4 downto 0); 
             val_out : out   std_logic_vector (31 downto 0); 
             val_in  : in    std_logic_vector (31 downto 0));
   end component;
   
   component Neg
      port ( u    : in    std_logic; 
             m_in : in    std_logic_vector (1 downto 0); 
             sel  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component X_AddSub
      port ( sel     : in    std_logic; 
             a_in    : in    std_logic_vector (31 downto 0); 
             b_in    : in    std_logic_vector (31 downto 0); 
             m       : in    std_logic_vector (1 downto 0); 
             val_out : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : AddSub
      port map (a_in(31 downto 0)=>Y(31 downto 0),
                b_in(31 downto 0)=>XLXN_19(31 downto 0),
                sel=>u,
                val_out(31 downto 0)=>Y_out(31 downto 0));
   
   XLXI_4 : Shifter
      port map (i(4 downto 0)=>i(4 downto 0),
                val_in(31 downto 0)=>X(31 downto 0),
                val_out(31 downto 0)=>XLXN_19(31 downto 0));
   
   XLXI_5 : Shifter
      port map (i(4 downto 0)=>i(4 downto 0),
                val_in(31 downto 0)=>Y(31 downto 0),
                val_out(31 downto 0)=>XLXN_20(31 downto 0));
   
   XLXI_7 : Neg
      port map (m_in(1 downto 0)=>m(1 downto 0),
                u=>u,
                sel=>XLXN_8);
   
   XLXI_8 : AddSub
      port map (a_in(31 downto 0)=>Z(31 downto 0),
                b_in(31 downto 0)=>Theta(31 downto 0),
                sel=>XLXN_13,
                val_out(31 downto 0)=>Z_out(31 downto 0));
   
   XLXI_9 : INV
      port map (I=>u,
                O=>XLXN_13);
   
   XLXI_13 : X_AddSub
      port map (a_in(31 downto 0)=>X(31 downto 0),
                b_in(31 downto 0)=>XLXN_20(31 downto 0),
                m(1 downto 0)=>m(1 downto 0),
                sel=>XLXN_8,
                val_out(31 downto 0)=>X_out(31 downto 0));
   
end BEHAVIORAL;


