`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 05:55:11 PM
// Design Name: 
// Module Name: BCD_to_Decimal_Encoder
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


module Decimal_to_BCD_Encoder(
    in,out
    );
    
    input wire [9:0] in;
    output reg [3:0] out;
    
    always@(*)
    begin
        
        case(in)
        
        10'b0000000001 : out = 4'b0000;
        10'b0000000010 : out = 4'b0001;
        10'b0000000100 : out = 4'b0010;
        10'b0000001000 : out = 4'b0011;
        10'b0000010000 : out = 4'b0100;
        10'b0000100000 : out = 4'b0101;                                  
        10'b0001000000 : out = 4'b0110;
        10'b0010000000 : out = 4'b0111;
        10'b0100000000 : out = 4'b1000;
        10'b1000000000 : out = 4'b1001;
        default: out = 4'bzzzz;
        endcase
        
    end
endmodule