`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 12:53:34 PM
// Design Name: 
// Module Name: Decimal_to_Binary_Priority_Encoder_TB
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


module Decimal_to_Binary_Priority_Encoder_TB( );
 reg [9:0] in;
 wire [3:0] out;
    
    initial
    begin
        #00 in = 10'b0000000000;
        #10 in = 10'b0000000001;
        #10 in = 10'b0000000010;
        #10 in = 10'b0000000100;
        #10 in = 10'b0000001000;
        #10 in = 10'b0000010000;
        #10 in = 10'b0000100000;
        #10 in = 10'b0001000000;
        #10 in = 10'b0010000000;
        #10 in = 10'b0100000000;
        #10 in = 10'b1000000000;
        
         #10 in = 10'b0000000001;
         #10 in = 10'b0000000011;
         #10 in = 10'b0000000111;
         #10 in = 10'b0000001110;
         #10 in = 10'b0000010101;
         #10 in = 10'b0000101011;
         #10 in = 10'b0001011101;
         #10 in = 10'b0010101010;
         #10 in = 10'b0100101010;
         #10 in = 10'b1001010010;
        
      
        
        #10 $stop;
        
    end
    
    
    //monitoring
    initial
    $monitor($time," ns -- in = %b,  Out = %b",in,out);
    
    //instant
    Decimal_to_Binary_Priority_encoder pen(in,out);
    
endmodule
