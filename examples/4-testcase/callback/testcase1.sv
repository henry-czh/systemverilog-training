class gen1 extends generator;

	int num=3;

	virtual task run;
		repeat(num) begin
			trans = new();
			assert(trans.randomize());
			gen2drv.put(trans);
			$display($sformatf("%t: gen1\t-->gen one pkt ...",$time));
		end
	endtask

endclass

class testcase1 extends default_gen_cbs;
	gen1 gen1;

	function new();
		super.new();
	endfunction


	virtual task set_default_gen(ref generator default_gen);
		gen1=new();
		default_gen=gen1;
	endtask

endclass
