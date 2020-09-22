class transaction;

	rand bit rw;
	rand bit [7:0] addr;
	rand bit [7:0] data;

	constraint addr_c{addr >=0;addr<=7;}

endclass

class read_trans extends transaction;
	constraint rw_c{rw == 0;}
endclass

class write_trans extends transaction;
	constraint rw_c{rw == 1;}
endclass
