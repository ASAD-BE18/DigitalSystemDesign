`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 06:32:56 PM
// Design Name: 
// Module Name: two_bit_comparator
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

// Asad Majeed 
// 041-18-0037

 module two_bit_comparator(input [1:0] A,B, output A_less_B, A_equal_B, A_greater_B);  
 wire tmp1,tmp2,tmp3,tmp4,tmp5, tmp6, tmp7, tmp8;  
 
 // A = B output   
 xnor u1(tmp1,A[1],B[1]);  
 xnor u2(tmp2,A[0],B[0]);  
 and u3(A_equal_B,tmp1,tmp2);
   
 // A less than B output   
 and a1(tmp3, ~A[0],~A[1],B[0]);
 and a2(tmp4, ~A[1],B[1]);  
 and a3(tmp5,~A[0],B[1], B[0]);
 or o1(A_less_B,  tmp3 , tmp4 , tmp5);
 
 
 // A greater than B output   
 and a4(tmp6,~B[0], ~B[1] , A[0]);
 and a5(tmp7, ~B[1], A[1]); 
 and a6(tmp8,  ~B[0], A[1], A[0]);
 or o2(A_greater_B,tmp6 , tmp7 , tmp8 );
  
 endmodule   
