`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2021 01:04:50 PM
// Design Name: 
// Module Name: One_Bit_Subtractor_TB
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


module One_Bit_Subtractor_TB();

reg a,b,bin;
wire d,bout;

initial
    begin
        #00 a = 0; b = 0; bin = 0;
        #10 a = 0; b = 0; bin = 1;
        #10 a = 0; b = 1; bin = 0;
        #10 a = 0; b = 1; bin = 1;
        #10 a = 1; b = 0; bin = 0;
        #10 a = 1; b = 0; bin = 1;
        #10 a = 1; b = 1; bin = 0;
        #10 a = 1; b = 1; bin = 1;
        #10 $stop;
    
    end
    
//monitoring
initial
$monitor($time," ns -- A = %b B = %b  Bin = %b, D = %b, Dout = %b",a,b,bin,d,dout);
    
//instant
One_Bit_Subtractor sub(a,b,bin,d,dout);

endmodule

