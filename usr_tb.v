`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2024 19:37:27
// Design Name: 
// Module Name: usr_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module usr_tb;
reg [3:0]i;
reg clk;
reg [1:0]select;
reg s_left,s_right;
wire [3:0]q;

usr uut(.i(i),.clk(clk),.select(select),.s_left(s_left),.s_right(s_right),.q(q));
initial
begin
clk=0;
 forever #5 clk=~clk;
end
initial begin
s_right=1'b0;
s_left=1'b1;
select=2'b00;

#10 i=4'b0101;
#10 select=2'b11;
#10 select=2'b01;
#10 select=2'b10;
#10 select=2'b00;

#10 i=4'b1101;
#10 select=2'b11;
#10 select=2'b01;
#10 select=2'b10;
#10 select=2'b00;

#300 $finish;
end
initial begin
        $monitor("Time: %0d | i: %b | clk: %b | select: %b | s_left: %b| s_right: %b| q: %b", $time,i, clk, select,s_left,s_right, q);
    end
endmodule
