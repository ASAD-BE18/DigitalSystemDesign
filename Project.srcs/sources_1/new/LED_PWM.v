module LED_PWM(clk, PWM_input1,PWM_input2,PWM_input3, LED);
input clk;
input [3:0] PWM_input1;     // 16 intensity levels
input [3:0] PWM_input2;     // 16 intensity levels
input [3:0] PWM_input3;     // 16 intensity levels
output [2:0] LED;

reg [4:0] PWM1,PWM2,PWM3;

// Next State Logic
always @(posedge clk) PWM1 <= PWM1[3:0] + PWM_input1;
always @(posedge clk) PWM2 <= PWM2[3:0] + PWM_input2;
always @(posedge clk) PWM3 <= PWM3[3:0] + PWM_input3;

//Output
assign LED[0] = PWM1[4];
assign LED[1] = PWM2[4];
assign LED[2] = PWM3[4];

endmodule