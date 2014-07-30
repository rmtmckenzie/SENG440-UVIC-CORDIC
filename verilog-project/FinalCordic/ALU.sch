<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_65(15:0)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_71(15:0)" />
        <signal name="XLXN_82(31:0)" />
        <signal name="XLXN_85(15:0)" />
        <signal name="XLXN_87(15:0)" />
        <signal name="XLXN_89" />
        <signal name="XLXN_98(31:0)" />
        <signal name="XLXN_101(15:0)" />
        <signal name="XLXN_103(15:0)" />
        <signal name="XLXN_105" />
        <signal name="XLXN_118(31:0)" />
        <signal name="XLXN_120(15:0)" />
        <signal name="XLXN_122(15:0)" />
        <signal name="XLXN_124" />
        <signal name="XLXN_128(15:0)" />
        <signal name="X(31:0)" />
        <signal name="XLXN_36(31:0)" />
        <signal name="Y(31:0)" />
        <signal name="XLXN_41(31:0)" />
        <signal name="XLXN_138(31:0)" />
        <signal name="XLXN_64(15:0)" />
        <signal name="XLXN_140(15:0)" />
        <signal name="XLXN_66(15:0)" />
        <signal name="XLXN_142(15:0)" />
        <signal name="XLXN_70" />
        <signal name="XLXN_144" />
        <signal name="XLXN_69" />
        <signal name="XLXN_107(15:0)" />
        <signal name="XLXN_108(15:0)" />
        <signal name="XLXN_148(15:0)" />
        <signal name="Arm_In1(31:0)" />
        <signal name="Arm_In2(31:0)" />
        <signal name="Arm_Out(31:0)" />
        <signal name="XLXN_161(15:0)" />
        <signal name="XLXN_162(15:0)" />
        <signal name="XLXN_157(15:0)" />
        <signal name="XLXN_158" />
        <signal name="XLXN_159(15:0)" />
        <signal name="XLXN_160(15:0)" />
        <signal name="XLXN_169(15:0)" />
        <signal name="Arm_In(31:0)" />
        <signal name="Arm_Out(15:0)" />
        <port polarity="Input" name="Arm_In1(31:0)" />
        <port polarity="Input" name="Arm_In2(31:0)" />
        <port polarity="Output" name="Arm_Out(31:0)" />
        <port polarity="Input" name="Arm_In(31:0)" />
        <port polarity="Output" name="Arm_Out(15:0)" />
        <blockdef name="AddSub">
            <timestamp>2014-7-30T20:57:36</timestamp>
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
            <timestamp>2014-7-30T20:57:43</timestamp>
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
            <timestamp>2014-7-30T20:57:46</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Spliter">
            <timestamp>2014-7-30T21:6:53</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Combiner">
            <timestamp>2014-7-30T21:33:28</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Lookup_Table">
            <timestamp>2014-7-30T21:56:43</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Shifter" name="XLXI_5">
            <blockpin signalname="Y(31:0)" name="val_in(15:0)" />
            <blockpin signalname="XLXN_64(15:0)" name="i(15:0)" />
            <blockpin signalname="XLXN_36(31:0)" name="val_out(15:0)" />
        </block>
        <block symbolname="AddSub" name="XLXI_28">
            <blockpin signalname="XLXN_69" name="sel" />
            <blockpin signalname="X(31:0)" name="a_in(15:0)" />
            <blockpin signalname="XLXN_36(31:0)" name="b_in(15:0)" />
            <blockpin signalname="XLXN_107(15:0)" name="val_out(15:0)" />
        </block>
        <block symbolname="AddSub" name="XLXI_1">
            <blockpin signalname="XLXN_70" name="sel" />
            <blockpin signalname="Y(31:0)" name="a_in(15:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="b_in(15:0)" />
            <blockpin signalname="XLXN_108(15:0)" name="val_out(15:0)" />
        </block>
        <block symbolname="Shifter" name="XLXI_4">
            <blockpin signalname="X(31:0)" name="val_in(15:0)" />
            <blockpin signalname="XLXN_64(15:0)" name="i(15:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="val_out(15:0)" />
        </block>
        <block symbolname="Comparator" name="XLXI_31">
            <blockpin signalname="XLXN_66(15:0)" name="Zi(15:0)" />
            <blockpin signalname="XLXN_69" name="Output" />
        </block>
        <block symbolname="inv" name="XLXI_32">
            <blockpin signalname="XLXN_69" name="I" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="Spliter" name="XLXI_35">
            <blockpin signalname="Arm_In1(31:0)" name="Arm1(31:0)" />
            <blockpin signalname="Arm_In2(31:0)" name="Arm2(31:0)" />
            <blockpin signalname="X(31:0)" name="X(15:0)" />
            <blockpin signalname="Y(31:0)" name="Y(15:0)" />
            <blockpin signalname="XLXN_66(15:0)" name="Z(15:0)" />
            <blockpin signalname="XLXN_64(15:0)" name="i(15:0)" />
        </block>
        <block symbolname="Combiner" name="XLXI_53">
            <blockpin signalname="XLXN_107(15:0)" name="X(15:0)" />
            <blockpin signalname="XLXN_108(15:0)" name="Y(15:0)" />
            <blockpin signalname="Arm_Out(31:0)" name="Arm_Out(31:0)" />
        </block>
        <block symbolname="Spliter" name="XLXI_51">
            <blockpin signalname="Arm_In(31:0)" name="Arm1(31:0)" />
            <blockpin name="Arm2(31:0)" />
            <blockpin name="X(15:0)" />
            <blockpin name="Y(15:0)" />
            <blockpin signalname="XLXN_157(15:0)" name="Z(15:0)" />
            <blockpin signalname="XLXN_159(15:0)" name="i(15:0)" />
        </block>
        <block symbolname="Comparator" name="XLXI_49">
            <blockpin signalname="XLXN_157(15:0)" name="Zi(15:0)" />
            <blockpin signalname="XLXN_158" name="Output" />
        </block>
        <block symbolname="AddSub" name="XLXI_48">
            <blockpin signalname="XLXN_158" name="sel" />
            <blockpin signalname="XLXN_157(15:0)" name="a_in(15:0)" />
            <blockpin signalname="XLXN_160(15:0)" name="b_in(15:0)" />
            <blockpin signalname="Arm_Out(15:0)" name="val_out(15:0)" />
        </block>
        <block symbolname="Lookup_Table" name="XLXI_70">
            <blockpin signalname="XLXN_159(15:0)" name="i(15:0)" />
            <blockpin signalname="XLXN_160(15:0)" name="theta(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="X(31:0)">
            <wire x2="1392" y1="544" y2="544" x1="1072" />
            <wire x2="1392" y1="544" y2="1008" x1="1392" />
            <wire x2="1472" y1="1008" y2="1008" x1="1392" />
            <wire x2="1392" y1="448" y2="544" x1="1392" />
            <wire x2="1968" y1="448" y2="448" x1="1392" />
            <wire x2="1968" y1="448" y2="544" x1="1968" />
            <wire x2="2176" y1="544" y2="544" x1="1968" />
        </branch>
        <branch name="XLXN_36(31:0)">
            <wire x2="2176" y1="608" y2="608" x1="1904" />
        </branch>
        <branch name="Y(31:0)">
            <wire x2="1360" y1="608" y2="608" x1="1072" />
            <wire x2="1520" y1="608" y2="608" x1="1360" />
            <wire x2="1360" y1="608" y2="912" x1="1360" />
            <wire x2="2160" y1="912" y2="912" x1="1360" />
        </branch>
        <branch name="XLXN_41(31:0)">
            <wire x2="2144" y1="1008" y2="1008" x1="1856" />
            <wire x2="2160" y1="976" y2="976" x1="2144" />
            <wire x2="2144" y1="976" y2="1008" x1="2144" />
        </branch>
        <branch name="XLXN_64(15:0)">
            <wire x2="1184" y1="736" y2="736" x1="1072" />
            <wire x2="1184" y1="736" y2="1072" x1="1184" />
            <wire x2="1472" y1="1072" y2="1072" x1="1184" />
            <wire x2="1520" y1="672" y2="672" x1="1184" />
            <wire x2="1184" y1="672" y2="736" x1="1184" />
        </branch>
        <branch name="XLXN_66(15:0)">
            <wire x2="1152" y1="672" y2="672" x1="1072" />
            <wire x2="1152" y1="592" y2="672" x1="1152" />
            <wire x2="1264" y1="592" y2="592" x1="1152" />
            <wire x2="1280" y1="304" y2="304" x1="1264" />
            <wire x2="1264" y1="304" y2="592" x1="1264" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="2160" y1="848" y2="848" x1="2128" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="1920" y1="240" y2="240" x1="1664" />
            <wire x2="1920" y1="240" y2="336" x1="1920" />
            <wire x2="2080" y1="336" y2="336" x1="1920" />
            <wire x2="2080" y1="336" y2="480" x1="2080" />
            <wire x2="2176" y1="480" y2="480" x1="2080" />
            <wire x2="2080" y1="480" y2="768" x1="2080" />
            <wire x2="1856" y1="768" y2="848" x1="1856" />
            <wire x2="1904" y1="848" y2="848" x1="1856" />
            <wire x2="2080" y1="768" y2="768" x1="1856" />
        </branch>
        <branch name="XLXN_107(15:0)">
            <wire x2="2576" y1="480" y2="480" x1="2560" />
            <wire x2="2576" y1="480" y2="640" x1="2576" />
            <wire x2="2608" y1="640" y2="640" x1="2576" />
        </branch>
        <branch name="XLXN_108(15:0)">
            <wire x2="2560" y1="848" y2="848" x1="2544" />
            <wire x2="2608" y1="704" y2="704" x1="2560" />
            <wire x2="2560" y1="704" y2="848" x1="2560" />
        </branch>
        <branch name="Arm_In1(31:0)">
            <wire x2="688" y1="544" y2="544" x1="656" />
        </branch>
        <branch name="Arm_In2(31:0)">
            <wire x2="688" y1="736" y2="736" x1="656" />
        </branch>
        <branch name="Arm_Out(31:0)">
            <wire x2="3024" y1="640" y2="640" x1="2992" />
        </branch>
        <instance x="1520" y="704" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2176" y="640" name="XLXI_28" orien="R0">
        </instance>
        <instance x="2160" y="1008" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1472" y="1104" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1280" y="400" name="XLXI_31" orien="R0">
        </instance>
        <instance x="1904" y="880" name="XLXI_32" orien="R0" />
        <instance x="688" y="768" name="XLXI_35" orien="R0">
        </instance>
        <instance x="2608" y="736" name="XLXI_53" orien="R0">
        </instance>
        <iomarker fontsize="28" x="656" y="544" name="Arm_In1(31:0)" orien="R180" />
        <iomarker fontsize="28" x="656" y="736" name="Arm_In2(31:0)" orien="R180" />
        <iomarker fontsize="28" x="3024" y="640" name="Arm_Out(31:0)" orien="R0" />
        <branch name="XLXN_157(15:0)">
            <wire x2="1104" y1="1744" y2="1744" x1="992" />
            <wire x2="1120" y1="1744" y2="1744" x1="1104" />
            <wire x2="1104" y1="1744" y2="1904" x1="1104" />
            <wire x2="1504" y1="1904" y2="1904" x1="1104" />
            <wire x2="1504" y1="1744" y2="1904" x1="1504" />
            <wire x2="1584" y1="1744" y2="1744" x1="1504" />
        </branch>
        <branch name="XLXN_158">
            <wire x2="1584" y1="1680" y2="1680" x1="1504" />
        </branch>
        <branch name="XLXN_159(15:0)">
            <wire x2="1008" y1="1808" y2="1808" x1="992" />
            <wire x2="1008" y1="1808" y2="2032" x1="1008" />
            <wire x2="1088" y1="2032" y2="2032" x1="1008" />
        </branch>
        <branch name="XLXN_160(15:0)">
            <wire x2="1568" y1="2032" y2="2032" x1="1472" />
            <wire x2="1584" y1="1808" y2="1808" x1="1568" />
            <wire x2="1568" y1="1808" y2="2032" x1="1568" />
        </branch>
        <branch name="Arm_In(31:0)">
            <wire x2="608" y1="1616" y2="1616" x1="576" />
        </branch>
        <branch name="Arm_Out(15:0)">
            <wire x2="2000" y1="1680" y2="1680" x1="1968" />
        </branch>
        <instance x="608" y="1840" name="XLXI_51" orien="R0">
        </instance>
        <instance x="1120" y="1840" name="XLXI_49" orien="R0">
        </instance>
        <instance x="1584" y="1840" name="XLXI_48" orien="R0">
        </instance>
        <instance x="1088" y="2064" name="XLXI_70" orien="R0">
        </instance>
        <iomarker fontsize="28" x="576" y="1616" name="Arm_In(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2000" y="1680" name="Arm_Out(15:0)" orien="R0" />
    </sheet>
</drawing>