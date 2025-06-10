LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.riscv_pkg.ALL;

ENTITY teste_pkg IS
  GENERIC(Width : INTEGER := 32);
  PORT (
    d0, d1     : in  BIT_VECTOR(Width-1 DOWNTO 0);
    s          : in  BIT;
    y_mux      : out BIT_VECTOR(Width-1 DOWNTO 0);  -- Mux output
    sum_result : out BIT_VECTOR(Width-1 DOWNTO 0);  -- Addition result
    sub_result : out BIT_VECTOR(Width-1 DOWNTO 0)   -- Subtraction result
  );
END teste_pkg;

ARCHITECTURE teste OF teste_pkg IS
BEGIN
  -- Test the mux2 component
  x1 : mux2
    GENERIC MAP (Width => Width)
    PORT MAP (
      d0 => d0,
      d1 => d1,
      s  => s,
      y  => y_mux
    );

  -- Test the overloaded "+" operator
  sum_result <= d0 + d1;
  
  -- Test the overloaded "-" operator
  sub_result <= d0 - d1;

END ARCHITECTURE teste;