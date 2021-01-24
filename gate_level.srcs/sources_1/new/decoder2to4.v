`timescale 1ns / 1ps
//              | |                         |Project name: decoder2to4  
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


module decoder2to4(
    input x1,
    input x2,
    input en,
    output y1,
    output y2,
    output y3,
    output y4
    );
    
    wire not1_1_out;
    wire not1_2_out;
    
    not1 not_1(
        .x1(x1),
        .y(not1_0_out)
    );
    
    not1 not1_2(
        .x1(x2),
        .y(not1_1_out)
    );
    
    and3 and3_1 (
        .x1(not1_0_out),
        .x2(not1_1_out),
        .x3(en),
        .y(y1)
    );
    
    and3 and3_2 (
        .x1(x1),
        .x2(not1_1_out),
        .x3(en),
        .y(y2)
    );
    
    and3 and3_3 (
        .x1(not1_0_out),
        .x2(x2),
        .x3(en),
        .y(y3)
    );
    
    and3 and3_4 (
        .x1(x1),
        .x2(x2),
        .x3(en),
        .y(y4)
    );
    
    
    
    
endmodule
