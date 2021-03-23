`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2021 12:07:28 PM
// Design Name: 
// Module Name: Sixteen_bit_Comparator_TB
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


module Sixteen_bit_Comparator_TB(

    );
    
    reg [15:0] A;
    reg [15:0] B;
    wire A_less_B;
    wire A_equal_B;
    wire A_greater_B;


    initial
    begin
        #00 A = 0; B = 0;
        #10 A = 16'b1000000000000000; B = 16'b1000000000000000;
        #10 A = 16'b0100000000000000; B = 16'b1000000000000000;
        #10 A = 16'b1100000000000000; B = 16'b1110000000000000;
        #10 A = 16'b1110000000000000; B = 16'b1100000000000000;
        #10 A = 16'b1111000000000000; B = 16'b1110000000000000;
        #10 A = 16'b1111100000000000; B = 16'b1111000000000000;
        #10 A = 16'b1110011000000000; B = 16'b1111000000000000;
        #10 A = 16'b1111001100000000; B = 16'b1111000110000000;
        #10 A = 16'b1110011000000000; B = 16'b1111000000011111;
        #10 A = 16'b1111010110000000; B = 16'b1111010001111111;
        #10 A = 16'b1111111111111111; B = 16'b1111011111111111;
        #10 A = 16'b1111111111111111; B = 16'b1111011111111111;
        #10 $stop;
    
    end


//monitoring
initial
$monitor($time," ns -- A = %b B = %b  A<B = %b, A=B = %b, A>B = %b",A,B,A_less_B,A_equal_B,A_greater_B);

//instant
Sixteen_Bit_Comparator com(A,B,A_less_B,A_equal_B,A_greater_B);
endmodule

