class transaction;

	rand bit rw;
	rand bit [7:0] addr;
	rand bit [7:0] data;

	constraint addr_c{addr >=0;addr<=7;}

endclass
