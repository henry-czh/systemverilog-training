class generator;

	mailbox gen2drv;
	int num; //num of trans

	transaction trans;

	function new();
		num = 10;
	endfunction

	virtual task run;
		repeat(num) begin
			trans = new();
			assert(trans.randomize());
			gen2drv.put(trans);
			$display($sformatf("%t: generator\t-->gen one pkt ...",$time));
		end
	endtask

endclass
