class environment;

	generator	gen;
	driver 	 	drv;

	mailbox		gen2drv;
	event 		drv2gen;

	virtual dut_if.tb avif;

	function new();
		gen2drv=new();
	endfunction

	task build();
		gen=new(gen2drv,drv2gen);
		drv=new(gen2drv,drv2gen);
	endtask

	function connect();
		drv.avif = avif;
	endfunction

	task run;
		fork
			drv.run();
		join_none
		gen.run();
	endtask

	task drain_time(int delay_time);
		#delay_time;
	endtask

endclass
