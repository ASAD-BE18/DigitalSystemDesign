module LED_PWM(clk,R_btn,G_btn,B_btn, LED);
input clk;
output [2:0] LED;
wire sclk;
wire reset;
wire [3:0] counter1, counter2,counter3;
input R_btn,G_btn,B_btn;

clk_div c(clk,sclk);
univ_counter c1(sclk,reset,B_btn,counter1);
univ_counter c2(sclk,reset,G_btn,counter2);
univ_counter c3(sclk,reset,R_btn,counter3);

     
reg [4:0] PWM1,PWM2,PWM3;



// Next State Logic
always @(negedge clk)
begin
 PWM1 <= PWM1[3:0] + counter1;
 PWM2 <= PWM2[3:0] + counter2;
 PWM3 <= PWM3[3:0] + counter3;
end

//Output
assign LED[0] = PWM1[4];
assign LED[1] = PWM2[4];
assign LED[2] = PWM3[4];

endmodule