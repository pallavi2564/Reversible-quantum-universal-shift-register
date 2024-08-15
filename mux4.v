`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2024 17:21:42
// Design Name: 
// Module Name: mux4
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
 module mux4( input i0,i1,i2,i3,s0,s1, output y     );    
 wire o1,o2,y3,y1,y2,g1,g2,g3;   
 mux2 m1(s0,i0,i1,y1,g1,o1);  
 mux2 m2(y1,i2,i3,y3,g2,o2);  
 mux2 m3(s1,o2,o1,y2,g3,y); 
 endmodule