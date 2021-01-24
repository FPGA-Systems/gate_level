--              | |                         |Project name: OR gate  
--==============+=+==============           |Developer:
--              | |            ||           |   
--    |***|    |***|           ||           |Description:   
--====|***|    |***|           \\ |***|     |2 input or gate
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

entity or2 is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           y : out STD_LOGIC);
    attribute dont_touch : string;
    attribute dont_touch of or2 : entity is "yes";
end or2;

architecture rtl of or2 is

begin

	y <= x1 or x2; 

end rtl;
