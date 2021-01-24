--              | |                         |Project name: NOR gate  
--==============+=+==============           |Developer:
--              | |            ||           |   
--    |***|    |***|           ||           |Description:   
--====|***|    |***|           \\ |***|     |2 input nor gate
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

entity nor2 is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           y : out STD_LOGIC);
    attribute dont_touch : string;
    attribute dont_touch of nor2 : entity is "yes";
end nor2;

architecture rtl of nor2 is

    signal or2_out : std_logic;
    
    component not1 
    port (
        x1 : in std_logic;
        y  : out std_logic
    );
    end component;
    
begin

	inst_or2 : entity work.or2(rtl)
    port map (
        x1 => x1,
        x2 => x2,
        y  => or2_out
    );
    
    inst_not1 : entity work.not1(rtl)
    port map (
        x1 => or2_out,
        y  => y
    );
    
end rtl;
