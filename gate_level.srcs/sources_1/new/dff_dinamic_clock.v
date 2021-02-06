`timescale 1ns / 1ps
//              | |                         |Project name:  DFF with dinamic clock
//==============+=+==============           |Developer: KeisN13
//              | |            ||           |   
//    |***|    |***|           ||           |Description: https://ru.wikipedia.org/wiki/Триггер
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

module dff_dinamic_clock(
    input ic,
    input id,
    output oq,
    output onq
    );
    
    wire dd1_3;
    wire dd2_3;
    wire dd3_4;
    wire dd4_3;
    wire dd5_3;
    wire dd6_3;
    
    nand2 dd1 (
        .x1(ic),
        .x2(dd2_3),
        .y(dd1_3)
    );

    nand2 dd2 (
        .x1(dd1_3),
        .x2(dd4_3),
        .y(dd2_3)
    );
    
    nand3 dd3 (
        .x1(dd1_3),
        .x2(ic),
        .x3(dd4_3),
        .y(dd3_4)
    );
    
    nand2 dd4 (
        .x1(dd3_4),
        .x2(id),
        .y(dd4_3)
    );
    
    nand2 dd5 (
        .x1(dd1_3),
        .x2(dd6_3),
        .y(dd5_3)
    );
    
    nand2 dd6 (
        .x1(dd5_3),
        .x2(dd3_4),
        .y(dd6_3)
    );
    
    assign oq = dd5_3;
    assign onq = dd6_3;
    
endmodule
