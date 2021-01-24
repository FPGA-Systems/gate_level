`timescale 1ns / 1ps
//              | |                         |Project name: nand2   
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



module nand2(
    input x1,
    input x2,
    output y
    );
    
    wire and2_out;
    
    and2 inst_and2 (
        .x1(x1),
        .x2(x2),
        .y(and2_out)
    );
    
    not1 inst_not(
        .x1(and2_out),
        .y(y)
    );
    
endmodule
