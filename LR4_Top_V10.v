`timescale 1ns / 1ps
module LR4_Top_V10
(
input wire clk,
input wire rst,
input wire btn,
input wire switch,
output [7:0]row,
output [7:0]column
);

wire divided_clk;
wire filtred_btn;
wire [3:0]SEQ;

M_CLOCK_DIVIDER M_CLOCK_DIVIDER_wrapper(

.clk(clk),
.rst(rst),
.divided_clk(divided_clk)
);

M_BTN_FILTER_V10 M_BTN_FILTER_V10_wrapper(

.clk(clk),
.rst(rst),
.btn(btn),
.btn_down(filtred_btn)
);

LR2_SEQ_GEN_FSM LR2_SEQ_GEN_FSM_wrapper(
.clk(clk),
.rst(rst),
.CE(filtred_btn),
.UP(switch), // tut
.SEQ(SEQ)
);

LR4_MATRIX_DISP_V10 LR4_MATRIX_DISP_V10_wrapper(
.clk(clk),
.rst(rst),
.CE(divided_clk),
.SEQ(SEQ),
.column(column),
.row(row)
);

endmodule
