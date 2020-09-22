module top_tb;

	reg clk;
	reg rst_n;

	dut_if vif(clk,rst_n);

	dut dut(
		.clk 	(vif.clk 	),
		.rst_n	(vif.rst_n	),
		.valid	(vif.valid	),
		.rw		(vif.rw		),
		.addr	(vif.addr	),
		.ready	(vif.ready	),
		.data   (vif.data   )
	);

	test test();

	always #5 clk = ~clk;

	initial begin
		clk = 0;
		rst_n = 0;
		#50
		rst_n = 1;
	end
	initial begin
		$fsdbDumpvars(0,"top_tb");
	end
endmodule
