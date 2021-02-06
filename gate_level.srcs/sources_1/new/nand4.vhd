--              | |                         |Project name: nand gate  
--==============+=+==============           |Developer:
--              | |            ||           |   
--    |***|    |***|           ||           |Description:   
--====|***|    |***|           \\ |***|     |4 input nand gate
--====|***|    |***|             =|***|==== |   
--====|***|====|***|    |**\                |   
--====|***|    |***|====|***\     |***|     |   
--    |***|    |***|    |****|====|***|==== |    
--             |***|    |****|    FPGA      |   
--fpga-systems |***| ru |****| developers   |   
--             |***|    |****|  community   |   
--    |***|    |***|    |****|====|***|==== |   
--====|***|    |***|====|***/     |***|     |   
--====|***|====|***|    |**/                |   
--====|***|    |***|             =|***|==== |   
--====|***|    |***|           // |***|     |   
--    |***|    |***|           ||           |   
--              | |            ||           |web      - https://fpga-systems.ru  
--==============+=+==============           |telegram - https://t.me/fpgasystems   
--              | |                         |Youtube  - https://www.youtube.com/c/fpgasystems   


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity nand4 is
Port ( x1 : in STD_LOGIC;
       x2 : in STD_LOGIC;
       x3 : in STD_LOGIC;
       x4 : in STD_LOGIC;
       y : out STD_LOGIC);
end nand4;

architecture rtl of nand4 is
    signal and2_1_out : std_logic;
    signal and2_2_out : std_logic;
begin
    
    inst_and2_1 : entity work.and2(rtl)
    port map (
        x1 => x1,
        x2 => x2,
        y  => and2_1_out
    );
    
    inst_and2_2 : entity work.and2(rtl)
    port map (
        x1 => and2_1_out,
        x2 => x3,
        y  => and2_2_out
    );
    
    
    inst_nand2 : entity work.nand2(rtl)
    port map (
        x1 => and2_2_out,
        x2 => x4,
        y  => y
    );
end rtl;
