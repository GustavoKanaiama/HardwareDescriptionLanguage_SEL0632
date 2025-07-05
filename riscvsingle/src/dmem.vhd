library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dmem is
    port(
        clk, we: in BIT;
        a, wd: in BIT_VECTOR(31 downto 0);
        rd: out BIT_VECTOR(31 downto 0)
    );
end entity;

architecture behave of dmem is
    -- Type and signal declarations
    type ramtype is array (63 downto 0) of BIT_VECTOR(31 downto 0);
    signal mem: ramtype;
    
    -- Conversion functions
    function to_stdulogic(b: BIT) return std_ulogic is
    begin
        if b = '1' then return '1'; else return '0'; end if;
    end function;
    
    signal clk_sl : std_ulogic;
begin
    -- Convert clock once for the process
    clk_sl <= to_stdulogic(clk);
    
    -- Write process (synchronous)
    process(clk_sl)
        variable we_sl : std_ulogic;
        variable addr : natural;
    begin
        we_sl := to_stdulogic(we);
        addr := to_integer(unsigned(to_stdlogicvector(a(7 downto 2))));
        
        if rising_edge(clk_sl) then
            if we_sl = '1' then 
                mem(addr) <= wd;
            end if;
        end if;
    end process;
    
    -- Read process (asynchronous)
    rd <= mem(to_integer(unsigned(to_stdlogicvector(a(7 downto 2)))));
end architecture;