
//seven_segement_8_drv u0 (.clk(CLK100MHZ), .reset(!reset),.D0(D0), .D1(D1), .D2(D2), .D3(D3),.D4(D4), .D5(D5), .D6(D6), .D7(D7), .a(CA), .b(CB), .c(CC), .d(CD), .e(CE), .f(CF), .g(CG),.AN(AN));
module seven_segement_8_drv(clk,reset,D0,D1,D2,D3,D4,D5,D6,D7,a,b,c,d,e,f,g,AN);

input clk, reset;
input [3:0] D0,D1,D2,D3,D4,D5,D6,D7;
output  a,b,c,d,e,f,g;
output [7:0]AN;
wire [3:0] Y;
wire[2:0] sel;

mux181 seg_u0 (.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7),
                .sel(sel),.Y(Y));
cnt3 seg_u1 (.clk(clk), .rstn(reset), .en(en_cnt3), .Q(sel));
seven_segement_decoder seg_u2(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.Y(Y));

decoder seg_u3(.Q(sel),.enable(AN)); //an 빛나는 위치
cnt_100M seg_u4(.clk(clk), .rstn(reset), .eo_100M(), .eo_10k(en_cnt3), .eo_1k()); //1k초

endmodule
