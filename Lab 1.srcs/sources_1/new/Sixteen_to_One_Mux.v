`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 11:02:55 PM
// Design Name: 
// Module Name: Sixteen_to_One_Mux
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


module Sixteen_to_One_Mux(
    input [15:0] d,
    input [4:0] s,
    output y
    );
    
    wire out1,out2,out3,out4;
    Four_to_One_Mux f1(d[12],d[13],d[14],d[15],s[1],s[0],out1);
    Four_to_One_Mux f2(d[8],d[9],d[10],d[11],s[1],s[0],out2);
    Four_to_One_Mux f3(d[4],d[5],d[6],d[7],s[1],s[0],out3);
    Four_to_One_Mux f4(d[0],d[1],d[2],d[3],s[1],s[0],out4);
    Four_to_One_Mux f5(out4,out3,out2,out1,s[3],s[2],y);
    
endmodule
