`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 09:02:06 PM
// Design Name: 
// Module Name: Sixteen_Bit_Comparator
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


module Sixteen_Bit_Comparator(
    input [15:0] A, 
    input [15:0] B,
    output A_less_B, A_equal_B, A_greater_B
    );
    
    wire gt1,lt1,eq1,gt2,lt2,eq2,lt3,gt3,eq3,lt4,gt4,eq4;
    
    Four_Bit_Comparator com1(A[3:0],B[3:0],lt1,eq1,gt1);
    Four_Bit_Comparator com2(A[7:4],B[7:4],lt2,eq2,gt2);
    Four_Bit_Comparator com3(A[11:8],B[11:8],lt3,eq3,gt3);
    Four_Bit_Comparator com4(A[15:12],B[15:12],lt4,eq4,gt4);
    
    assign A_equal_B = (eq1 & eq2 & eq3 & eq4);

    assign A_less_B = lt4 | (eq4 & lt3) | (eq4 & eq3 & lt2) | (eq4 & eq3 & eq2 & lt1);  
    
    assign A_greater_B  = gt4 | (eq4 & gt3) | (eq4 & eq3 & gt2) | (eq4 & eq3 & eq2 & gt1); 
    
endmodule
