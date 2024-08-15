`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2024 17:06:10
// Design Name: 
// Module Name: mux2
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


module mux2(
input a1,a2,a3,output s,b2,y0
    );
    assign s=a1;
    assign y0=(~a1&a2)|(a1&a3);
    assign b2=(~a1&a3)|(a1&a2);
    
endmodule
