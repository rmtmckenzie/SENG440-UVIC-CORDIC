<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Y(31:0)" />
        <signal name="XLXN_8" />
        <signal name="m(1:0)" />
        <signal name="XLXN_13" />
        <signal name="Z_out(31:0)" />
        <signal name="X_out(31:0)" />
        <signal name="Y_out(31:0)" />
        <signal name="X(31:0)" />
        <signal name="u" />
        <signal name="i(4:0)" />
        <signal name="XLXN_19(31:0)" />
        <signal name="XLXN_20(31:0)" />
        <signal name="Z(31:0)" />
        <signal name="Theta(31:0)" />
        <port polarity="Input" name="Y(31:0)" />
        <port polarity="Input" name="m(1:0)" />
        <port polarity="Output" name="Z_out(31:0)" />
        <port polarity="Output" name="X_out(31:0)" />
        <port polarity="Output" name="Y_out(31:0)" />
        <port polarity="Input" name="X(31:0)" />
        <port polarity="Input" name="u" />
        <port polarity="Input" name="i(4:0)" />
        <port polarity="Input" name="Z(31:0)" />
        <port polarity="Input" name="Theta(31:0)" />
        <blockdef name="AddSub">
            <timestamp>2014-7-15T21:28:33</timestamp>
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
            <timestamp>2014-7-15T22:3:40</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Neg">
            <timestamp>2014-7-15T21:28:47</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
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
        <blockdef name="X_AddSub">
            <timestamp>2014-7-15T21:29:58</timestamp>
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
        </blockdef>
        <block symbolname="AddSub" name="XLXI_1">
            <blockpin signalname="u" name="sel" />
            <blockpin signalname="Y(31:0)" name="a_in(31:0)" />
            <blockpin signalname="XLXN_19(31:0)" name="b_in(31:0)" />
            <blockpin signalname="Y_out(31:0)" name="val_out(31:0)" />
        </block>
        <block symbolname="Shifter" name="XLXI_4">
            <blockpin signalname="i(4:0)" name="i(4:0)" />
            <blockpin signalname="XLXN_19(31:0)" name="val_out(31:0)" />
            <blockpin signalname="X(31:0)" name="val_in(31:0)" />
        </block>
        <block symbolname="Shifter" name="XLXI_5">
            <blockpin signalname="i(4:0)" name="i(4:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="val_out(31:0)" />
            <blockpin signalname="Y(31:0)" name="val_in(31:0)" />
        </block>
        <block symbolname="Neg" name="XLXI_7">
            <blockpin signalname="u" name="u" />
            <blockpin signalname="m(1:0)" name="m_in(1:0)" />
            <blockpin signalname="XLXN_8" name="sel" />
        </block>
        <block symbolname="AddSub" name="XLXI_8">
            <blockpin signalname="XLXN_13" name="sel" />
            <blockpin signalname="Z(31:0)" name="a_in(31:0)" />
            <blockpin signalname="Theta(31:0)" name="b_in(31:0)" />
            <blockpin signalname="Z_out(31:0)" name="val_out(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="u" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="X_AddSub" name="XLXI_13">
            <blockpin signalname="XLXN_8" name="sel" />
            <blockpin signalname="X(31:0)" name="a_in(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="b_in(31:0)" />
            <blockpin signalname="m(1:0)" name="m(1:0)" />
            <blockpin signalname="X_out(31:0)" name="val_out(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="336" y="1792" name="XLXI_4" orien="R0">
        </instance>
        <instance x="336" y="1024" name="XLXI_5" orien="R0">
        </instance>
        <instance x="960" y="1728" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="912" y1="736" y2="736" x1="880" />
            <wire x2="912" y1="736" y2="800" x1="912" />
            <wire x2="992" y1="800" y2="800" x1="912" />
        </branch>
        <branch name="m(1:0)">
            <wire x2="240" y1="800" y2="800" x1="112" />
            <wire x2="496" y1="800" y2="800" x1="240" />
            <wire x2="240" y1="800" y2="1104" x1="240" />
            <wire x2="880" y1="1104" y2="1104" x1="240" />
            <wire x2="992" y1="992" y2="992" x1="880" />
            <wire x2="880" y1="992" y2="1104" x1="880" />
        </branch>
        <iomarker fontsize="28" x="112" y="800" name="m(1:0)" orien="R180" />
        <iomarker fontsize="28" x="112" y="736" name="u" orien="R180" />
        <instance x="944" y="416" name="XLXI_8" orien="R0">
        </instance>
        <iomarker fontsize="28" x="128" y="928" name="Y(31:0)" orien="R180" />
        <branch name="Y(31:0)">
            <wire x2="176" y1="928" y2="928" x1="128" />
            <wire x2="336" y1="928" y2="928" x1="176" />
            <wire x2="176" y1="928" y2="1632" x1="176" />
            <wire x2="960" y1="1632" y2="1632" x1="176" />
        </branch>
        <instance x="592" y="288" name="XLXI_9" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="944" y1="256" y2="256" x1="816" />
        </branch>
        <instance x="992" y="1024" name="XLXI_13" orien="R0">
        </instance>
        <branch name="Z_out(31:0)">
            <wire x2="1360" y1="256" y2="256" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1360" y="256" name="Z_out(31:0)" orien="R0" />
        <branch name="X_out(31:0)">
            <wire x2="1408" y1="800" y2="800" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="800" name="X_out(31:0)" orien="R0" />
        <branch name="Y_out(31:0)">
            <wire x2="1376" y1="1568" y2="1568" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1376" y="1568" name="Y_out(31:0)" orien="R0" />
        <instance x="496" y="832" name="XLXI_7" orien="R0">
        </instance>
        <branch name="u">
            <wire x2="144" y1="736" y2="736" x1="112" />
            <wire x2="256" y1="736" y2="736" x1="144" />
            <wire x2="496" y1="736" y2="736" x1="256" />
            <wire x2="144" y1="736" y2="1568" x1="144" />
            <wire x2="960" y1="1568" y2="1568" x1="144" />
            <wire x2="256" y1="256" y2="736" x1="256" />
            <wire x2="592" y1="256" y2="256" x1="256" />
        </branch>
        <branch name="X(31:0)">
            <wire x2="208" y1="864" y2="864" x1="112" />
            <wire x2="992" y1="864" y2="864" x1="208" />
            <wire x2="208" y1="864" y2="1696" x1="208" />
            <wire x2="336" y1="1696" y2="1696" x1="208" />
        </branch>
        <iomarker fontsize="28" x="112" y="864" name="X(31:0)" orien="R180" />
        <branch name="i(4:0)">
            <wire x2="336" y1="992" y2="992" x1="320" />
            <wire x2="320" y1="992" y2="1760" x1="320" />
            <wire x2="336" y1="1760" y2="1760" x1="320" />
            <wire x2="320" y1="1760" y2="1856" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1856" name="i(4:0)" orien="R90" />
        <branch name="XLXN_19(31:0)">
            <wire x2="832" y1="1824" y2="1824" x1="720" />
            <wire x2="832" y1="1696" y2="1824" x1="832" />
            <wire x2="960" y1="1696" y2="1696" x1="832" />
        </branch>
        <branch name="XLXN_20(31:0)">
            <wire x2="848" y1="1056" y2="1056" x1="720" />
            <wire x2="848" y1="928" y2="1056" x1="848" />
            <wire x2="992" y1="928" y2="928" x1="848" />
        </branch>
        <branch name="Z(31:0)">
            <wire x2="928" y1="320" y2="320" x1="240" />
            <wire x2="944" y1="320" y2="320" x1="928" />
        </branch>
        <branch name="Theta(31:0)">
            <wire x2="928" y1="384" y2="384" x1="224" />
            <wire x2="944" y1="384" y2="384" x1="928" />
        </branch>
        <iomarker fontsize="28" x="224" y="384" name="Theta(31:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="320" name="Z(31:0)" orien="R180" />
    </sheet>
</drawing>