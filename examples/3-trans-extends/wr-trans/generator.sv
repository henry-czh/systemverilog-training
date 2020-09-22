class generator;

	mailbox gen2drv;
	int num; //num of trans

	transaction trans;
	read_trans read;
	write_trans write;

	function new(mailbox gen2drv);
		this.gen2drv=gen2drv;
		num = 10;
	endfunction

	virtual task run;
		repeat(num) begin
			write = new();
			assert(write.randomize());
			write.rw=0;
			gen2drv.put(write);
			$display($sformatf("%t: generator\t-->gen one pkt ...",$time));
		end
		repeat(num) begin
			read = new();
			assert(read.randomize());
			gen2drv.put(read);
			$display($sformatf("%t: generator\t-->gen one pkt ...",$time));
		end
	endtask

endclass
