`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 07:45:07 PM
// Design Name: 
// Module Name: Four_Bit_Comparator
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


module Four_Bit_Comparator( A,  B,  A_less_B, A_equal_B, A_greater_B  );
   //input ports
   input [3:0] A;
   input [3:0] B;
   //output ports
   output A_less_B;
   output A_equal_B;
   output A_greater_B;
   //wires
   wire x0,x1,x2,x3;
   //computing xors
   assign x3 = A[3] ~^ B[3];
   assign x2 = A[2] ~^ B[2];
   assign x1 = A[1] ~^ B[1];
   assign x0 = A[0] ~^ B[0];
   
   assign A_equal_B = (x3) & (x2) & (x1) & (x0);
   
   assign A_less_B = (~A[3] & B[3]) | (x3 & ~A[2] & B[2]) | (x3 & x2 & ~A[1] & B[1]) | ( x3 & x2 & x1 & ~A[0] & B[0]);
   
   assign A_greater_B = (A[3] & ~B[3]) | (x3 & A[2] & ~B[2]) | (x3 & x2 & A[1] & ~B[1]) | ( x3 & x2 & x1 & A[0] & ~B[0]);
   
endmodule
