`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 04:45:36 PM
// Design Name: 
// Module Name: Decimal_to_Binary_Priority_encoder
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


module Decimal_to_Binary_Priority_encoder(
         in,out
    );
    
        
input wire [9:0] in;
output reg [3:0] out;
        
always@(*)
begin
            
    casex(in)
            
            10'b1xxxxxxxxx : out = 4'b1001;
            10'b01xxxxxxxx : out = 4'b1000;
            10'b001xxxxxxx : out = 4'b0111;
            10'b0001xxxxxx : out = 4'b0110;
            10'b00001xxxxx : out = 4'b0101;
            10'b000001xxxx : out = 4'b0100;
            10'b0000001xxx : out = 4'b0011;
            10'b00000001xx : out = 4'b0010;
            10'b000000001x : out = 4'b0001;
            10'b0000000001 : out = 4'b0000;
        
      endcase
            
end
endmodule
