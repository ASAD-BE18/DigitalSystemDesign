`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 07:38:42 PM
// Design Name: 
// Module Name: Four_to_One_Mux
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

module Four_to_One_Mux(
    input d0,d1,d2,d3,s1,s0,
    output y
    );
    
    wire tmp1, tmp2, tmp3, tmp4;
    
    and a1(tmp1, s0,s1,d3);
    and a2(tmp2, ~s0,s1,d2);
    and a3(tmp3, s0,~s1,d1);
    and a4(tmp4, ~s0,~s1,d0);
    
    or o1(y, tmp1, tmp2, tmp3, tmp4);
endmodule
