wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/home/czh/systemverilog/sv_example/examples/0-gen2drv/event/tmp_db/novas.fsdb}
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
nsMsgSwitchTab -tab trace
nsMsgSwitchTab -tab cmpl
nsMsgSwitchTab -tab intercon
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/czh/systemverilog/sv_example/examples/0-gen2drv/event/tmp_db/novas.fsdb}
wvZoom -win $_nWave3 0.000000 0.468149
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_\$novas_unit__1"
wvGetSignalSetScope -win $_nWave3 "/top_tb/dut"
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top_tb/dut/addr\[7:0\]} \
{/top_tb/dut/clk} \
{/top_tb/dut/data\[7:0\]} \
{/top_tb/dut/din\[7:0\]} \
{/top_tb/dut/dout\[7:0\]} \
{/top_tb/dut/mem_rw} \
{/top_tb/dut/ready} \
{/top_tb/dut/rst_n} \
{/top_tb/dut/rw} \
{/top_tb/dut/valid} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave3 {("G1" 10)}
wvGetSignalClose -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 63.980315 -snap {("G2" 0)}
wvSelectGroup -win $_nWave3 {G2}
wvSetCursor -win $_nWave3 107.674189 -snap {("G1" 7)}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetCursor -win $_nWave3 80.699910 -snap {("G1" 9)}
wvSetCursor -win $_nWave3 135.094324 -snap {("G1" 1)}
wvSetCursor -win $_nWave3 114.584955 -snap {("G1" 1)}
wvSetCursor -win $_nWave3 147.578288 -snap {("G1" 2)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 93.629730 -snap {("G1" 3)}
wvSelectGroup -win $_nWave3 {G2}
wvSelectSignal -win $_nWave3 {( "G1" 9 )} 
wvSelectGroup -win $_nWave3 {G2}
wvSelectSignal -win $_nWave3 {( "G1" 8 )} 
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 53.948559 -snap {("G1" 10)}
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSetCursor -win $_nWave3 35.915957 -snap {("G2" 0)}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetCursor -win $_nWave3 84.324422 -snap {("G1" 5)}
wvBusWaveform -win $_nWave3 -digital
wvSetCursor -win $_nWave3 68.931869 -snap {("G1" 8)}
wvSetCursor -win $_nWave3 84.770583 -snap {("G1" 5)}
wvZoom -win $_nWave3 84.770583 88.786031
wvSetCursor -win $_nWave3 85.748851 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 85.411386 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 85.354510 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 85.320384 -snap {("G1" 6)}
wvSetCursor -win $_nWave3 85.263508 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 85.540305 -snap {("G1" 5)}
wvSetCursor -win $_nWave3 85.540305 -snap {("G1" 5)}
wvZoom -win $_nWave3 84.998087 85.138381
wvSetCursor -win $_nWave3 85.170891 -snap {("G1" 4)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
debExit
