--              | |                         |Project name: 3 and gate  
--==============+=+==============           |Developer:
--              | |            ||           |   
--    |***|    |***|           ||           |Description:   
--====|***|    |***|           \\ |***|     |3 input and gate
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


entity and3 is
Port ( x1 : in STD_LOGIC;
       x2 : in STD_LOGIC;
       x3 : in STD_LOGIC;
       y : out STD_LOGIC);
end and3;

architecture rtl of and3 is
    signal and2_out : std_logic;
begin
    
    inst_and2_1 : entity work.and2(rtl)
    port map (
        x1 => x1,
        x2 => x2,
        y  => and2_out
    );
    
    
    inst_and2_2 : entity work.and2(rtl)
    port map (
        x1 => and2_out,
        x2 => x3,
        y  => y
    );
end rtl;
