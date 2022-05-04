`timescale 1ns / 1ps
module M_CLOCK_DIVIDER #(
	parameter div_value = 1_000_000
)

(
input clk,
input rst,
output reg divided_clk = 0
);


integer counter = 0;

always@(posedge clk, posedge rst)
begin
	if(rst) begin
		counter <= 0;
		divided_clk <= 0;
		end
	else if (counter == (div_value-1)) begin
		divided_clk <= 1;
		counter <= 0;
		
		end
	else begin
		counter <= counter + 1;
		divided_clk <= 0;
		end
		
end



endmodule