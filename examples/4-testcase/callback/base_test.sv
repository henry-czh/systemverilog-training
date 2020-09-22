class base_test extends environment;

	function new(string name);
		super.new(name);
	endfunction

	task run_test();
		super.build();
		super.connect();
		super.run();
		super.drain_time(100);
	endtask

endclass
