`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 18:47:44
// Design Name: 
// Module Name: cnt3
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


module cnt3(
    output reg [2:0] Q,
    input rstn, clk, en
);

    always @(posedge clk, negedge rstn) 
        if (!rstn)
            Q <= 0;
        else if (en)begin
        if(Q == 3'd7)
            Q <= 3'b0;
        else
            Q <= Q + 1;
    end
 
endmodule
