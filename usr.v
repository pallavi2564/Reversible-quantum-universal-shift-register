`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2024 18:39:32
// Design Name: 
// Module Name: usr
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


module usr(input [3:0]i,
input clk ,
input  [1:0]select,
  input s_left,  
  input s_right ,
  output [3:0]q);

wire r[3:0];
wire b[3:0];

mux4 t4(q[0],q[1],s_left,i[0],select[0],select[1],b[0]);
mux4 t3(q[1],q[2],q[0],i[1],select[0],select[1],b[1]);
mux4 t2(q[2],q[3],q[1],i[2],select[0],select[1],b[2]);
mux4 t1(q[3],s_right,q[2],i[3],select[0],select[1],b[3]);
dff d4(clk,b[0],r[0],q[0]);
dff d3(clk,b[1],r[1],q[1]);
dff d2(clk,b[2],r[2],q[2]);
dff d1(clk,b[3],r[3],q[3]);
endmodule
