class environment;

	generator	gen;
	driver 	 	drv;

	mailbox		gen2drv;

	virtual dut_if.tb avif;

	function new(virtual interface dut_if.tb vif);
		$display($sformatf("%t: env::new\t-->new vif ...",$time));
		this.avif=vif;
		gen2drv=new(1);
	endfunction

	task build();
		gen=new(gen2drv);
		$display($sformatf("%t: env::build\t-->send vif to driver...",$time));
		drv=new(gen2drv,avif);
	endtask

	function connect();
		//drv.avif = avif;
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
