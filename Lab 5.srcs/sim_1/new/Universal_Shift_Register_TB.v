`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2021 01:00:16 PM
// Design Name: 
// Module Name: Universal_Shift_Register_TB
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


module Universal_Shift_Register_TB;

parameter N=8;
reg clk,reset;
reg [1:0] ctrl;
reg [N-1:0] d;
wire [N-1:0] q; 

//instantiation
Universal_Shift_Register inst(clk,reset,ctrl,d,q);

initial 
clk = 0;
always
#10 clk = ~clk;

initial 
begin
    reset = 0;
    #10 reset = 1;
    @(negedge clk) reset = 0;
    //SIPO LEFT SHIFT
    @(negedge clk) ctrl = 2'b01; d[0] = 1'b1;
    repeat(8) @(negedge clk);
    reset = 1;
    #20 reset = 0;
    //SIPO RIGHT SHIFT
    @(negedge clk) ctrl = 2'b10; d[7] = 1'b1;
    repeat(8) @(negedge clk); $stop;   
end

initial
$monitor($time," -- ns, q = ",ctrl,q);
endmodule
