program automatic test;

	`include "environment.sv"
	environment env;

	initial begin
		env=new();
		env.avif = top_tb.vif;
		$display($sformatf("%t: test\t-->connect vif to env ...",$time));
		env.build();
		env.connect();
		env.run();
		env.drain_time(100);
	end
endprogram
