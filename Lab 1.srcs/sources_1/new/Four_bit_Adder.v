`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 09:50:45 PM
// Design Name: 
// Module Name: Four_bit_Adder
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


module Four_bit_Adder(
    input [3:0] a, [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    
);

wire carry1,carry2,carry3,carry4;

Full_Adder fa1(a[0],b[0],cin,sum[0],carry1);
Full_Adder fa2(a[1],b[1],carry1,sum[1],carry2);
Full_Adder fa3(a[2],b[2],carry2,sum[2],carry3);
Full_Adder fa4(a[3],b[3],carry3,sum[3],cout);


endmodule
