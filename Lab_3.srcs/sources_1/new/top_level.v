`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 07:25:02 PM
// Design Name: 
// Module Name: top_level
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


module top_level(
    SW,SS,cc
    );
    
    
    input wire [9:0] SW;
    output [6:0] SS;
    output cc;
    
    wire [3:0] BCD;
    
    BCD_to_Decimal_Encoder en(SW,BCD);
    SSD_Driver dr(BCD,cc, SS);
    
endmodule
