 `timescale 1ns / 1ps
 module LR4_MATRIX_DISP_V10(
 input clk,
 input rst,
 input CE,
 input [3:0]SEQ,
 output reg [7:0]column,
 output [7:0]row
 );
 
reg [3:0] state; 
reg [2:0]column_counter;
wire [7:0]ROM[127:0];
 
always@(posedge clk, posedge rst)
begin
	if(rst)
		column_counter <= 0;
	else if(CE)
		column_counter <= column_counter + 1'b1;
end

always@(posedge clk, posedge rst)
begin
	if(rst)
		state <= 0;
	else if(&(column_counter) & CE)
		state <= SEQ;
end
		
always@(posedge clk)
begin
	case(column_counter)
		3'b000: column = ~(8'b00000001);
		3'b001: column = ~(8'b00000010);
		3'b010: column = ~(8'b00000100);
		3'b011: column = ~(8'b00001000);
		3'b100: column = ~(8'b00010000);
		3'b101: column = ~(8'b00100000);
		3'b110: column = ~(8'b01000000);
		3'b111: column = ~(8'b10000000);
		default: column = ~(8'b00000000);
	endcase
end

//0
assign ROM[7'b0000_000] = 8'b00000000;
assign ROM[7'b0000_001] = 8'b00111100;
assign ROM[7'b0000_010] = 8'b01000010;
assign ROM[7'b0000_011] = 8'b10000001;
assign ROM[7'b0000_100] = 8'b10000001;
assign ROM[7'b0000_101] = 8'b01000010;
assign ROM[7'b0000_110] = 8'b00111100;
assign ROM[7'b0000_111] = 8'b00000000;
//1
assign ROM[7'b0001_000] = 8'b00000000;
assign ROM[7'b0001_001] = 8'b00000100;
assign ROM[7'b0001_010] = 8'b00000010;
assign ROM[7'b0001_011] = 8'b00000001;
assign ROM[7'b0001_100] = 8'b11111111;
assign ROM[7'b0001_101] = 8'b00000000;
assign ROM[7'b0001_110] = 8'b00000000;
assign ROM[7'b0001_111] = 8'b00000000;
//2
assign ROM[7'b0010_000] = 8'b00000000;
assign ROM[7'b0010_001] = 8'b00000000;
assign ROM[7'b0010_010] = 8'b11100010;
assign ROM[7'b0010_011] = 8'b10010001;
assign ROM[7'b0010_100] = 8'b10001001;
assign ROM[7'b0010_101] = 8'b10000110;
assign ROM[7'b0010_110] = 8'b00000000;
assign ROM[7'b0010_111] = 8'b00000000;
//3
assign ROM[7'b0011_000] = 8'b00000000;
assign ROM[7'b0011_001] = 8'b00000000;
assign ROM[7'b0011_010] = 8'b01100010;
assign ROM[7'b0011_011] = 8'b10000001;
assign ROM[7'b0011_100] = 8'b10001001;
assign ROM[7'b0011_101] = 8'b01110110;
assign ROM[7'b0011_110] = 8'b00000000;
assign ROM[7'b0011_111] = 8'b00000000;
//4
assign ROM[7'b0100_000] = 8'b00000000;
assign ROM[7'b0100_001] = 8'b00000000;
assign ROM[7'b0100_010] = 8'b00001111;
assign ROM[7'b0100_011] = 8'b00001000;
assign ROM[7'b0100_100] = 8'b00001000;
assign ROM[7'b0100_101] = 8'b11111111;
assign ROM[7'b0100_110] = 8'b00000000;
assign ROM[7'b0100_111] = 8'b00000000;
//5
assign ROM[7'b0101_000] = 8'b00000000;
assign ROM[7'b0101_001] = 8'b00000000;
assign ROM[7'b0101_010] = 8'b10011111;
assign ROM[7'b0101_011] = 8'b10010001;
assign ROM[7'b0101_100] = 8'b10010001;
assign ROM[7'b0101_101] = 8'b01100001;
assign ROM[7'b0101_110] = 8'b00000000;
assign ROM[7'b0101_111] = 8'b00000000;
//6
assign ROM[7'b0110_000] = 8'b00000000;
assign ROM[7'b0110_001] = 8'b00000000;
assign ROM[7'b0110_010] = 8'b01111110;
assign ROM[7'b0110_011] = 8'b10001001;
assign ROM[7'b0110_100] = 8'b10001001;
assign ROM[7'b0110_101] = 8'b01110010;
assign ROM[7'b0110_110] = 8'b00000000;
assign ROM[7'b0110_111] = 8'b00000000;
//7
assign ROM[7'b0111_000] = 8'b00000000;
assign ROM[7'b0111_001] = 8'b00000000;
assign ROM[7'b0111_010] = 8'b00000001;
assign ROM[7'b0111_011] = 8'b11110001;
assign ROM[7'b0111_100] = 8'b00001001;
assign ROM[7'b0111_101] = 8'b00000111;
assign ROM[7'b0111_110] = 8'b00000000;
assign ROM[7'b0111_111] = 8'b00000000;
//8
assign ROM[7'b1000_000] = 8'b00000000;
assign ROM[7'b1000_001] = 8'b00000000;
assign ROM[7'b1000_010] = 8'b01110110;
assign ROM[7'b1000_011] = 8'b10001001;
assign ROM[7'b1000_100] = 8'b10001001;
assign ROM[7'b1000_101] = 8'b01110110;
assign ROM[7'b1000_110] = 8'b00000000;
assign ROM[7'b1000_111] = 8'b00000000;
//9
assign ROM[7'b1001_000] = 8'b00000000;
assign ROM[7'b1001_001] = 8'b00000000;
assign ROM[7'b1001_010] = 8'b01001100;
assign ROM[7'b1001_011] = 8'b10010010;
assign ROM[7'b1001_100] = 8'b10010001;
assign ROM[7'b1001_101] = 8'b01010010;
assign ROM[7'b1001_110] = 8'b00111100;
assign ROM[7'b1001_111] = 8'b00000000;
//A
assign ROM[7'b1010_000] = 8'b00000000;
assign ROM[7'b1010_001] = 8'b00000000;
assign ROM[7'b1010_010] = 8'b11111110;
assign ROM[7'b1010_011] = 8'b00010001;
assign ROM[7'b1010_100] = 8'b00010001;
assign ROM[7'b1010_101] = 8'b11111110;
assign ROM[7'b1010_110] = 8'b00000000;
assign ROM[7'b1010_111] = 8'b00000000;
//B
assign ROM[7'b1011_000] = 8'b00000000;
assign ROM[7'b1011_001] = 8'b00000000;
assign ROM[7'b1011_010] = 8'b11111111;
assign ROM[7'b1011_011] = 8'b10001001;
assign ROM[7'b1011_100] = 8'b10001001;
assign ROM[7'b1011_101] = 8'b01110110;
assign ROM[7'b1011_110] = 8'b00000000;
assign ROM[7'b1011_111] = 8'b00000000;
//C
assign ROM[7'b1100_000] = 8'b00000000;
assign ROM[7'b1100_001] = 8'b00111100;
assign ROM[7'b1100_010] = 8'b01000010;
assign ROM[7'b1100_011] = 8'b10000001;
assign ROM[7'b1100_100] = 8'b10000001;
assign ROM[7'b1100_101] = 8'b10000001;
assign ROM[7'b1100_110] = 8'b00000000;
assign ROM[7'b1100_111] = 8'b00000000;
//D
assign ROM[7'b1101_000] = 8'b00000000;
assign ROM[7'b1101_001] = 8'b00000000;
assign ROM[7'b1101_010] = 8'b11111111;
assign ROM[7'b1101_011] = 8'b10000001;
assign ROM[7'b1101_100] = 8'b10000001;
assign ROM[7'b1101_101] = 8'b01000010;
assign ROM[7'b1101_110] = 8'b00111100;
assign ROM[7'b1101_111] = 8'b00000000;
//E
assign ROM[7'b1110_000] = 8'b00000000;
assign ROM[7'b1110_001] = 8'b00000000;
assign ROM[7'b1110_010] = 8'b11111111;
assign ROM[7'b1110_011] = 8'b10001001;
assign ROM[7'b1110_100] = 8'b10001001;
assign ROM[7'b1110_101] = 8'b10001001;
assign ROM[7'b1110_110] = 8'b00000000;
assign ROM[7'b1110_111] = 8'b00000000;
//F
assign ROM[7'b1111_000] = 8'b00000000;
assign ROM[7'b1111_001] = 8'b00000000;
assign ROM[7'b1111_010] = 8'b11111111;
assign ROM[7'b1111_011] = 8'b00001001;
assign ROM[7'b1111_100] = 8'b00001001;
assign ROM[7'b1111_101] = 8'b00000001;
assign ROM[7'b1111_110] = 8'b00000000;
assign ROM[7'b1111_111] = 8'b00000000;


assign row = ROM[{state,column_counter}];

endmodule