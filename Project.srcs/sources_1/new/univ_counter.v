`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2021 07:26:43 PM
// Design Name: 
// Module Name: univ_counter
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


module univ_counter(
    input clk,reset,
    input up,
    output [3:0] count
    );
    
    reg [3:0] counter;
    
    
    always @(posedge clk or posedge reset)
    begin
    if(reset)
     counter <= 4'd0;
    else if(up)
     counter <= counter + 4'd1;
    else if(~up)
        counter <= counter - 4'd1;
    end
    
     
    assign count = counter;
endmodule
