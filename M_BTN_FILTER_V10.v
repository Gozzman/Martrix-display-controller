`timescale 1ns / 1ps
module M_BTN_FILTER_V10(
input clk,
input rst,
input btn,
output reg btn_down
);


reg btn_up;
reg btn_state;
reg [1:0] d_latch;
//для того что бы триггер не запутался в своём сосотоянии, у нас конечный триггер определяет точное состояние
always@(posedge clk, posedge rst)
begin
	if(rst)
		d_latch <= 2'b00;
	else 
	begin
		d_latch[1]<= d_latch[0];
		d_latch[0] <= clk;
	end
end

reg[2:0] counter;
wire change_flag = (change_flag != d_latch[1]);
wire counter_max = &counter; //оператор свёртки

always@(posedge clk, posedge rst)
begin
	if(rst)
	begin
		counter <= 0;
		btn_state <= 0;
	end
	else if(change_flag)
	begin
		counter <= counter + 1;
		if(counter_max)
			btn_state <= ~btn_state;
	end
	else
		counter <= 0;
end

always @(posedge clk)
begin
	btn_down <= change_flag & counter_max & ~btn_state;
	btn_up <= change_flag & counter_max & btn_state;
end
 
endmodule
