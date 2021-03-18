`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 01:25:35 PM
// Design Name: 
// Module Name: dff
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


module dff(q, d, clk,reset,enable);
input d, clk, reset,enable;
output reg q;

always@(posedge clk, posedge reset)
begin
    
    if (reset)
        q <= 1'b0;
    else if (enable != 0)
        q <= d;
    else
        q <= q;
     
    
end
endmodule
