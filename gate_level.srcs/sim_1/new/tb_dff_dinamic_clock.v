`timescale 1ns / 1ps
//              | |                         |Project name: tb dff   
//==============+=+==============           |Developer:
//              | |            ||           |   
//    |***|    |***|           ||           |Description:   
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


module tb_dff_dinamic_clock(

    );
    
    reg ic;
    reg id;
    
    wire oq;
    wire onq;
    
    reg [2:0] cnt;
    
    initial begin
        cnt <= 0;
    end
    
    always @(*)
        cnt <= #10 cnt + 1;
    
    dff_dinamic_clock dut(
     .ic(cnt[0]),
     .id(cnt[2]),
     .oq(oq),
     .onq(onq)
    );
endmodule
