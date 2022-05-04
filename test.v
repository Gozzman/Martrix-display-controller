`timescale 1ns / 1ps

module test;
// Inputs
reg clk = 0;
reg btn;
reg switch;
reg UP;
reg STEP;
reg SYS_NRST;

wire [7:0]row;
wire [7:0]column;

wire rst;
wire CE_1MHZ;
wire [3:0]SEQ;

parameter PERIOD_CLK = 20.8; // 20.8ns
parameter DUTY_CYCLE_CLK = 0.4;

initial
	forever
		begin
			clk = 1'b0;
			#(PERIOD_CLK-(PERIOD_CLK*DUTY_CYCLE_CLK)) clk = 1'b1;
			#(PERIOD_CLK*DUTY_CYCLE_CLK);
		end

// Init. Reset startup pulse (100ns POR)
initial
	begin
		SYS_NRST = 0;
		#100;
		SYS_NRST = 1;
	end

reg [1:0] RST_S;

always @ (posedge clk, negedge SYS_NRST)
	if(!SYS_NRST) 
		RST_S <= 2'b11;
	else 
		RST_S <= {RST_S[0], 1'b0};

assign rst = RST_S[1];

initial begin
// Initialize Inputs
	STEP = 0;
	UP = 1;
// Wait 100 ns for global reset to finish
	#100;

// Add stimulus here
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	//obratnaya posledovatelnost
	UP = 0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	@(posedge column[7]);
	@(posedge clk);
	#(PERIOD_CLK*0.2);
	STEP = 1'b1;
	#(PERIOD_CLK);
	STEP = 1'b0;
	
	#100;
	
	$stop; 
end


M_CLOCK_DIVIDER #(
.div_value(48))

DIV_1KHZ (
.clk(clk),
.rst(rst),
.divided_clk(CE_1MHZ)
);

 
LR2_SEQ_GEN_FSM FSM_wrapper(
.clk(clk),
.UP(UP),
.CE(STEP),
.rst(rst),
.SEQ(SEQ)
 );
LR4_MATRIX_DISP_V10 matrix_wrapper(
.clk(clk),
.rst(rst),
.CE(CE_1MHZ),
.SEQ(SEQ),
.column(column),
.row(row)
 );



endmodule
	
	

