interface dut_if(input clk,input rst_n);

  logic valid;
  logic rw;
  logic ready;
  logic [7:0] addr;
  wire[7:0] data;
  logic [7:0] din;

  modport tb (
  	input clk,
	input rst_n,
	output valid,
	output rw,
	output addr,
	output din,
	input ready
  );

  modport mon (
  	input clk,
	input rst_n,
	input valid,
	input rw,
	input addr,
	input  data,
	output ready
  );

  assign data = rw? din:'z;

endinterface
