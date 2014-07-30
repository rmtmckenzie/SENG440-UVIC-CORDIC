<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_8" />
        <signal name="XLXN_23(1:0)" />
        <signal name="Y(31:0)" />
        <signal name="XLXN_13" />
        <signal name="X_out(31:0)" />
        <signal name="u">
        </signal>
        <signal name="X(31:0)" />
        <signal name="Z(31:0)" />
        <signal name="Theta(31:0)" />
        <signal name="XLXN_36(31:0)" />
        <signal name="Y_out(31:0)" />
        <signal name="XLXN_41(31:0)" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43(31:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="XLXN_45(31:0)" />
        <signal name="XLXN_46(31:0)" />
        <signal name="XLXN_47(4:0)" />
        <signal name="i(4:0)" />
        <signal name="XLXN_49(31:0)" />
        <signal name="XLXN_50(31:0)" />
        <signal name="XLXN_51(31:0)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="XLXN_54" />
        <signal name="Z_out(31:0)" />
        <signal name="XLXN_56(31:0)" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <port polarity="Input" name="Y(31:0)" />
        <port polarity="Output" name="X_out(31:0)" />
        <port polarity="Input" name="X(31:0)" />
        <port polarity="Input" name="Z(31:0)" />
        <port polarity="Input" name="Theta(31:0)" />
        <port polarity="Output" name="Y_out(31:0)" />
        <port polarity="Input" name="i(4:0)" />
        <port polarity="Output" name="Z_out(31:0)" />
        <blockdef name="AddSub">
            <timestamp>2014-7-30T19:37:41</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Shifter">
            <timestamp>2014-7-30T19:38:34</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="Comparator">
            <timestamp>2014-7-30T19:53:21</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="Shifter" name="XLXI_5">
            <blockpin signalname="Y(31:0)" name="val_in(31:0)" />
            <blockpin signalname="i(4:0)" name="i(4:0)" />
            <blockpin signalname="XLXN_36(31:0)" name="val_out(31:0)" />
        </block>
        <block symbolname="AddSub" name="XLXI_28">
            <blockpin signalname="u" name="sel" />
            <blockpin signalname="X(31:0)" name="a_in(31:0)" />
            <blockpin signalname="XLXN_36(31:0)" name="b_in(31:0)" />
            <blockpin signalname="X_out(31:0)" name="val_out(31:0)" />
        </block>
        <block symbolname="AddSub" name="XLXI_1">
            <blockpin signalname="u" name="sel" />
            <blockpin signalname="Y(31:0)" name="a_in(31:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="b_in(31:0)" />
            <blockpin signalname="Y_out(31:0)" name="val_out(31:0)" />
        </block>
        <block symbolname="Shifter" name="XLXI_4">
            <blockpin signalname="X(31:0)" name="val_in(31:0)" />
            <blockpin signalname="i(4:0)" name="i(4:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="val_out(31:0)" />
        </block>
        <block symbolname="Comparator" name="XLXI_31">
            <blockpin signalname="Z(31:0)" name="Zi(31:0)" />
            <blockpin signalname="u" name="Output" />
        </block>
        <block symbolname="inv" name="XLXI_32">
            <blockpin signalname="u" name="I" />
            <blockpin signalname="u" name="O" />
        </block>
        <block symbolname="AddSub" name="XLXI_8">
            <blockpin signalname="u" name="sel" />
            <blockpin signalname="Z(31:0)" name="a_in(31:0)" />
            <blockpin signalname="Theta(31:0)" name="b_in(31:0)" />
            <blockpin signalname="Z_out(31:0)" name="val_out(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1072" y="1088" name="XLXI_5" orien="R0">
        </instance>
        <branch name="X_out(31:0)">
            <wire x2="2144" y1="864" y2="864" x1="2112" />
        </branch>
        <branch name="X(31:0)">
            <wire x2="944" y1="928" y2="928" x1="848" />
            <wire x2="1728" y1="928" y2="928" x1="944" />
            <wire x2="944" y1="928" y2="1392" x1="944" />
            <wire x2="1024" y1="1392" y2="1392" x1="944" />
        </branch>
        <branch name="Z(31:0)">
            <wire x2="464" y1="544" y2="544" x1="416" />
            <wire x2="464" y1="544" y2="752" x1="464" />
            <wire x2="480" y1="752" y2="752" x1="464" />
            <wire x2="1088" y1="544" y2="544" x1="464" />
            <wire x2="1088" y1="544" y2="640" x1="1088" />
            <wire x2="1728" y1="640" y2="640" x1="1088" />
        </branch>
        <branch name="Theta(31:0)">
            <wire x2="1728" y1="704" y2="704" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="2144" y="864" name="X_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="848" y="928" name="X(31:0)" orien="R180" />
        <iomarker fontsize="28" x="448" y="992" name="Y(31:0)" orien="R180" />
        <instance x="1728" y="1024" name="XLXI_28" orien="R0">
        </instance>
        <branch name="XLXN_36(31:0)">
            <wire x2="1728" y1="992" y2="992" x1="1456" />
        </branch>
        <branch name="Y(31:0)">
            <wire x2="912" y1="992" y2="992" x1="448" />
            <wire x2="1072" y1="992" y2="992" x1="912" />
            <wire x2="912" y1="992" y2="1296" x1="912" />
            <wire x2="1712" y1="1296" y2="1296" x1="912" />
        </branch>
        <branch name="Y_out(31:0)">
            <wire x2="2176" y1="1232" y2="1232" x1="2096" />
        </branch>
        <branch name="XLXN_41(31:0)">
            <wire x2="1696" y1="1392" y2="1392" x1="1408" />
            <wire x2="1712" y1="1360" y2="1360" x1="1696" />
            <wire x2="1696" y1="1360" y2="1392" x1="1696" />
        </branch>
        <instance x="1712" y="1392" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2176" y="1232" name="Y_out(31:0)" orien="R0" />
        <instance x="1024" y="1488" name="XLXI_4" orien="R0">
        </instance>
        <branch name="i(4:0)">
            <wire x2="1072" y1="1056" y2="1056" x1="992" />
            <wire x2="992" y1="1056" y2="1456" x1="992" />
            <wire x2="1008" y1="1456" y2="1456" x1="992" />
            <wire x2="1024" y1="1456" y2="1456" x1="1008" />
            <wire x2="1008" y1="1456" y2="1552" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1008" y="1552" name="i(4:0)" orien="R90" />
        <instance x="480" y="848" name="XLXI_31" orien="R0">
        </instance>
        <instance x="1376" y="1264" name="XLXI_32" orien="R0" />
        <branch name="u">
            <wire x2="880" y1="688" y2="688" x1="864" />
            <wire x2="880" y1="688" y2="800" x1="880" />
            <wire x2="992" y1="800" y2="800" x1="880" />
            <wire x2="1648" y1="800" y2="800" x1="992" />
            <wire x2="1648" y1="800" y2="864" x1="1648" />
            <wire x2="1728" y1="864" y2="864" x1="1648" />
            <wire x2="880" y1="800" y2="1232" x1="880" />
            <wire x2="1376" y1="1232" y2="1232" x1="880" />
            <wire x2="1728" y1="576" y2="576" x1="992" />
            <wire x2="992" y1="576" y2="800" x1="992" />
        </branch>
        <branch name="u">
            <wire x2="1712" y1="1232" y2="1232" x1="1600" />
        </branch>
        <branch name="Z_out(31:0)">
            <wire x2="2144" y1="576" y2="576" x1="2112" />
        </branch>
        <instance x="1728" y="736" name="XLXI_8" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2144" y="576" name="Z_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1504" y="704" name="Theta(31:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="544" name="Z(31:0)" orien="R180" />
    </sheet>
</drawing>