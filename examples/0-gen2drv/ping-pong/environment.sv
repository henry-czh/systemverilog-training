class environment;

	generator	gen;
	driver 	 	drv;

	mailbox		gen2drv;

	virtual dut_if.tb avif;

	function new();
		$display($sformatf("@%0t: env::new\t-->",$time));
		gen2drv=new(1);
	endfunction

	task build();
		$display($sformatf("@%0t: env::build\t-->",$time));
		gen=new(gen2drv);
		drv=new(gen2drv);
	endtask

	function connect();
		$display($sformatf("@%0t: env::connect\t-->",$time));
		drv.avif = avif;
	endfunction

	task run;
		$display($sformatf("@%0t: env::run\t-->",$time));
		fork
			drv.run();
		join_none
		gen.run();
	endtask

	task drain_time(int delay_time);
		$display($sformatf("@%0t: env::drain_time\t-->will keep %d ns",$time,delay_time));
		#delay_time;
	endtask

endclass
