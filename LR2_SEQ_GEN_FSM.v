`timescale 1ns / 1ps
module LR2_SEQ_GEN_FSM(
input clk,
input UP,
input CE,
input rst,
output wire [3:0] SEQ
);

reg [3:0] state;
reg [3:0] value;

assign SEQ = value;


always @(posedge clk, posedge rst)
begin
	if(rst) 
		state <= 4'h0;
	else if(CE)
		case(state)
			4'h0: if(UP) state <= 4'h1; else state <= 4'hf;
			4'h1: if(UP) state <= 4'h2; else state <= 4'h0;
			4'h2: if(UP) state <= 4'h3; else state <= 4'h1;
			4'h3: if(UP) state <= 4'h4; else state <= 4'h2;
			4'h4: if(UP) state <= 4'h5; else state <= 4'h3;
			4'h5: if(UP) state <= 4'h6; else state <= 4'h4;
			4'h6: if(UP) state <= 4'h7; else state <= 4'h5;
			4'h7: if(UP) state <= 4'h8; else state <= 4'h6;
			4'h8: if(UP) state <= 4'h9; else state <= 4'h7;
			4'h9: if(UP) state <= 4'ha; else state <= 4'h8;
			4'ha: if(UP) state <= 4'hb; else state <= 4'h9;
			4'hb: if(UP) state <= 4'hc; else state <= 4'ha;
			4'hc: if(UP) state <= 4'hd; else state <= 4'hb;
			4'hd: if(UP) state <= 4'he; else state <= 4'hc;
			4'he: if(UP) state <= 4'hf; else state <= 4'hd;
			4'hf: if(UP) state <= 4'h0; else state <= 4'he;
		endcase 
	else 
		state <= state;
		
	case(state)
		4'h0: value <= 4'h7;
		4'h1: value <= 4'h1;
		4'h2: value <= 4'h8;
		4'h3: value <= 4'h9;
		4'h4: value <= 4'hC;
		4'h5: value <= 4'hF;
		4'h6: value <= 4'h6;
		4'h7: value <= 4'h5;
		4'h8: value <= 4'h4;
		4'h9: value <= 4'h0;
		4'ha: value <= 4'hE;
		4'hb: value <= 4'h3;
		4'hc: value <= 4'hD;
		4'hd: value <= 4'h2;
		4'he: value <= 4'hB;
		4'hf: value <= 4'hA;
	endcase
end


endmodule