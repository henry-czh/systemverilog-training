class environment;

	default_gen_cbs cbs[$];

	generator	default_gen;
	generator 	blueprint;
	driver 	 	drv;

	mailbox		gen2drv;

	virtual dut_if.tb avif;

	string c_name;
	function new(string name);
		gen2drv=new(1);
		this.c_name=name;
	endfunction

	task build();
		blueprint=new();
		default_gen = blueprint;
		cbs[0].set_default_gen(default_gen);
		drv=new();
	endtask

	//virtual task set_default_gen();
	//	blueprint=new();
	//	default_gen = blueprint;
	//endtask

	task connect();
		default_gen.gen2drv=gen2drv;
		drv.gen2drv=gen2drv;
		drv.avif = top_tb.vif;
	endtask

	task run;
		fork
			drv.run();
		join_none
		default_gen.run();
	endtask

	task drain_time(int delay_time);
		#delay_time;
	endtask

endclass
