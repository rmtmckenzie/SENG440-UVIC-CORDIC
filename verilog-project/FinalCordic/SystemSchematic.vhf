--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : SystemSchematic.vhf
-- /___/   /\     Timestamp : 07/29/2014 15:44:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/jdparry/Downloads/FUCKYEAHBITCHES!!!/FinalCordic/SystemSchematic.vhf -w C:/Users/jdparry/Downloads/FUCKYEAHBITCHES!!!/FinalCordic/SystemSchematic.sch
--Design Name: SystemSchematic
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

entity ALU_MUSER_SystemSchematic is
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
end ALU_MUSER_SystemSchematic;

architecture BEHAVIORAL of ALU_MUSER_SystemSchematic is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SystemSchematic is
   port ( Clock     : in    std_logic; 
          Code      : in    std_logic_vector (2 downto 0); 
          Reset     : in    std_logic; 
          Start     : in    std_logic; 
          X_Input   : in    std_logic_vector (31 downto 0); 
          Y_Input   : in    std_logic_vector (31 downto 0); 
          Z_Input   : in    std_logic_vector (31 downto 0); 
          current_s : out   std_logic_vector (1 downto 0); 
          done      : out   std_logic; 
          next_s    : out   std_logic_vector (1 downto 0); 
          X_Output  : out   std_logic_vector (31 downto 0); 
          Y_Output  : out   std_logic_vector (31 downto 0); 
          Z_Output  : out   std_logic_vector (31 downto 0));
end SystemSchematic;

architecture BEHAVIORAL of SystemSchematic is
   signal ALUOutX   : std_logic_vector (31 downto 0);
   signal ALUOutY   : std_logic_vector (31 downto 0);
   signal ALUOutZ   : std_logic_vector (31 downto 0);
   signal i         : std_logic_vector (4 downto 0);
   signal InputEn   : std_logic;
   signal m         : std_logic_vector (1 downto 0);
   signal MuxInX    : std_logic_vector (31 downto 0);
   signal MuxInY    : std_logic_vector (31 downto 0);
   signal MuxInZ    : std_logic_vector (31 downto 0);
   signal MuxOutX   : std_logic_vector (31 downto 0);
   signal MuxOutY   : std_logic_vector (31 downto 0);
   signal MuxOutZ   : std_logic_vector (31 downto 0);
   signal OP        : std_logic;
   signal output_en : std_logic;
   signal RegisterX : std_logic_vector (31 downto 0);
   signal RegisterY : std_logic_vector (31 downto 0);
   signal RegisterZ : std_logic_vector (31 downto 0);
   signal Theta     : std_logic_vector (31 downto 0);
   signal u         : std_logic;
   component ALU_MUSER_SystemSchematic
      port ( m     : in    std_logic_vector (1 downto 0); 
             X_out : out   std_logic_vector (31 downto 0); 
             Y_out : out   std_logic_vector (31 downto 0); 
             Z_out : out   std_logic_vector (31 downto 0); 
             u     : in    std_logic; 
             Theta : in    std_logic_vector (31 downto 0); 
             Z     : in    std_logic_vector (31 downto 0); 
             i     : in    std_logic_vector (4 downto 0); 
             X     : in    std_logic_vector (31 downto 0); 
             Y     : in    std_logic_vector (31 downto 0));
   end component;
   
   component Comparator
      port ( OperationSelect : in    std_logic; 
             Zi              : in    std_logic_vector (31 downto 0); 
             Yi              : in    std_logic_vector (31 downto 0); 
             Output          : out   std_logic);
   end component;
   
   component Controller
      port ( start     : in    std_logic; 
             rst       : in    std_logic; 
             clk       : in    std_logic; 
             code      : in    std_logic_vector (2 downto 0); 
             op        : out   std_logic; 
             input_en  : out   std_logic; 
             output_en : out   std_logic; 
             done      : out   std_logic; 
             m         : out   std_logic_vector (1 downto 0); 
             i         : out   std_logic_vector (4 downto 0); 
             next_s    : out   std_logic_vector (1 downto 0); 
             current_s : out   std_logic_vector (1 downto 0));
   end component;
   
   component Lookup_Table
      port ( i     : in    std_logic_vector (4 downto 0); 
             m     : in    std_logic_vector (1 downto 0); 
             theta : out   std_logic_vector (31 downto 0));
   end component;
   
   component MultiplexerInput
      port ( sel           : in    std_logic; 
             external_x_in : in    std_logic_vector (31 downto 0); 
             external_y_in : in    std_logic_vector (31 downto 0); 
             external_z_in : in    std_logic_vector (31 downto 0); 
             internal_x_in : in    std_logic_vector (31 downto 0); 
             internal_y_in : in    std_logic_vector (31 downto 0); 
             internal_z_in : in    std_logic_vector (31 downto 0); 
             x_out         : out   std_logic_vector (31 downto 0); 
             y_out         : out   std_logic_vector (31 downto 0); 
             z_out         : out   std_logic_vector (31 downto 0));
   end component;
   
   component MultiplexerOutput
      port ( sel            : in    std_logic; 
             x_in           : in    std_logic_vector (31 downto 0); 
             y_in           : in    std_logic_vector (31 downto 0); 
             z_in           : in    std_logic_vector (31 downto 0); 
             external_x_out : out   std_logic_vector (31 downto 0); 
             external_y_out : out   std_logic_vector (31 downto 0); 
             external_z_out : out   std_logic_vector (31 downto 0); 
             internal_x_out : out   std_logic_vector (31 downto 0); 
             internal_z_out : out   std_logic_vector (31 downto 0); 
             internal_y_out : out   std_logic_vector (31 downto 0));
   end component;
   
   component RegisterBank
      port ( clk   : in    std_logic; 
             x_in  : in    std_logic_vector (31 downto 0); 
             y_in  : in    std_logic_vector (31 downto 0); 
             z_in  : in    std_logic_vector (31 downto 0); 
             x_out : out   std_logic_vector (31 downto 0); 
             y_out : out   std_logic_vector (31 downto 0); 
             z_out : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : ALU_MUSER_SystemSchematic
      port map (i(4 downto 0)=>i(4 downto 0),
                m(1 downto 0)=>m(1 downto 0),
                Theta(31 downto 0)=>Theta(31 downto 0),
                u=>u,
                X(31 downto 0)=>RegisterX(31 downto 0),
                Y(31 downto 0)=>RegisterY(31 downto 0),
                Z(31 downto 0)=>RegisterZ(31 downto 0),
                X_out(31 downto 0)=>ALUOutX(31 downto 0),
                Y_out(31 downto 0)=>ALUOutY(31 downto 0),
                Z_out(31 downto 0)=>ALUOutZ(31 downto 0));
   
   XLXI_2 : Comparator
      port map (OperationSelect=>OP,
                Yi(31 downto 0)=>RegisterY(31 downto 0),
                Zi(31 downto 0)=>RegisterZ(31 downto 0),
                Output=>u);
   
   XLXI_3 : Controller
      port map (clk=>Clock,
                code(2 downto 0)=>Code(2 downto 0),
                rst=>Reset,
                start=>Start,
                current_s(1 downto 0)=>current_s(1 downto 0),
                done=>done,
                i(4 downto 0)=>i(4 downto 0),
                input_en=>InputEn,
                m(1 downto 0)=>m(1 downto 0),
                next_s(1 downto 0)=>next_s(1 downto 0),
                op=>OP,
                output_en=>output_en);
   
   XLXI_4 : Lookup_Table
      port map (i(4 downto 0)=>i(4 downto 0),
                m(1 downto 0)=>m(1 downto 0),
                theta(31 downto 0)=>Theta(31 downto 0));
   
   XLXI_5 : MultiplexerInput
      port map (external_x_in(31 downto 0)=>X_Input(31 downto 0),
                external_y_in(31 downto 0)=>Y_Input(31 downto 0),
                external_z_in(31 downto 0)=>Z_Input(31 downto 0),
                internal_x_in(31 downto 0)=>MuxOutX(31 downto 0),
                internal_y_in(31 downto 0)=>MuxOutY(31 downto 0),
                internal_z_in(31 downto 0)=>MuxOutZ(31 downto 0),
                sel=>InputEn,
                x_out(31 downto 0)=>MuxInX(31 downto 0),
                y_out(31 downto 0)=>MuxInY(31 downto 0),
                z_out(31 downto 0)=>MuxInZ(31 downto 0));
   
   XLXI_6 : MultiplexerOutput
      port map (sel=>output_en,
                x_in(31 downto 0)=>ALUOutX(31 downto 0),
                y_in(31 downto 0)=>ALUOutY(31 downto 0),
                z_in(31 downto 0)=>ALUOutZ(31 downto 0),
                external_x_out(31 downto 0)=>X_Output(31 downto 0),
                external_y_out(31 downto 0)=>Y_Output(31 downto 0),
                external_z_out(31 downto 0)=>Z_Output(31 downto 0),
                internal_x_out(31 downto 0)=>MuxOutX(31 downto 0),
                internal_y_out(31 downto 0)=>MuxOutY(31 downto 0),
                internal_z_out(31 downto 0)=>MuxOutZ(31 downto 0));
   
   XLXI_7 : RegisterBank
      port map (clk=>Clock,
                x_in(31 downto 0)=>MuxInX(31 downto 0),
                y_in(31 downto 0)=>MuxInY(31 downto 0),
                z_in(31 downto 0)=>MuxInZ(31 downto 0),
                x_out(31 downto 0)=>RegisterX(31 downto 0),
                y_out(31 downto 0)=>RegisterY(31 downto 0),
                z_out(31 downto 0)=>RegisterZ(31 downto 0));
   
end BEHAVIORAL;


