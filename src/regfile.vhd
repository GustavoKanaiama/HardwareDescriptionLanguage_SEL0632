library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.riscv_pkg.ALL;

entity regfile is
  generic (
    N : integer := 32  -- largura dos registradores
  );
  port (
    clk  : in  STD_LOGIC;
    A1   : in  BIT_VECTOR(4 downto 0); -- endereço rs1
    A2   : in  BIT_VECTOR(4 downto 0); -- endereço rs2
    A3   : in  BIT_VECTOR(4 downto 0); -- endereço rd
    WD3  : in  BIT_VECTOR(N-1 downto 0); -- dado a ser escrito
    WE3  : in  BIT; -- controle de escrita
    RD1  : out BIT_VECTOR(N-1 downto 0); -- dado lido de rs1
    RD2  : out BIT_VECTOR(N-1 downto 0)  -- dado lido de rs2
  );
end entity;

architecture Behavioral of regfile is

  type reg_array is array (0 to 31) of BIT_VECTOR(N-1 downto 0);
  signal regs : reg_array := (OTHERS => (OTHERS => '0'));

begin

  -- leitura assíncrona
  RD1 <= regs(bit_vector_to_integer(A1));
  RD2 <= regs(bit_vector_to_integer(A2));

  -- escrita síncrona na borda de subida do clock
  process(clk)
  begin
    if rising_edge(clk) then
      if WE3 = '1' then
        if A3 /= "00000" then
          regs(bit_vector_to_integer(A3)) <= WD3;
        end if;
      end if;
    end if;
  end process;

end architecture;
