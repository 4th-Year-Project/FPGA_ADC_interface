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
     READY,
     LAST,
     CLK_2MHZ,
     RESET_OUT_INV,
     CLK_8MHZ,
     RESET, 
     ENABLE
    );

output CONVST, CS , RD; 
output LAST, CLK_2MHZ, RESET_OUT_INV, VALID, DONE;
output [2:0] A;
output [7:0] DATA;

input EOC, CLK_8MHZ, RESET, ENABLE;
input READY;
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
reg LAST;
wire CLK_8MHZ; 
wire RESET;
wire ENABLE;
wire READY;
wire RESET_OUT_INV;

reg [16:0]COUNTER;
reg CLK_2MHZ = 0;
reg CLK_4MHZ = 0; 
parameter integer MAXSAMPLES = 200; 

assign RESET_OUT_INV = ~RESET;    
assign RD = EOC; 
assign CS = EOC;
//------Clocking-------
always @ (posedge CLK_8MHZ) begin //Clocking
    if(RESET) 
        CLK_4MHZ <= 1'b0;
    else
        CLK_4MHZ <= !CLK_4MHZ;
end
always @ (posedge CLK_4MHZ) begin //Clocking
    if(RESET) 
        CLK_2MHZ <= 1'b0;
    else
        CLK_2MHZ <= !CLK_2MHZ;
end
//------Logic-------     
always @ (negedge CLK_2MHZ or posedge RESET) begin  //Sanple number and address Counters
    if (RESET) begin
        COUNTER <= 0;
        A <= 0;
        DONE <= 0;
        LAST <= 0;
    end 
    else begin    
        if (ENABLE && (COUNTER < MAXSAMPLES)) begin
            COUNTER <= COUNTER + 1;
            A <= A+2;
        end 
        
        if (COUNTER == MAXSAMPLES - 1)
            LAST = 1;
        else
            LAST = 0;
            
        if (COUNTER == MAXSAMPLES) 
            DONE <= 1;
    end   
end

always @ (posedge CLK_4MHZ or posedge RESET)begin //Conversion initator
    if (RESET || !ENABLE ) begin
    CONVST = 1;
    end
    else begin
        if(DONE) begin
            CONVST = 1;
        end
        else begin
            CONVST = !CONVST;
        end
    end
end

always @ (posedge EOC or posedge DONE) begin // Valid data signal control
    if(RESET) begin
    DATA = 0;
    VALID = 0;
end
    else begin
        if (DONE)  
        VALID = 0;   
        else begin
            DATA = DB;
            VALID = 1;
        end
    end
end

endmodule
