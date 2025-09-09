`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 12:24:19
// Design Name: 
// Module Name: mux81
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


module mux181(input[3:0] D0,D1,D2,D3,D4,D5,D6,D7,
               input[2:0] sel,
               output reg[3:0]Y);
 always @*
  case (sel)
  3'b000: Y= D0;
  3'b001: Y= D1;
  3'b010: Y= D2;
  3'b011: Y= D3;
  3'b100: Y= D4;
  3'b101: Y= D5;  
  3'b110: Y= D6;
 default: Y= D7;
  endcase  
endmodule
