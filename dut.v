module dut(
input clk,
input rst_n,
input valid,
input rw,

input [7:0] addr,

output reg ready,
inout [7:0] data
);

reg [7:0]mem[7:0];
wire [7:0] din;
reg  [7:0] dout;
wire mem_rw;

//read-write
assign mem_rw = rw & valid & ready;

//data
assign din = mem_rw? 8'bz:data;
assign data= mem_rw? dout:8'bz;

//ready gen
always @(posedge clk)
if(~rst_n)
	ready <= 1'b0;
else if(valid)
	ready <= 1'b1;
else
	ready <= 1'b0;

//write
always @(posedge clk)
if(~rst_n)
	mem[addr] = 8'bx;
else if(mem_rw)
	mem[addr] = din;

//read
assign dout = mem_rw? 8'bz:mem[addr];


endmodule
