`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 19:57:39
// Design Name: 
// Module Name: tb_bcd
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


module tb_bcd();

reg CLK100MHZ,reset;
wire CA,CB,CC,CD,CE,CF,CG;
wire [7:0] AN; 

top_7seg_demo u1(CLK100MHZ,reset,CA,CB,CC,CD,CE,CF,CG, AN );

always@* #5 CLK100MHZ<=~CLK100MHZ;

initial begin 
reset = 0;
CLK100MHZ= 0;

#10000 $stop;

end

endmodule
