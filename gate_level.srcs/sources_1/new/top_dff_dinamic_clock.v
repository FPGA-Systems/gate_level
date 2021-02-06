`timescale 1ns / 1ps

//              | |                         |Project name: Top dff   
//==============+=+==============           |Developer:
//              | |            ||           |   
//    |***|    |***|           ||           |Description: top file for checking dff with ILA   
//====|***|    |***|           \\ |***|     |   
//====|***|    |***|             =|***|==== |   
//====|***|====|***|    |**\                |   
//====|***|    |***|====|***\     |***|     |   
//    |***|    |***|    |****|====|***|==== |    
//             |***|    |****|    FPGA      |   
//fpga-systems |***| ru |****| developers   |   
//             |***|    |****|  community   |   
//    |***|    |***|    |****|====|***|==== |   
//====|***|    |***|====|***/     |***|     |   
//====|***|====|***|    |**/                |   
//====|***|    |***|             =|***|==== |   
//====|***|    |***|           // |***|     |   
//    |***|    |***|           ||           |   
//              | |            ||           |web      - https://fpga-systems.ru  
//==============+=+==============           |telegram - https://t.me/fpgasystems   
//              | |                         |Youtube  - https://www.youtube.com/c/fpgasystems   
(* DONT_TOUCH = "yes" *)
module top_dff_dinamic_clock(
        input isys_clk
    );
    
    wire clk;
    (*MARK_DEBUG="true"*)wire oq, onq;
    
    (*MARK_DEBUG="true"*)reg [7:0] cnt;
    
    initial begin
        cnt <= 0;
    end
    
    always @(posedge clk)
        cnt <=  cnt + 1;
    
    
    dff_dinamic_clock dut(
        .ic(cnt[5]),
        .id(cnt[7]),
        .oq(oq),
        .onq(onq)
    );
    
    clk_wiz_0 clk_wiz (
        .oclk(clk),
        .clk_in1(isys_clk));  
endmodule
