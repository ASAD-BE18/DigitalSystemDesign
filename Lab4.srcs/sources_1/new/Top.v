module Top(clkIn, In, q0, q1, q2, q3,clkout);
input clkIn, In;
output q0, q1, q2, q3,clkout;

clk_div inst0(clkIn, clkout);
shift_nonblocking inst1(q0, q1, q2, q3, In, clkout);

endmodule