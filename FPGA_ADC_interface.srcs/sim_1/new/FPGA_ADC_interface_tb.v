`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2018 18:44:39
// Design Name: 
// Module Name: FPGA_ADC_interface_tb
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


module FPGA_ADC_interface_tb( CS_tb, RD_tb, CONVST_tb, DONE_tb, VALID_tb, A_tb, DATA_tb, EOC_tb, CLK_2MHZ_tb, RESET_tb, DB_tb
 );
 input CS_tb, RD_tb, CONVST_tb, DONE_tb, VALID_tb;
 input [2:0] A_tb;
 input [7:0] DATA_tb;
 
 output EOC_tb, CLK_2MHZ_tb, RESET_tb;
 output [7:0]DB_tb;
 
//Inputs
wire CS_tb, RD_tb, CONVST_tb, DONE_ctb, VALID_tb;
wire [2:0]A_tb;
wire [7:0]DATA_tb;
//Outputs
reg  EOC_tb, CLK_2MHZ_tb, RESET_tb;
reg [7:0]DB_tb;

initial begin 
EOC_tb = 1;
DB_tb = 0;
CLK_2MHZ_tb = 0;
RESET_tb = 0;
end

always begin
#5 CLK_2MHZ_tb = ~CLK_2MHZ_tb;
end

FPGA_ADC_interface DUT(
.CONVST(CONVST_tb),
.DB(DB_tb),
.EOC(EOC_tb),
.CS(CS_tb),
.RD(RD_tb),
.A(A_tb),
.DONE(DONE_tb),
.DATA(DATA_tb),
.VALID(VALID_tb),
.CLK_2MHZ(CLK_2MHZ_tb),
.RESET(RESET_tb)
);

endmodule
