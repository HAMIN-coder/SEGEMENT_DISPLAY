`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 21:22:17
// Design Name: 
// Module Name: tb_bccc
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


module tb_bccc();

reg clk, rstn;
wire eo_100M,eo_10k,eo_1k;

cnt_100M cnt(clk, rstn, eo_100M,eo_10k,eo_1k);

always@* #5 clk<=~clk;

initial begin 
rstn = 0;
clk = 0;

#10 rstn =1;


#10000 $stop;

end

endmodule
