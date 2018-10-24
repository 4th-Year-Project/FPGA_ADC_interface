`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2018 18:25:24
// Design Name: 
// Module Name: FPGA_ADC_interface
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


module FPGA_ADC_interface(
     CONVST,
     DB,
     EOC,
     CS,
     RD,
     A,
     DONE,
     DATA,
     VALID,
     CLK_2MHZ,
     RESET
    );
    
    output CONVST, CS , RD, DONE, VALID;
    output [2:0] A;
    output [7:0] DATA;
    
    input EOC, CLK_2MHZ, RESET;
    input [7:0]DB;
    
    reg CONVST;
    wire [7:0]DB;
    wire EOC;
    wire CS;
    wire RD;
    reg [2:0]A;
    reg DONE;
    reg [7:0] DATA;
    reg VALID;
    wire CLK_2MHZ; 
    wire RESET;
    
    reg [16:0]COUNTER = 0;
    
assign RD = EOC; 
assign CS = EOC;
    
    initial begin
    CONVST = 1;
    A = 0;
    DONE = 0;
    COUNTER = 0;
    VALID = 0;
    end
    
    always @ (negedge RESET) begin
    
    end
    
    
endmodule
