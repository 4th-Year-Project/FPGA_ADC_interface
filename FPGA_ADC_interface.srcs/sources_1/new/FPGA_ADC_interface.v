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
    // DONE,
    // DATA,
     //VALID,
     SYSCLK,
     RESET,
     ENABLE
    );

output CONVST, CS , RD;
//output DONE, VALID;
output [2:0] A;
//output [7:0] DATA;

input EOC, SYSCLK, RESET, ENABLE;
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
wire SYSCLK; 
wire RESET;
wire ENABLE;

reg [16:0]COUNTER;
reg CLK_2MHZ = 0;
reg CLK_4MHZ = 0;
wire CLK_8MHZ;
parameter MAXSAMPLES = 8'd200; 

    
assign RD = EOC; 
assign CS = EOC;

//------Debugging-------
vio_0 vio_0 (
      .clk(CLK_4MHZ),              // input wire clk
      .probe_in0(DATA),  // input wire [7 : 0] probe_in0
      .probe_in1(VALID),  // input wire [0 : 0] probe_in1
      .probe_in2(DONE)  // input wire [0 : 0] probe_in2
    );
    
ila_0 ila_0 (
        .clk(CLK_4MHZ), // input wire clk
        .probe0(DATA), // input wire [7:0]  probe0  
        .probe1(VALID), // input wire [0:0]  probe1 
        .probe2(DONE) // input wire [0:0]  probe2
    );

//------Clocking-------
clk_wiz_0 clkgen1
   (
    .clk_out1(CLK_8MHZ),     // output clk_out1
    .clk_in1(SYSCLK));      // input clk_in1
   

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
always @ (negedge CLK_2MHZ or posedge RESET) begin  //Start sampling sequence
    if (RESET) begin
        COUNTER <= 0;
        A <= 0;
        DONE <= 0;
    end 
    else begin    
        if (ENABLE && (COUNTER < MAXSAMPLES)) begin
            COUNTER <= COUNTER + 1;
            A <= A+1;
        end 
        if (COUNTER == MAXSAMPLES) 
            DONE <= 1;
    end   
end

always @ (posedge CLK_4MHZ or posedge RESET)begin
    if (RESET) begin
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
