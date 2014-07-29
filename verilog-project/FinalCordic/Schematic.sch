<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="rst" />
        <signal name="Start" />
        <signal name="clk" />
        <signal name="X_In(31:0)" />
        <signal name="Y_In(31:0)" />
        <signal name="Z_In(31:0)" />
        <signal name="Code(2:0)" />
        <signal name="bit_out" />
        <signal name="done" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="X_In(31:0)" />
        <port polarity="Input" name="Y_In(31:0)" />
        <port polarity="Input" name="Z_In(31:0)" />
        <port polarity="Input" name="Code(2:0)" />
        <port polarity="Output" name="bit_out" />
        <port polarity="Output" name="done" />
        <blockdef name="Cordic_UAR_1">
            <timestamp>2014-7-23T21:28:31</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="256" x="64" y="-448" height="512" />
        </blockdef>
        <block symbolname="Cordic_UAR_1" name="XLXI_2">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="X_In(31:0)" name="x_in(31:0)" />
            <blockpin signalname="Y_In(31:0)" name="y_in(31:0)" />
            <blockpin signalname="Z_In(31:0)" name="z_in(31:0)" />
            <blockpin signalname="Code(2:0)" name="code(2:0)" />
            <blockpin signalname="bit_out" name="bit_out" />
            <blockpin signalname="done" name="done_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1616" y="1360" name="XLXI_2" orien="R0">
        </instance>
        <branch name="rst">
            <wire x2="1616" y1="944" y2="944" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1584" y="944" name="rst" orien="R180" />
        <branch name="Start">
            <wire x2="1616" y1="1008" y2="1008" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1008" name="Start" orien="R180" />
        <branch name="clk">
            <wire x2="1616" y1="1072" y2="1072" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1072" name="clk" orien="R180" />
        <branch name="X_In(31:0)">
            <wire x2="1616" y1="1136" y2="1136" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1136" name="X_In(31:0)" orien="R180" />
        <branch name="Y_In(31:0)">
            <wire x2="1616" y1="1200" y2="1200" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1200" name="Y_In(31:0)" orien="R180" />
        <branch name="Z_In(31:0)">
            <wire x2="1616" y1="1264" y2="1264" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1264" name="Z_In(31:0)" orien="R180" />
        <branch name="Code(2:0)">
            <wire x2="1616" y1="1328" y2="1328" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1328" name="Code(2:0)" orien="R180" />
        <branch name="bit_out">
            <wire x2="2032" y1="944" y2="944" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="944" name="bit_out" orien="R0" />
        <branch name="done">
            <wire x2="2032" y1="1392" y2="1392" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1392" name="done" orien="R0" />
    </sheet>
</drawing>