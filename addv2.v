module addv2 (
	input wire clk,
	input wire [3:0] x,
	input wire [3:0] y,
	output reg [3:0] z,
	output reg c
	);

	always @(posedge clk) begin
		{c,z} <= x + y;
	end
endmodule
