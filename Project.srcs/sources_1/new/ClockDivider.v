`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2021 03:49:59 PM
// Design Name: 
// Module Name: ClockDivider
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


module ClockDivider(
    input wire clk,
    output wire slowclk
    );
    
    reg [29:0] counter=0;
    reg sclk = 0;
    //slow down the internal clock (clk) to a slow clock named sclk
    always @ (posedge clk)
        begin
            if (counter == 30'd0)
            begin
            counter <= 30'd1_000_000_000;
            sclk = ~sclk;
            end
            else counter <= counter - 1'd1; // down counter
        end
        
    assign slowclk = sclk;
endmodule
