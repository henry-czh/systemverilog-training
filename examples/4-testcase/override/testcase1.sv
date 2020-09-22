class gen1 extends generator;

	int num=5;

	virtual task run;
		repeat(num) begin
			trans = new();
			assert(trans.randomize());
			gen2drv.put(trans);
			$display($sformatf("%t: gen1\t-->gen one pkt ...",$time));
		end
	endtask

endclass

class testcase1 extends base_test;
	gen1 gen1;

	function new(string name="case1");
		super.new(name);
	endfunction


	virtual task set_default_gen();
		gen1=new();
		default_gen=gen1;
	endtask

endclass
