`timescale 1ns / 1ps
//              | |                         |Project name:   
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


module xor2(
    input x1,
    input x2,
    output y
    );
    
    wire not_top_out; 
    wire not_bot_out;
    wire and_top_out; 
    wire and_bot_out; 
    
    
    not1 not_top(
        .x1(x1),
        .y(not_top_out)
    );
    
    not1 not_bot(
        .x1(x2),
        .y(not_bot_out)
    );
    
    and2 and2_top (
        .x1(not_top_out),
        .x2(x2),
        .y(and_top_out)
    );
    
    and2 and2_bot (
        .x1(x1),
        .x2(not_bot_out),
        .y(and_bot_out)
    );
    
    or2 or2_cen (
        .x1(and_top_out),
        .x2(and_bot_out),
        .y(y)
    );
endmodule
