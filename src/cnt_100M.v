`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 18:47:13
// Design Name: 
// Module Name: cnt_100M
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


module cnt_100M(input clk, input rstn, output eo_100M,eo_10k,eo_1k);
wire tcl, tc2, tc3, tc4, tc5, tc6, tc7, tc8;
wire [3:0] Q100M;

bcd_cnt CNT0(.Q(), .TC(tcl), .inc(1'b1), .rstn(rstn), .clk(clk));
bcd_cnt CNT1(.Q(), .TC(tc2), .inc(tcl), .rstn(rstn), .clk(clk));
bcd_cnt CNT2(.Q(), .TC(tc3), .inc(tc2), .rstn(rstn), .clk(clk));
bcd_cnt CNT3(.Q(), .TC(tc4), .inc(tc3), .rstn(rstn), .clk(clk));
bcd_cnt CNT4(.Q(), .TC(tc5), .inc(tc4), .rstn(rstn), .clk(clk));
bcd_cnt CNT5(.Q(), .TC(tc6), .inc(tc5), .rstn(rstn), .clk(clk));
bcd_cnt CNT6(.Q(), .TC(tc7), .inc(tc6), .rstn(rstn), .clk(clk));
bcd_cnt CNT7(.Q(Q100M), .TC(tc8), .inc(tc7), .rstn(rstn), .clk(clk));

assign eo_100M = tc8;
assign eo_10k = tc5;
assign eo_1k = tc3;
endmodule

