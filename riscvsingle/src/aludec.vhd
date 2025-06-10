ENTITY aludec IS
  PORT (
    ALUOp     : IN  BIT_VECTOR(1 DOWNTO 0); -- Tipo da instrução
    funct3    : IN  BIT_VECTOR(2 DOWNTO 0); -- Campo funct3
    opb5      : IN  BIT;                    -- Bit 5 do opcode
    funct7b5  : IN  BIT;                    -- Bit 5 do funct7
    ALUControl: OUT BIT_VECTOR(2 DOWNTO 0)  -- Código para controle da ALU
  );
END aludec;

ARCHITECTURE comportamento OF aludec IS
  SIGNAL cod : BIT_VECTOR(1 DOWNTO 0); -- Agrupamento dos bits de controle
BEGIN
  cod <= opb5 & funct7b5; -- Junta opb5 e funct7b5 em um vetor de 2 bits

  PROCESS (ALUOp, funct3, cod)
  BEGIN
    CASE ALUOp IS
      WHEN "00" =>                  -- lw, sw
        ALUControl <= "000";       -- ADD

      WHEN "01" =>                  -- beq
        ALUControl <= "001";       -- SUB

      WHEN "10" =>                  -- R-type
        CASE funct3 IS
          WHEN "000" =>
            IF cod = "11" THEN
              ALUControl <= "001"; -- SUB
            ELSE
              ALUControl <= "000"; -- ADD
            END IF;

          WHEN "010" =>
            ALUControl <= "101";   -- SLT

          WHEN "110" =>
            ALUControl <= "011";   -- OR

          WHEN "111" =>
            ALUControl <= "010";   -- AND

          WHEN OTHERS =>
            ALUControl <= "000";   -- Default: ADD
        END CASE;

      WHEN OTHERS =>
        ALUControl <= "000";       -- Default
    END CASE;
  END PROCESS;
END comportamento;
