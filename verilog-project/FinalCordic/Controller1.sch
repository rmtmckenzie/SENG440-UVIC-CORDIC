<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Start" />
        <signal name="rst" />
        <signal name="clk" />
        <signal name="Code(2:0)" />
        <signal name="op" />
        <signal name="input" />
        <signal name="output" />
        <signal name="m(1:0)" />
        <signal name="i(4:0)" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Code(2:0)" />
        <port polarity="Output" name="op" />
        <port polarity="Output" name="input" />
        <port polarity="Output" name="output" />
        <port polarity="Output" name="m(1:0)" />
        <port polarity="Output" name="i(4:0)" />
        <blockdef name="Controller">
            <timestamp>2014-7-17T22:2:9</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
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
        </blockdef>
        <block symbolname="Controller" name="XLXI_1">
            <blockpin signalname="Start" name="start" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Code(2:0)" name="code(2:0)" />
            <blockpin signalname="op" name="op" />
            <blockpin signalname="input" name="input_en" />
            <blockpin signalname="output" name="output_en" />
            <blockpin signalname="m(1:0)" name="m(1:0)" />
            <blockpin signalname="i(4:0)" name="i(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1712" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Start">
            <wire x2="1712" y1="880" y2="880" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1680" y="880" name="Start" orien="R180" />
        <branch name="rst">
            <wire x2="1712" y1="960" y2="960" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1680" y="960" name="rst" orien="R180" />
        <branch name="clk">
            <wire x2="1712" y1="1040" y2="1040" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1040" name="clk" orien="R180" />
        <branch name="Code(2:0)">
            <wire x2="1712" y1="1120" y2="1120" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1120" name="Code(2:0)" orien="R180" />
        <branch name="op">
            <wire x2="2128" y1="880" y2="880" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2128" y="880" name="op" orien="R0" />
        <branch name="input">
            <wire x2="2128" y1="944" y2="944" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2128" y="944" name="input" orien="R0" />
        <branch name="output">
            <wire x2="2128" y1="1008" y2="1008" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2128" y="1008" name="output" orien="R0" />
        <branch name="m(1:0)">
            <wire x2="2128" y1="1072" y2="1072" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2128" y="1072" name="m(1:0)" orien="R0" />
        <branch name="i(4:0)">
            <wire x2="2128" y1="1136" y2="1136" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2128" y="1136" name="i(4:0)" orien="R0" />
    </sheet>
</drawing>