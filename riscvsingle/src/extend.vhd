ENTITY extend IS
  PORT(
    immsrc : IN BIT_VECTOR(1 DOWNTO 0);
    instr  : IN BIT_VECTOR(31 DOWNTO 0);
    immext : OUT BIT_VECTOR(31 DOWNTO 0)
  );
END extend;

ARCHITECTURE rtl OF extend IS

  -- Função para replicar um bit N vezes
  FUNCTION replicate_bit(bit_value: BIT; count: INTEGER) RETURN BIT_VECTOR IS
    VARIABLE result : BIT_VECTOR(count - 1 DOWNTO 0);
  BEGIN
    FOR i IN 0 TO count - 1 LOOP
      result(i) := bit_value;
    END LOOP;
    RETURN result;
  END FUNCTION;

  -- ALIAS DECLARATIONS (ficam dentro da arquitetura)
  ALIAS X_sign : BIT IS instr(31);
  ALIAS I_imm  : BIT_VECTOR(11 DOWNTO 0) IS instr(31 DOWNTO 20);

  ALIAS S_imm2 : BIT_VECTOR(4 DOWNTO 0) IS instr(11 DOWNTO 7);
  ALIAS S_imm1 : BIT_VECTOR(6 DOWNTO 0) IS instr(31 DOWNTO 25);

  ALIAS B_imm3 : BIT IS instr(7);
  ALIAS B_imm2 : BIT_VECTOR(5 DOWNTO 0) IS instr(30 DOWNTO 25);
  ALIAS B_imm1 : BIT_VECTOR(3 DOWNTO 0) IS instr(11 DOWNTO 8);

  ALIAS J_imm3 : BIT_VECTOR(7 DOWNTO 0) IS instr(19 DOWNTO 12);
  ALIAS J_imm2 : BIT IS instr(20);
  ALIAS J_imm1 : BIT_VECTOR(9 DOWNTO 0) IS instr(30 DOWNTO 21);

BEGIN

  PROCESS(immsrc, instr)
  BEGIN
    CASE immsrc IS

      WHEN "00" =>  -- Tipo I
        immext <= replicate_bit(X_sign, 20) & I_imm;

      WHEN "01" =>  -- Tipo S
        immext <= replicate_bit(X_sign, 20) & S_imm1 & S_imm2;

      WHEN "10" =>  -- Tipo B
        immext <= replicate_bit(X_sign, 20) & B_imm3 & B_imm2 & B_imm1 & '0';

      WHEN "11" =>  -- Tipo J
        immext <= replicate_bit(X_sign, 12) & J_imm3 & J_imm2 & J_imm1 & '0';

    END CASE;
  END PROCESS;

END rtl;
