`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2021 01:01:06 PM
// Design Name: 
// Module Name: One_Bit_Subtractor
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


module One_Bit_Subtractor(
    input a,b,bin,
    output d,bout
    );
    
    assign d = (a ^ b) ^ bin;
    assign bout = bin & ~(a ^ b) | (~a & b);
endmodule
