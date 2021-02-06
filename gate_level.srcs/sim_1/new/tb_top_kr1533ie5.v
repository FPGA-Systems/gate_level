`timescale 1ns / 1ps


module tb_top_kr1533ie5(

    );
    
    reg sys_clk;
    initial begin
        sys_clk <= 1'b0;
    end
    
    always @(*)
        sys_clk <= #5 ~sys_clk;
    
    top_KR1533IE5 dut(
         .isys_clk(sys_clk),
         .q0(),
         .q1(),
         .q2(),
         .q3()
    );
endmodule
