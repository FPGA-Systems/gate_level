--              | |                         |Project name: JK FF  
--==============+=+==============           |Developer:
--              | |            ||           |   
--    |***|    |***|           ||           |Description:   
--====|***|    |***|           \\ |***|     |
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


entity jkff is
    Port ( ij : in STD_LOGIC;
           ik : in STD_LOGIC;
           inc : in STD_LOGIC;
           ins : in STD_LOGIC;
           inr : in STD_LOGIC;
           oq : out STD_LOGIC;
           onq : out STD_LOGIC);
end jkff;

architecture rtl of jkff is
    
    signal dd1_o : std_logic;
    signal dd2_o : std_logic;
    signal dd3_o : std_logic;
    signal dd4_o : std_logic;
    signal dd5_o : std_logic;
    signal dd6_o : std_logic;
    signal dd7_o : std_logic;
    signal dd8_o : std_logic;
        
begin
    
    dd1: entity work.nand4(rtl) 
    port map (
        x1 => ins,
        x2 => dd8_o,
        x3 => ik,
        x4 => inc,
        y  => dd1_o
    );
    
    dd2: entity work.nand4(rtl) 
    port map (
        x1 => inc,
        x2 => ij,
        x3 => dd7_o,
        x4 => inr,
        y  => dd2_o
    );
    
    dd3: entity work.nand3(rtl) 
    port map (
        x1 => ins,
        x2 => dd1_o,
        x3 => dd4_o,
        y  => dd3_o
    );
    
    
    dd4: entity work.nand3(rtl) 
    port map (
        x1 => dd3_o,
        x2 => dd2_o,
        x3 => inr,
        y  => dd4_o
    );
    
    dd5: entity work.nand2(rtl) 
    port map (
        x1 => dd1_o,
        x2 => dd3_o,
        y  => dd5_o
    );
    
    dd6: entity work.nand2(rtl) 
    port map (
        x1 => dd4_o,
        x2 => dd2_o,
        y  => dd6_o
    );
    
    dd7: entity work.nand3(rtl) 
    port map (
        x1 => dd8_o,
        x2 => ins,
        x3 => dd5_o,
        y  => dd7_o
    );
    
    dd8: entity work.nand3(rtl) 
    port map (
        x1 => dd7_o,
        x2 => dd6_o,
        x3 => inr,
        y  => dd8_o
    );
    
    oq <= dd7_o;
    onq <= dd8_o;
end rtl;
