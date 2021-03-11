`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Engineer: Asad Majeed
// 
// Create Date: 03/11/2021 12:55:05 PM
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


module Four_to_One_Mux(
    input wire S1,S0,
    input wire [3:0] D,
    output reg out
    );
    
    always@(S1,S0,D,out)
    begin
        if (S1 == 1'b0  && S0 == 1'b0)
            out = D[0];
        else if(S1 == 1'b0  && S0 == 1'b1)
            out = D[1];
        else if(S1 == 1'b1  && S0 == 1'b0)
            out = D[2];
        else if(S1 == 1'b1  && S0 == 1'b1)
            out = D[3];
        else
            out = 1'bz;
    end
    
endmodule
