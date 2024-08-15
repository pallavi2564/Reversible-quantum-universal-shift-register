`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2024 23:54:21
// Design Name: 
// Module Name: dff
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


//module dff(input clk,d,output reg qn1,qn2 );
//reg b1,b2,b3,clk1,g,qn,p,c3;
//always @(posedge clk) begin
  
//  b1<=clk;
//  b2<=((~clk)&d)|(clk & qn);
//  b3<=((~clk)&qn)|(clk & d);
//  qn<=b3^(1'b0);
//  p<=b3;
//  clk1<=b1;
//  g<=((~b1)&qn2)|(b1&b3);
//  c3<=((~b1)&b3)|(b1&qn2);
//  qn1=c3;
//  qn2=c3^(1'b0);
//  end
//endmodule
module dff(
    input clk,
    
    input d,
    output reg qn1,
    output reg qn2
);
reg b1, b2, b3, g, qn, c3;

always @(posedge clk) begin
    
    b1 <= clk;
    b2 <= (~clk & d) | (clk & qn);
    b3 <= (~clk & qn) | (clk & d);
    qn <= b3;
    c3 <= (~b1 & qn) | (b1 & qn2);
     g <= (~b1 & qn2) | (b1 & qn);
    qn2 <= g;    
    qn1<= g;   
end

endmodule


