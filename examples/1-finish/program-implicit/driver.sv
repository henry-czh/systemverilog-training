class driver;

	virtual dut_if.tb avif;

	mailbox gen2drv;

	transaction trans;

	function new(mailbox gen2drv);
		this.gen2drv=gen2drv;
	endfunction

	virtual task run;
		reset_task();
		while(!avif.rst_n)
			@(posedge avif.clk)

		@(posedge avif.clk)
		while(1) begin
			gen2drv.get(trans);
			$display($sformatf("%t: driver\t-->receive and drive one pkt ...",$time));
			drive_pkt(trans);
		end
	endtask	

	extern task reset_task();
	extern task drive_pkt(transaction tr);

endclass

task driver::reset_task;
	avif.valid = '0;
	avif.addr  = '0;
	avif.din  = 'z;
	avif.rw    = '0;
endtask

task driver::drive_pkt(transaction tr);

	avif.valid	= 1'b1;
	avif.addr 	= tr.addr;
	avif.rw 	= tr.rw? 1:0;
	if(tr.rw)
		avif.din 	= tr.data;
	@(posedge avif.clk iff avif.ready)
	avif.valid 	= 1'b0;
endtask
