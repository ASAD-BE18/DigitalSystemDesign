`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2021 12:34:53 PM
// Design Name: 
// Module Name: Universal_Shift_Register
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


module Universal_Shift_Register
#(parameter N=8)
(
input wire clk,reset,
input wire [1:0] ctrl,
input wire [N-1:0] d,
output wire [N-1:0] q 
);

// signal declaration
reg [N-1:0] r_reg, r_next;

always @(posedge clk, posedge reset)
    if(reset)
        r_reg <= 0;
     else
        r_reg <= r_next;

always @(*)
    case(ctrl)
        2'b00: r_next = r_reg;
        2'b01: r_next = {r_reg[N-2:0], d[0]};
        2'b10: r_next = {d[N-1], r_reg[N-1:1]};
        default: r_next = d;
    endcase
assign q = r_reg;
endmodule
