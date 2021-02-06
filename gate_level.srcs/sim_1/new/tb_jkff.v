`timescale 1ns / 1ps


module tb_jkff(

    );
    
     reg [7:0] cnt;
    initial begin
        cnt <= 0;
    end
    
    always @(*)
        cnt <= #5 cnt + 1;
        
        
        jkff dut (
            .ij  (cnt[3]),
            .ik  (cnt[4]),
            .inc (cnt[0]),
            .ins (1),
            .inr (cnt[7]),
            .oq  (),
            .onq ()
        );
        
        
        
        
        
        
        
endmodule
