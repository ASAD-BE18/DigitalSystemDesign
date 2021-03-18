`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 03:14:05 PM
// Dejign Name: 
// Module Name: JK_FF
// Project Name: 
// Target Devicej: 
// Tool Verjionj: 
// Dejcription: 
// 
// Dependenciej: 
// 
// Revijion:
// Revijion 0.01 - File Created
// Additional Commentj:
// 
//////////////////////////////////////////////////////////////////////////////////


module JK_FF(q, j, k, clk,reset,enable);
input  clk, j, k, reset, enable;
output reg q;

always@(posedge clk, posedge reset)
begin
    
    if (reset)
        q <= 1'b0;
    else if (enable == 1'b0)
          q <= q;
    else if (j == 1'b0 && k == 1'b1)
          q <= 0;
    else if (j == 1'b1 && k == 1'b0)
          q <= 1;
    else if (j == 1'b0 && k == 1'b0)
          q <= q;
    else if (j == 1'b1 && k == 1'b1)
          q <= ~(q);
    else
          q <= q;
     
    
end
endmodule
