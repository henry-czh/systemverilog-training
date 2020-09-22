program automatic test;

	`include "environment.sv"
	environment env;

	initial begin
		env=new();
		env.avif = top_tb.vif;
		env.build();
		env.connect();
		env.run();
		env.drain_time(100);
	end
	initial begin
		#500ns;
		$finish;
	end
endprogram
