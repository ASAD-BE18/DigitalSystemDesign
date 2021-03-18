`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 07:36:40 PM
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


module two_bit_comparator(

    a, b,a_lt_b,a_equal_b,a_gt_b

    );
 
 input [1:0] a;
 input [1:0] b;
 output a_lt_b,a_equal_b,a_gt_b;
 
 assign a_lt_b = (~a[1] & b[1]) + (~a[0] & b[1] & b[0]) + (~a[1] & ~a[0] & b[0]);
 assign a_gt_b = (a[1] & ~b[1]) + (a[0] & ~b[1] & ~b[0]) + (a[1] & a[0] & ~b[0]);
 assign a_equal_b = ( a[0] ~^ b[0]) &  ( a[1] ~^ b[1] );
 
endmodule
