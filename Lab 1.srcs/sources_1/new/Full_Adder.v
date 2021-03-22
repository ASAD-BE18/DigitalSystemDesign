`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 08:53:47 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
        input a,b,cin,
        output sum,cout
    );
    
    wire tmp1,tmp2,tmp3,tmp4;
    
    xor x1(tmp1,a,b);
    and a1(tmp2,a,b);
    and a2(tmp3,tmp1,cin);
    xor x2(sum,tmp1,cin);
    or o1(cout,tmp3,tmp2);
    
endmodule
