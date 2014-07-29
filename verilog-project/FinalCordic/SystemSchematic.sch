<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X_Input(31:0)" />
        <signal name="Y_Input(31:0)" />
        <signal name="Z_Input(31:0)" />
        <signal name="InputEn" />
        <signal name="u" />
        <signal name="RegisterZ(31:0)" />
        <signal name="RegisterY(31:0)" />
        <signal name="RegisterX(31:0)" />
        <signal name="MuxInX(31:0)" />
        <signal name="MuxInY(31:0)" />
        <signal name="MuxInZ(31:0)" />
        <signal name="Theta(31:0)" />
        <signal name="OP" />
        <signal name="i(4:0)" />
        <signal name="m(1:0)" />
        <signal name="ALUOutX(31:0)" />
        <signal name="ALUOutZ(31:0)" />
        <signal name="ALUOutY(31:0)" />
        <signal name="output_en" />
        <signal name="MuxOutZ(31:0)" />
        <signal name="MuxOutY(31:0)" />
        <signal name="MuxOutX(31:0)" />
        <signal name="X_Output(31:0)" />
        <signal name="Y_Output(31:0)" />
        <signal name="Z_Output(31:0)" />
        <signal name="done" />
        <signal name="next_s(1:0)" />
        <signal name="current_s(1:0)" />
        <signal name="Start" />
        <signal name="Reset" />
        <signal name="Clock" />
        <signal name="Code(2:0)" />
        <signal name="XLXN_48" />
        <signal name="XLXN_50" />
        <port polarity="Input" name="X_Input(31:0)" />
        <port polarity="Input" name="Y_Input(31:0)" />
        <port polarity="Input" name="Z_Input(31:0)" />
        <port polarity="Output" name="X_Output(31:0)" />
        <port polarity="Output" name="Y_Output(31:0)" />
        <port polarity="Output" name="Z_Output(31:0)" />
        <port polarity="Output" name="done" />
        <port polarity="Output" name="next_s(1:0)" />
        <port polarity="Output" name="current_s(1:0)" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="Clock" />
        <port polarity="Input" name="Code(2:0)" />
        <blockdef name="ALU">
            <timestamp>2014-7-15T23:36:14</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-316" height="24" />
            <line x2="384" y1="-304" y2="-304" x1="320" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-188" height="24" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
        </blockdef>
        <blockdef name="Comparator">
            <timestamp>2014-7-17T23:3:59</timestamp>
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="Controller">
            <timestamp>2014-7-24T23:45:3</timestamp>
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="512" />
        </blockdef>
        <blockdef name="Lookup_Table">
            <timestamp>2014-7-17T23:5:24</timestamp>
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect width="64" x="0" y="4" height="24" />
            <line x2="0" y1="16" y2="16" x1="64" />
        </blockdef>
        <blockdef name="MultiplexerInput">
            <timestamp>2014-7-15T23:14:59</timestamp>
            <rect width="336" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-428" height="24" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="MultiplexerOutput">
            <timestamp>2014-7-15T23:46:8</timestamp>
            <rect width="336" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
        </blockdef>
        <blockdef name="RegisterBank">
            <timestamp>2014-7-15T23:14:48</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Comparator" name="XLXI_2">
            <blockpin signalname="OP" name="OperationSelect" />
            <blockpin signalname="RegisterZ(31:0)" name="Zi(31:0)" />
            <blockpin signalname="RegisterY(31:0)" name="Yi(31:0)" />
            <blockpin signalname="u" name="Output" />
        </block>
        <block symbolname="Controller" name="XLXI_3">
            <blockpin signalname="Start" name="start" />
            <blockpin signalname="Reset" name="rst" />
            <blockpin signalname="Clock" name="clk" />
            <blockpin signalname="Code(2:0)" name="code(2:0)" />
            <blockpin signalname="OP" name="op" />
            <blockpin signalname="InputEn" name="input_en" />
            <blockpin signalname="output_en" name="output_en" />
            <blockpin signalname="done" name="done" />
            <blockpin signalname="m(1:0)" name="m(1:0)" />
            <blockpin signalname="i(4:0)" name="i(4:0)" />
            <blockpin signalname="next_s(1:0)" name="next_s(1:0)" />
            <blockpin signalname="current_s(1:0)" name="current_s(1:0)" />
        </block>
        <block symbolname="Lookup_Table" name="XLXI_4">
            <blockpin signalname="i(4:0)" name="i(4:0)" />
            <blockpin signalname="m(1:0)" name="m(1:0)" />
            <blockpin signalname="Theta(31:0)" name="theta(31:0)" />
        </block>
        <block symbolname="MultiplexerInput" name="XLXI_5">
            <blockpin signalname="InputEn" name="sel" />
            <blockpin signalname="X_Input(31:0)" name="external_x_in(31:0)" />
            <blockpin signalname="Y_Input(31:0)" name="external_y_in(31:0)" />
            <blockpin signalname="Z_Input(31:0)" name="external_z_in(31:0)" />
            <blockpin signalname="MuxOutX(31:0)" name="internal_x_in(31:0)" />
            <blockpin signalname="MuxOutY(31:0)" name="internal_y_in(31:0)" />
            <blockpin signalname="MuxOutZ(31:0)" name="internal_z_in(31:0)" />
            <blockpin signalname="MuxInX(31:0)" name="x_out(31:0)" />
            <blockpin signalname="MuxInY(31:0)" name="y_out(31:0)" />
            <blockpin signalname="MuxInZ(31:0)" name="z_out(31:0)" />
        </block>
        <block symbolname="RegisterBank" name="XLXI_7">
            <blockpin signalname="Clock" name="clk" />
            <blockpin signalname="MuxInX(31:0)" name="x_in(31:0)" />
            <blockpin signalname="MuxInY(31:0)" name="y_in(31:0)" />
            <blockpin signalname="MuxInZ(31:0)" name="z_in(31:0)" />
            <blockpin signalname="RegisterX(31:0)" name="x_out(31:0)" />
            <blockpin signalname="RegisterY(31:0)" name="y_out(31:0)" />
            <blockpin signalname="RegisterZ(31:0)" name="z_out(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_1">
            <blockpin signalname="m(1:0)" name="m(1:0)" />
            <blockpin signalname="ALUOutX(31:0)" name="X_out(31:0)" />
            <blockpin signalname="ALUOutY(31:0)" name="Y_out(31:0)" />
            <blockpin signalname="ALUOutZ(31:0)" name="Z_out(31:0)" />
            <blockpin signalname="u" name="u" />
            <blockpin signalname="Theta(31:0)" name="Theta(31:0)" />
            <blockpin signalname="RegisterZ(31:0)" name="Z(31:0)" />
            <blockpin signalname="i(4:0)" name="i(4:0)" />
            <blockpin signalname="RegisterX(31:0)" name="X(31:0)" />
            <blockpin signalname="RegisterY(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="MultiplexerOutput" name="XLXI_6">
            <blockpin signalname="output_en" name="sel" />
            <blockpin signalname="ALUOutX(31:0)" name="x_in(31:0)" />
            <blockpin signalname="ALUOutY(31:0)" name="y_in(31:0)" />
            <blockpin signalname="ALUOutZ(31:0)" name="z_in(31:0)" />
            <blockpin signalname="X_Output(31:0)" name="external_x_out(31:0)" />
            <blockpin signalname="Y_Output(31:0)" name="external_y_out(31:0)" />
            <blockpin signalname="Z_Output(31:0)" name="external_z_out(31:0)" />
            <blockpin signalname="MuxOutX(31:0)" name="internal_x_out(31:0)" />
            <blockpin signalname="MuxOutZ(31:0)" name="internal_z_out(31:0)" />
            <blockpin signalname="MuxOutY(31:0)" name="internal_y_out(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="256" y="1456" name="X_Input(31:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="1520" name="Y_Input(31:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="1584" name="Z_Input(31:0)" orien="R180" />
        <instance x="2192" y="1376" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1744" y="1472" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1328" y="1712" name="XLXI_2" orien="R0">
        </instance>
        <instance x="864" y="1552" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1008" y="1056" name="XLXI_4" orien="R0">
        </instance>
        <branch name="X_Output(31:0)">
            <wire x2="2688" y1="1024" y2="1024" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1024" name="X_Output(31:0)" orien="R0" />
        <branch name="Y_Output(31:0)">
            <wire x2="2688" y1="1088" y2="1088" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1088" name="Y_Output(31:0)" orien="R0" />
        <branch name="Z_Output(31:0)">
            <wire x2="2688" y1="1152" y2="1152" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1152" name="Z_Output(31:0)" orien="R0" />
        <branch name="MuxInX(31:0)">
            <wire x2="864" y1="1392" y2="1392" x1="752" />
        </branch>
        <branch name="MuxInZ(31:0)">
            <wire x2="816" y1="1776" y2="1776" x1="752" />
            <wire x2="816" y1="1520" y2="1776" x1="816" />
            <wire x2="864" y1="1520" y2="1520" x1="816" />
        </branch>
        <branch name="u">
            <wire x2="1728" y1="1552" y2="1552" x1="1712" />
            <wire x2="1744" y1="1440" y2="1440" x1="1728" />
            <wire x2="1728" y1="1440" y2="1552" x1="1728" />
        </branch>
        <branch name="ALUOutZ(31:0)">
            <wire x2="2160" y1="1216" y2="1216" x1="2128" />
            <wire x2="2160" y1="1216" y2="1312" x1="2160" />
            <wire x2="2192" y1="1312" y2="1312" x1="2160" />
        </branch>
        <branch name="RegisterZ(31:0)">
            <wire x2="1280" y1="1520" y2="1520" x1="1248" />
            <wire x2="1280" y1="1520" y2="1616" x1="1280" />
            <wire x2="1328" y1="1616" y2="1616" x1="1280" />
            <wire x2="1280" y1="1344" y2="1520" x1="1280" />
            <wire x2="1744" y1="1344" y2="1344" x1="1280" />
        </branch>
        <branch name="RegisterY(31:0)">
            <wire x2="1296" y1="1424" y2="1424" x1="1248" />
            <wire x2="1296" y1="1424" y2="1552" x1="1296" />
            <wire x2="1328" y1="1552" y2="1552" x1="1296" />
            <wire x2="1296" y1="1296" y2="1424" x1="1296" />
            <wire x2="1744" y1="1296" y2="1296" x1="1296" />
        </branch>
        <branch name="RegisterX(31:0)">
            <wire x2="1280" y1="1328" y2="1328" x1="1248" />
            <wire x2="1280" y1="1248" y2="1328" x1="1280" />
            <wire x2="1744" y1="1248" y2="1248" x1="1280" />
        </branch>
        <branch name="Theta(31:0)">
            <wire x2="1552" y1="960" y2="960" x1="1392" />
            <wire x2="1552" y1="960" y2="1056" x1="1552" />
            <wire x2="1744" y1="1056" y2="1056" x1="1552" />
        </branch>
        <branch name="ALUOutY(31:0)">
            <wire x2="2176" y1="1168" y2="1168" x1="2128" />
            <wire x2="2176" y1="1168" y2="1216" x1="2176" />
            <wire x2="2192" y1="1216" y2="1216" x1="2176" />
        </branch>
        <branch name="ALUOutX(31:0)">
            <wire x2="2192" y1="1120" y2="1120" x1="2128" />
        </branch>
        <branch name="MuxInY(31:0)">
            <wire x2="800" y1="1584" y2="1584" x1="752" />
            <wire x2="800" y1="1456" y2="1584" x1="800" />
            <wire x2="864" y1="1456" y2="1456" x1="800" />
        </branch>
        <branch name="MuxOutZ(31:0)">
            <wire x2="208" y1="1776" y2="1856" x1="208" />
            <wire x2="2736" y1="1856" y2="1856" x1="208" />
            <wire x2="288" y1="1776" y2="1776" x1="208" />
            <wire x2="2736" y1="1344" y2="1344" x1="2656" />
            <wire x2="2736" y1="1344" y2="1856" x1="2736" />
        </branch>
        <branch name="MuxOutY(31:0)">
            <wire x2="192" y1="1712" y2="1872" x1="192" />
            <wire x2="2752" y1="1872" y2="1872" x1="192" />
            <wire x2="288" y1="1712" y2="1712" x1="192" />
            <wire x2="2752" y1="1280" y2="1280" x1="2656" />
            <wire x2="2752" y1="1280" y2="1872" x1="2752" />
        </branch>
        <branch name="MuxOutX(31:0)">
            <wire x2="176" y1="1648" y2="1888" x1="176" />
            <wire x2="2768" y1="1888" y2="1888" x1="176" />
            <wire x2="288" y1="1648" y2="1648" x1="176" />
            <wire x2="2768" y1="1216" y2="1216" x1="2656" />
            <wire x2="2768" y1="1216" y2="1888" x1="2768" />
        </branch>
        <branch name="Z_Input(31:0)">
            <wire x2="288" y1="1584" y2="1584" x1="256" />
        </branch>
        <branch name="Y_Input(31:0)">
            <wire x2="288" y1="1520" y2="1520" x1="256" />
        </branch>
        <branch name="X_Input(31:0)">
            <wire x2="288" y1="1456" y2="1456" x1="256" />
        </branch>
        <instance x="288" y="1808" name="XLXI_5" orien="R0">
        </instance>
        <branch name="InputEn">
            <wire x2="272" y1="1232" y2="1392" x1="272" />
            <wire x2="288" y1="1392" y2="1392" x1="272" />
            <wire x2="816" y1="1232" y2="1232" x1="272" />
            <wire x2="816" y1="768" y2="768" x1="624" />
            <wire x2="816" y1="768" y2="1232" x1="816" />
        </branch>
        <branch name="m(1:0)">
            <wire x2="1008" y1="896" y2="896" x1="624" />
            <wire x2="1008" y1="896" y2="976" x1="1008" />
            <wire x2="1456" y1="864" y2="864" x1="1008" />
            <wire x2="1456" y1="864" y2="1120" x1="1456" />
            <wire x2="1744" y1="1120" y2="1120" x1="1456" />
            <wire x2="1008" y1="864" y2="896" x1="1008" />
        </branch>
        <instance x="240" y="992" name="XLXI_3" orien="R0">
        </instance>
        <branch name="done">
            <wire x2="656" y1="1024" y2="1024" x1="624" />
        </branch>
        <branch name="next_s(1:0)">
            <wire x2="656" y1="1088" y2="1088" x1="624" />
        </branch>
        <iomarker fontsize="28" x="656" y="1088" name="next_s(1:0)" orien="R0" />
        <branch name="current_s(1:0)">
            <wire x2="656" y1="1152" y2="1152" x1="624" />
        </branch>
        <iomarker fontsize="28" x="656" y="1152" name="current_s(1:0)" orien="R0" />
        <branch name="i(4:0)">
            <wire x2="976" y1="960" y2="960" x1="624" />
            <wire x2="976" y1="960" y2="1072" x1="976" />
            <wire x2="1008" y1="1072" y2="1072" x1="976" />
            <wire x2="976" y1="1072" y2="1184" x1="976" />
            <wire x2="1744" y1="1184" y2="1184" x1="976" />
        </branch>
        <iomarker fontsize="28" x="656" y="1024" name="done" orien="R0" />
        <branch name="output_en">
            <wire x2="2080" y1="832" y2="832" x1="624" />
            <wire x2="2080" y1="832" y2="1024" x1="2080" />
            <wire x2="2192" y1="1024" y2="1024" x1="2080" />
        </branch>
        <branch name="OP">
            <wire x2="784" y1="704" y2="704" x1="624" />
            <wire x2="784" y1="704" y2="1680" x1="784" />
            <wire x2="1328" y1="1680" y2="1680" x1="784" />
        </branch>
        <iomarker fontsize="28" x="208" y="704" name="Start" orien="R180" />
        <branch name="Start">
            <wire x2="240" y1="704" y2="704" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="784" name="Reset" orien="R180" />
        <branch name="Reset">
            <wire x2="240" y1="784" y2="784" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="864" name="Clock" orien="R180" />
        <branch name="Code(2:0)">
            <wire x2="240" y1="944" y2="944" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="944" name="Code(2:0)" orien="R180" />
        <branch name="Clock">
            <wire x2="224" y1="864" y2="864" x1="208" />
            <wire x2="240" y1="864" y2="864" x1="224" />
            <wire x2="224" y1="864" y2="1216" x1="224" />
            <wire x2="848" y1="1216" y2="1216" x1="224" />
            <wire x2="848" y1="1216" y2="1328" x1="848" />
            <wire x2="864" y1="1328" y2="1328" x1="848" />
        </branch>
    </sheet>
</drawing>