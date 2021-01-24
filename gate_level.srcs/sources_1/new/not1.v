`timescale 1ns / 1ps
//              | |                         |Project name:  NOT 
//==============+=+==============           |Developer:
//              | |            ||           |   
//    |***|    |***|           ||           |Description: Not ? inverter
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
module not1(
    input x1,
    output y
    );
    
    assign y = ~ x1;
    //y <= ! x1;
    
endmodule
