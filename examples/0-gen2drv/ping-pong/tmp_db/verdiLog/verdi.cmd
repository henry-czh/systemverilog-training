verdiWindowResize -win $_Verdi_1 "65" "24" "1301" "744"
debImport "-f" "../test.f"
debLoadSimResult \
           /home/czh/systemverilog/sv_example/examples/0-gen2drv/ping-pong/tmp_db/novas.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
srcHBSelect "top_tb.dut" -win $_nTrace1
srcHBSelect "top_tb.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.dut" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 8.578176 -snap {("G1" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "top_tb.test" -win $_nTrace1
srcHBSelect "top_tb.test" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.test" -delim "."
srcDeselectAll -win $_nTrace1
srcHBSelect "top_tb.vif" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.vif" -delim "."
srcHBSelect "top_tb.vif" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.vif" -delim "."
srcHBSelect "top_tb.test" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.test" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "test" -win $_nTrace1
srcAction -pos 17 3 2 -win $_nTrace1 -name "test" -ctrlKey off
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetCursor -win $_nWave2 108.916216 -snap {("G1" 1)}
wvChangeDisplayAttr -win $_nWave2 -c ID_GREEN5 -lw 1 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_GREEN5 -lw 3 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_GREEN5 -lw 1 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_GREEN5 -lw 1 -ls solid
wvSetCursor -win $_nWave2 40.331757 -snap {("G2" 0)}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
tfgBehaviorAnalysis -incr -clockSkew 0 -loopUnroll 0 -bboxEmptyModule 0 -bboxIgnoreProtected 0 -cellModel 0 -confined_flattern 32768 -ans 1
tfgNWNodeDisplayFaninSignal  {top_tb.dut.addr[7:0]#105}
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcDeselectAll -win $_nTrace1
debExit
