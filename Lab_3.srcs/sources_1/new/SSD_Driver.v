`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 04:09:21 PM
// Design Name: 
// Module Name: SSD_Driver
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


module SSD_Driver(in,cc,out);

    input wire [3:0] in;
    output reg cc;
    output reg [6:0] out;
    
    
    
    
    
    always@(*)
    begin
    cc = 1'b0;
    
        case (in)
        4'b0000 : out = ~(7'b0111111); //0
        4'b0001 : out = ~(7'b0000110); //1
        4'b0010 : out = ~(7'b1011011); //2
        4'b0011 : out = ~(7'b1001111); //3 0	0	0	0	1	1	0
        4'b0100 : out = ~(7'b1100110); //4 1	0	0	1	1	0	0
        4'b0101 : out = ~(7'b1101101); //5 0	1	0	0	1	0	0
        4'b0110 : out = ~(7'b1111101); //6 0	1	0	0	0	0   0
        4'b0111 : out = ~(7'b0000111); //7 
        4'b1000 : out = ~(7'b1111111); //8
        4'b1001 : out = ~(7'b1101111); //9
        default : out = 7'bzzzzzzz;
        endcase
    end
    
    
endmodule