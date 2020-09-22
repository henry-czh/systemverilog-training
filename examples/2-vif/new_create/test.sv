program automatic test;
	
	virtual dut_if.tb vif;
	`include "environment.sv"
	environment env;

	initial begin
		vif=top_tb.vif;
		$display($sformatf("%t: test\t-->send vif to env ...",$time));
		env=new(vif);
		env.build();
		env.connect();
		env.run();
		env.drain_time(100);
	end
endprogram
