`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 07:07:01 PM
// Design Name: 
// Module Name: Adder
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


module Adder(

    Sum,cout,A,B,cin,cout

    );

parameter N = 16;    
input wire [N-1:0] A,B;
input wire cin;
output reg [N-1:0] Sum;
output reg cout;

always@(*)
begin
    {cout,Sum} = A + B + Cin; 
end


endmodule
