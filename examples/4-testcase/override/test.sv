program automatic test;

	//`include "base_test.sv"
	//base_test bt;
	`include "testcase0.sv"
	`include "testcase1.sv"
	testcase0 case0;
	testcase1 case1;

	initial begin
		string t;
		if($value$plusargs("TEST=%s",t))begin
			if(t=="case0") begin
				$display($sformatf("%t : +TEST=%s is starting ...",$time,t));
				case0=new("case0");
				case0.run_test();
			end
			else if(t=="case1") begin
				$display($sformatf("%t : +TEST=%s is starting ...",$time,t));
				case1=new("case1");
				case1.run_test();
			end
			else 
				//$display($sformatf("%t : +TEST=%s is not a valid testcase",$time,t));
				$display($sformatf("%t : +TEST=%s is not a valid testcase",$time,t));
		end
	end
endprogram
