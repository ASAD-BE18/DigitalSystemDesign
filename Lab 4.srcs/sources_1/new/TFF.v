`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 03:22:09 PM
// Design Name: 
// Module Name: TFF
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


module TFF(
q, t, clk,reset,enable
    );
input t, clk, reset,enable;
    output reg q;
    
    always@(posedge clk, posedge reset)
    begin
        
        if (reset)
            q <= 1'b0;
        else if (enable == 1'b0)
            q <= q;
        else if (t == 1'b1)
                  q <= ~q;
         else if (t == 1'b0)
                  q <= q;
        else
                q <= q;        
    end
endmodule
