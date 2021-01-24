--              | |                         |Project name: rs latch  
--==============+=+==============           |Developer:
--              | |            ||           |   
--    |***|    |***|           ||           |Description: nor based  
--====|***|    |***|           \\ |***|     |https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/R-S_mk2.gif/220px-R-S_mk2.gif
--====|***|    |***|             =|***|==== |https://en.wikipedia.org/wiki/Flip-flop_(electronics)#Simple_set-reset_latches   
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


entity rs is
    Port ( reset : in STD_LOGIC;
           set : in STD_LOGIC;
           q : out STD_LOGIC;
           nq : out STD_LOGIC);
end rs;

architecture rtl of rs is
    
    signal net_q : std_logic;
    signal net_nq : std_logic;
    
begin
    
    nor2_top : entity work.nor2(rtl)
    port map (
        x1 => reset,
        x2 => net_nq,
        y  => net_q
    );
    
    nor_bot : entity work.nor2(rtl)
    port map (
        x1 => net_q,
        x2 => set,
        y  => net_nq
    );
        
    q <= net_q;
    nq <= net_nq;
end rtl;
