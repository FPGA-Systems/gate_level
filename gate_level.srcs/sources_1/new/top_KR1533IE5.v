`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2021 11:58:25 AM
// Design Name: 
// Module Name: top_KR1533IE5
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


module top_KR1533IE5(
        input isys_clk,
        output q0,
        output q1,
        output q2,
        output q3
    );
    
     
    wire clk;
    
    (*MARK_DEBUG="true"*)reg [26:0] cnt;
    
    initial begin
        cnt <= 0;
    end
    
    always @(posedge clk)
        cnt <=  cnt + 1;
    
    (* DONT_TOUCH = "yes" *) wire connect;
    
    KR1533IE5 JK_COUNTER(
        .pin1_D1(connect),
        .pin2_R0(1'b0),
        .pin3_R1(1'b0),
        .pin4_NC(),
        .pin5_Ucc(),
        .pin6_NC(),
        .pin7_NC(),
        .pin8_Q2(q2),
        .pin9_Q1(q1),
        .pin10_0V(),
        .pin11_Q3(q3),
        .pin12_Q0(connect),
        .pin13_NC(),
        .pin14_D0(cnt[24])
    );
    
    assign q0 = connect;
    
    
    clk_wiz_0 clk_wiz (
        .oclk(clk),
        .clk_in1(isys_clk)); 
        
endmodule
