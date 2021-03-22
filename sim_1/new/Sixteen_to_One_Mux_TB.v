`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 11:18:34 PM
// Design Name: 
// Module Name: Sixteen_to_One_TB
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


module Sixteen_to_One_TB();

reg [15:0] d;
reg [3:0] s;
wire y;

initial
begin
   
   #00 s[0] = 0; s[1] = 0; s[2] = 0; s[3] = 0; d = 0;
   #10 s = 4'b0000; d = 16'bxxxxxxxxxxxxxxx1; 
   #10 s = 4'b0001; d = 16'bxxxxxxxxxxxxxx1x;
   #10 s = 4'b0010; d = 16'bxxxxxxxxxxxxx1xx;
   #10 s = 4'b0011; d = 16'bxxxxxxxxxxxx1xxx;
   #10 s = 4'b0100; d = 16'bxxxxxxxxxxx1xxxx;
   #10 s = 4'b0101; d = 16'bxxxxxxxxxx1xxxxx;
   #10 s = 4'b0110; d = 16'bxxxxxxxxx1xxxxxx;
   #10 s = 4'b0111; d = 16'bxxxxxxxx1xxxxxxx;
   #10 s = 4'b1000; d = 16'bxxxxxxx1xxxxxxxx;
   #10 s = 4'b1001; d = 16'bxxxxxx1xxxxxxxxx;
   #10 s = 4'b1010; d = 16'bxxxxx1xxxxxxxxxx;
   #10 s = 4'b1011; d = 16'bxxxx1xxxxxxxxxxx;
   #10 s = 4'b1100; d = 16'bxxx1xxxxxxxxxxxx;
   #10 s = 4'b1101; d = 16'bxx1xxxxxxxxxxxxx;
   #10 s = 4'b1110; d = 16'bx1xxxxxxxxxxxxxx;
   #10 s = 4'b1111; d = 16'b1xxxxxxxxxxxxxxx;
    
   #10 $stop;
    
end


//monitoring
initial
$monitor($time," ns --  Data = %b  s = %b, y = %b",d,s,y);

//instant
Sixteen_to_One_Mux m(d,s,y);

endmodule
