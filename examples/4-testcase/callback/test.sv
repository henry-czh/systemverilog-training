program automatic test;

	`include "testcase0.sv"
	`include "testcase1.sv"
	`include "environment.sv"
	environment env;
	testcase0 case0;
	testcase1 case1;

	initial begin
		string t;
		if($value$plusargs("TEST=%s",t))begin
			if(t=="case0") begin
				$display($sformatf("%t : +TEST=%s is starting ...",$time,t));
				case0=new();
				env=new("case0");

				//set cbs
				env.cbs.push_back(case0);

				env.build();
				env.connect();
				env.run();
				env.drain_time(100);
			end
			else if(t=="case1") begin
				$display($sformatf("%t : +TEST=%s is starting ...",$time,t));
				case1=new();
				env=new("case1");

				//set cbs
				env.cbs.push_back(case1);

				env.build();
				env.connect();
				env.run();
				env.drain_time(100);
			end
			else 
				//$display($sformatf("%t : +TEST=%s is not a valid testcase",$time,t));
				$display($sformatf("%t : +TEST=%s is not a valid testcase",$time,t));
		end
	end
endprogram
