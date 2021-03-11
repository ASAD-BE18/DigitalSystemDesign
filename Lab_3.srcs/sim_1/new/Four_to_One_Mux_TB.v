`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 02:27:08 PM
// Design Name: 
// Module Name: Four_to_One_Mux_TB
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


module Four_to_One_Mux_TB();

reg S1,S0;
reg [3:0] D;
wire out;

//signals

initial
begin
    #00 S1 = 0; S0 = 0; D[3] = 1'bx; D[2] = 1'bx; D[1] = 1'bx; D[0] = 1'b1;
    #10 S1 = 0; S0 = 0; D[3] = 1'bx; D[2] = 1'bx; D[1] = 1'bx; D[0] = 1'b0;
    
    #10 S1 = 0; S0 = 1; D[3] = 1'bx; D[2] = 1'bx; D[1] = 1'b1; D[0] = 1'bx;
    #10 S1 = 0; S0 = 1; D[3] = 1'bx; D[2] = 1'bx; D[1] = 1'b0; D[0] = 1'bx;
    
    #10 S1 = 1; S0 = 0; D[3] = 1'bx; D[2] = 1'b1; D[1] = 1'bx; D[0] = 1'bx;
    #10 S1 = 1; S0 = 0; D[3] = 1'bx; D[2] = 1'b0; D[1] = 1'bx; D[0] = 1'bx;
    
    #10 S1 = 1; S0 = 1; D[3] = 1'b1; D[2] = 1'bx; D[1] = 1'bx; D[0] = 1'bx;
    #10 S1 = 1; S0 = 1; D[3] = 1'b0; D[2] = 1'bx; D[1] = 1'bx; D[0] = 1'bx;
    
    #10 $stop;
    
end


//monitoring
initial
$monitor($time," ns -- switch = %b, Data = %b, Out = %b",{S1,S0},{D[3],D[2],D[1],D[0]},out);

//instant
Four_to_One_Mux mux(S0,S1,D,out);
endmodule

