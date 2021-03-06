class generator;

	mailbox gen2drv;
	int num; //num of trans

	transaction trans;

	function new(mailbox gen2drv);
		this.gen2drv=gen2drv;
		num = 10;
	endfunction

	virtual task run;
		repeat(num) begin
			trans = new();
			assert(trans.randomize());
			gen2drv.put(trans);
			$display($sformatf("@%0t: generator\t-->gen one trans...",$time));
		end
	endtask

endclass
