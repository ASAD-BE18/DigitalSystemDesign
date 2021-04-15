`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2021 11:34:58 AM
// Design Name: 
// Module Name: ClockSlower
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


module clk_div(clkin, clkout);
input clkin;
output reg clkout;

reg [31:0] counter;

initial 
begin
clkout = 1'b0; // blocking assignment 
counter = 0;
end

always@(posedge clkin)
begin
    if (counter >= 100000000)begin
    counter <= 0;   // non-blocking assignment 
    clkout <= ~ clkout; end
    else
    counter <= counter + 1;
end
endmodule 

//module TB;
//reg clkin;
//wire clkout;

//parameter T = 10; // 10 ns

//initial
//clkin = 0;
//always 
//#(T/2) clkin = ~ clkin;

//clk_div inst0(clkin, clkout);

//endmodule 