class environment;

	generator	gen;
	driver 	 	drv;

	mailbox		gen2drv;

	virtual dut_if.tb avif;

	function new();
		gen2drv=new(); //dynamic
	endfunction

	task build();
		gen=new(gen2drv);
		drv=new(gen2drv);
	endtask

	function connect();
		drv.avif = avif;
	endfunction

	task run;
		fork
			gen.run();
		join_none

		drv.run();
	endtask

	task drain_time(int delay_time);
		#delay_time;
	endtask

endclass
