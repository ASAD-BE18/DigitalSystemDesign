`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 10:10:27 PM
// Design Name: 
// Module Name: Four_bit_Adder_TB
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


module Four_bit_Adder_TB();
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0]sum;
wire cout;

initial
begin
    #00 a = 0; b = 0; cin = 0;
    #10 a = 4'b0001; b = 4'b0001; cin = 0;
    #10 a = 4'b0010; b = 4'b0010; cin = 0;
    #10 a = 4'b0011; b = 4'b0011; cin = 0;
    #10 a = 4'b0100; b = 4'b0100; cin = 0;
    #10 a = 4'b0101; b = 4'b0101; cin = 0;
    #10 a = 4'b0110; b = 4'b0110; cin = 0;
    #10 a = 4'b0111; b = 4'b0111; cin = 0;
    #10 a = 4'b1000; b = 4'b1000; cin = 0;
    #10 a = 4'b1001; b = 4'b1001; cin = 0;
    #10 a = 4'b1010; b = 4'b1010; cin = 0;
    #10 a = 4'b1011; b = 4'b1011; cin = 0;
    #10 a = 4'b1100; b = 4'b1100; cin = 0;
    #10 a = 4'b1101; b = 4'b1101; cin = 0;
    #10 a = 4'b1110; b = 4'b1110; cin = 0;
    #10 a = 4'b1111; b = 4'b1111; cin = 0;
    #10 a = 4'b1111; b = 4'b1111; cin = 1;
    
    #10 $stop;
    
end


//monitoring
initial
$monitor($time," ns -- A = %b B = %b Cin = %b  sum = %b, cout = %b",a,b,cin,sum,cout);

//instant
Four_bit_Adder add(a,b,cin,sum,cout);

endmodule
