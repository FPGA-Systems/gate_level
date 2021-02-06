`timescale 1ns / 1ps

(* DONT_TOUCH = "yes" *)
module KR1533IE5(
    input pin1_D1,
    input pin2_R0,
    input pin3_R1,
    input pin4_NC,
    input pin5_Ucc,
    input pin6_NC,
    input pin7_NC,
    output pin8_Q2,
    output pin9_Q1,
    input pin10_0V,
    output pin11_Q3,
    output pin12_Q0,
    input pin13_NC,
    input pin14_D0
    );
    
    wire zemlya = 1'b0;
    wire pitanie = 1'b1;
    
    wire net_reset;
    
    jkff jk_1 (
        .ij  (pitanie),
        .ik  (pitanie),
        .inc (pin14_D0),
        .ins (pitanie),
        .inr (net_reset),
        .oq  (pin12_Q0),
        .onq ()
    );
    
    jkff jk_2 (
        .ij  (pitanie),
        .ik  (pitanie),
        .inc (pin1_D1),
        .ins (pitanie),
        .inr (net_reset),
        .oq  (pin9_Q1),
        .onq ()
    );
    
    
    jkff jk_3 (
        .ij  (pitanie),
        .ik  (pitanie),
        .inc (pin9_Q1),
        .ins (pitanie),
        .inr (net_reset),
        .oq  (pin8_Q2),
        .onq ()
    );
    
    
    jkff jk_4 (
        .ij  (pitanie),
        .ik  (pitanie),
        .inc (pin8_Q2),
        .ins (pitanie),
        .inr (net_reset),
        .oq  (pin11_Q3),
        .onq ()
    );
    
    nand2 inst_reset (
        .x1(pin2_R0),
        .x2(pin3_R1),
        .y (net_reset)
    );
endmodule
