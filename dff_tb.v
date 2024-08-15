`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 22:45:27
// Design Name: 
// Module Name: dff_tb
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

module dff_tb;
reg d,clk;
wire qn1,qn2;
dff uut(.clk(clk),.d(d),.qn1(qn1),.qn2(qn2));
initial
begin
clk=0;
 forever #10 clk=~clk;
end

initial 
begin
d=1;
#10 d=1;
#10 d=0;
#10 d=0;
#10 d=1;
#100 $finish;
end
initial begin
        $monitor("Time: %0d | clk: %b | d: %b | qn1: %b | qn2: %b", $time, clk, d, qn1, qn2);
    end
endmodule
