module t_ff(t,clk,rst,q);input t,clk,rst;output reg q;always @(posedge clk or negedge rst)begin if(!rst)q<=0;else if(t)q<=~q;else q<=q;end endmodule
module asyn_coun_t_ff(clk,rst,q,qo);input clk,rst;output [3:0]q,qo;wire q0,q1,q2,q3;assign t=1;
t_ff t1(t,clk,rst,q0);t_ff t2(t,q0,rst,q1);t_ff t3(t,q1,rst,q2);t_ff t4(t,q2,rst,q3);
assign q={q3,q2,q1,q0};assign qo=~q;endmodule