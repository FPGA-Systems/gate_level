`timescale 1ns / 1ps
//              | |                         |Project name: mux2in1
//==============+=+==============           |Developer:
//              | |            ||           |   Mux 2 in 1 out
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




module mux2in1(
    input x1,
    input x2,
    input sel,
    output y
    );
    
    wire not1_bot_out;
    wire nand2_top_out;
    wire nand2_bot_out;
    
    nand2 nand2_top (
        .x1(x1),
        .x2(sel),
        .y(nand2_top_out)
    );
    
    not1 not_bot(
        .x1(sel),
        .y(not1_bot_out)
    );
    
    nand2 nand2_bot (
        .x1(not1_bot_out),
        .x2(x2),
        .y(nand2_bot_out)
    );
    
    nand2 nand2_cen (
        .x1(nand2_top_out),
        .x2(nand2_bot_out),
        .y(y)
    );
    
    
endmodule
