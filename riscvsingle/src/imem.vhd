use WORK.RISCV_PKG.all;

library IEEE;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use STD.TEXTIO.all;

entity imem is
    port(a: in BIT_VECTOR(31 downto 0);
        rd: out BIT_VECTOR(31 downto 0));
end;

architecture behave of imem is
    type ramtype is array (63 downto 0) of BIT_VECTOR(31 downto 0);
    
    -- initialize memory from file
    impure function init_ram_hex return ramtype is
        file text_file : text open read_mode is "../src/riscvtest.txt";
        variable text_line : line;
        variable temp_slv : std_logic_vector(31 downto 0);
        variable ram_content : ramtype;
        variable i : integer := 0;
    begin
        -- Initialize all contents to zero first
        for i in 0 to 63 loop
            ram_content(i) := (others => '0');
        end loop;
        
        -- Read instructions from file
        while not endfile(text_file) and i <= ramtype'high loop
            readline(text_file, text_line);
            -- First read into std_logic_vector
            hread(text_line, temp_slv);
            -- Then convert to BIT_VECTOR
            ram_content(i) := to_bitvector(temp_slv);
            i := i + 1;
        end loop;
        
        if not endfile(text_file) then
            report "Warning: Not all instructions fit in instruction memory" severity warning;
        end if;
        
        return ram_content;
    end function;
    
    signal mem : ramtype := init_ram_hex;
begin
    -- read memory
    process(a) 
        variable addr : natural;
    begin
        addr := to_integer(unsigned(to_stdlogicvector(a(31 downto 2))));
        if addr <= ramtype'high then
            rd <= mem(addr);
        else
            rd <= (others => '0');
            report "Instruction memory address out of bounds" severity warning;
        end if;
    end process;
end;