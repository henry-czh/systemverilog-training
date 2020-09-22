class gen0 extends generator;

	int num=3;

	virtual task run;
		repeat(num) begin
			trans = new();
			assert(trans.randomize());
			gen2drv.put(trans);
			$display($sformatf("%t: gen0\t-->gen one pkt ...",$time));
		end
	endtask

endclass

class testcase0 extends default_gen_cbs;
	gen0 gen0;

	function new();
		super.new();
	endfunction


	virtual task set_default_gen(ref generator default_gen);
		gen0=new();
		default_gen=gen0;
	endtask

endclass
