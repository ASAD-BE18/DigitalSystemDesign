`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 09:26:16 PM
// Design Name: 
// Module Name: Full_Adder_TB
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


module Four_bit_Comparator_TB();

    reg [3:0] A;
    reg [3:0] B;
    wire A_less_B;
    wire A_equal_B;
    wire A_greater_B;


    initial
    begin
        #00 A = 0; B = 0;
        #10 A = 4'b1000; B = 4'b0000;
        #10 A = 4'b0100; B = 4'b1000;
        #10 A = 4'b1100; B = 4'b1000;
        #10 A = 4'b1000; B = 4'b1100;
        #10 A = 4'b1110; B = 4'b1100;
        #10 A = 4'b1100; B = 4'b1110;
        
        #10 A = 4'b1111; B = 4'b1110;
        #10 A = 4'b1110; B = 4'b1111;
        #10 A = 4'b1111; B = 4'b1111;
        #10 A = 4'b1000; B = 4'b1000;
        #10 $stop;
    
    end


//monitoring
initial
$monitor($time," ns -- A = %b B = %b  A<B = %b, A=B = %b, A>B = %b",A,B,A_less_B,A_equal_B,A_greater_B);

//instant
Four_Bit_Comparator com(A,B,A_less_B,A_equal_B,A_greater_B);

endmodule