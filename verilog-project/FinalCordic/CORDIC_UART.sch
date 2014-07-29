<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="XLXN_2(31:0)" />
        <signal name="XLXN_3(31:0)" />
        <signal name="X_In(31:0)" />
        <signal name="Y_In(31:0)" />
        <signal name="Z_In(31:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="Start" />
        <signal name="Code(2:0)" />
        <signal name="Sel(2:0)" />
        <signal name="XLXN_4" />
        <port polarity="Input" name="X_In(31:0)" />
        <port polarity="Input" name="Y_In(31:0)" />
        <port polarity="Input" name="Z_In(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="Code(2:0)" />
        <port polarity="Input" name="Sel(2:0)" />
        <port polarity="Output" name="XLXN_4" />
        <blockdef name="SystemSchematic">
            <timestamp>2014-7-23T0:49:19</timestamp>
            <rect width="320" x="64" y="-448" height="448" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-428" height="24" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="parallel_2_serial">
            <timestamp>2014-7-23T0:48:41</timestamp>
            <rect width="256" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-512" y2="-512" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="SystemSchematic" name="XLXI_1">
            <blockpin signalname="X_In(31:0)" name="X_Input(31:0)" />
            <blockpin signalname="Y_In(31:0)" name="Y_Input(31:0)" />
            <blockpin signalname="Z_In(31:0)" name="Z_Input(31:0)" />
            <blockpin signalname="clk" name="Clock" />
            <blockpin signalname="rst" name="Reset" />
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="Code(2:0)" name="Code(2:0)" />
            <blockpin signalname="XLXN_1(31:0)" name="X_Output(31:0)" />
            <blockpin signalname="XLXN_2(31:0)" name="Y_Output(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="Z_Output(31:0)" />
        </block>
        <block symbolname="parallel_2_serial" name="XLXI_2">
            <blockpin name="done" />
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_1(31:0)" name="x(31:0)" />
            <blockpin signalname="XLXN_2(31:0)" name="y(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="z(31:0)" />
            <blockpin signalname="Sel(2:0)" name="sel(2:0)" />
            <blockpin signalname="XLXN_4" name="bit_out" />
            <blockpin name="slow_clk_out" />
            <blockpin name="ns_send_data" />
            <blockpin name="ps_send_data" />
            <blockpin name="ns_ascii" />
            <blockpin name="ps_ascii" />
            <blockpin name="ns_uart" />
            <blockpin name="ps_uart" />
            <blockpin name="uart_ready" />
            <blockpin name="ascii_ready" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="1344" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1616" y="1392" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="1472" y1="928" y2="928" x1="1344" />
            <wire x2="1472" y1="928" y2="1072" x1="1472" />
            <wire x2="1616" y1="1072" y2="1072" x1="1472" />
        </branch>
        <branch name="XLXN_2(31:0)">
            <wire x2="1600" y1="1120" y2="1120" x1="1344" />
            <wire x2="1600" y1="1120" y2="1168" x1="1600" />
            <wire x2="1616" y1="1168" y2="1168" x1="1600" />
        </branch>
        <branch name="XLXN_3(31:0)">
            <wire x2="1472" y1="1312" y2="1312" x1="1344" />
            <wire x2="1472" y1="1264" y2="1312" x1="1472" />
            <wire x2="1616" y1="1264" y2="1264" x1="1472" />
        </branch>
        <branch name="X_In(31:0)">
            <wire x2="896" y1="928" y2="928" x1="848" />
        </branch>
        <branch name="Y_In(31:0)">
            <wire x2="896" y1="992" y2="992" x1="848" />
        </branch>
        <branch name="Z_In(31:0)">
            <wire x2="896" y1="1056" y2="1056" x1="848" />
        </branch>
        <branch name="clk">
            <wire x2="896" y1="1120" y2="1120" x1="848" />
        </branch>
        <branch name="rst">
            <wire x2="896" y1="1184" y2="1184" x1="848" />
        </branch>
        <branch name="Start">
            <wire x2="896" y1="1248" y2="1248" x1="848" />
        </branch>
        <branch name="Code(2:0)">
            <wire x2="896" y1="1312" y2="1312" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="928" name="X_In(31:0)" orien="R180" />
        <iomarker fontsize="28" x="848" y="992" name="Y_In(31:0)" orien="R180" />
        <iomarker fontsize="28" x="848" y="1056" name="Z_In(31:0)" orien="R180" />
        <iomarker fontsize="28" x="848" y="1120" name="clk" orien="R180" />
        <iomarker fontsize="28" x="848" y="1184" name="rst" orien="R180" />
        <iomarker fontsize="28" x="848" y="1248" name="Start" orien="R180" />
        <iomarker fontsize="28" x="848" y="1312" name="Code(2:0)" orien="R180" />
        <branch name="Sel(2:0)">
            <wire x2="1616" y1="1360" y2="1360" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1360" name="Sel(2:0)" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="2032" y1="784" y2="784" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="784" name="XLXN_4" orien="R0" />
    </sheet>
</drawing>