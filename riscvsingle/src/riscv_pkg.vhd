library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


PACKAGE riscv_pkg IS

	CONSTANT RISCV_Data_Width : INTEGER := 32;
	
	-- FUNCTION bit_vector2integer conversion
	FUNCTION bit_vector_to_integer(bv: BIT_VECTOR(4 DOWNTO 0)) RETURN integer;
	
	-- FUNCTION "+" and "-" overloaded
	FUNCTION "+" (a, b : BIT_VECTOR) RETURN BIT_VECTOR;
   FUNCTION "-" (a, b : BIT_VECTOR) RETURN BIT_VECTOR;
	
	-- mux2 declaration
	COMPONENT mux2
		GENERIC (Width : INTEGER := RISCV_Data_Width);
		PORT (
			d0, d1 : in BIT_VECTOR(Width-1 DOWNTO 0);
			s      : in BIT;
			y      : out BIT_VECTOR(Width-1 DOWNTO 0)
		);
	END COMPONENT;
	-- END OF mux2

	-- mux3 declaration
	COMPONENT mux3
		GENERIC (Width : INTEGER := RISCV_Data_Width);
		PORT (
			d0, d1, d2 : in BIT_VECTOR(Width-1 DOWNTO 0);
			s         : in BIT_VECTOR(1 DOWNTO 0);
			y         : out BIT_VECTOR(Width-1 DOWNTO 0)
		);
	END COMPONENT;
	-- END OF mux3
	
	-- flopr declaration
	COMPONENT flopr
		GENERIC (Width: INTEGER := RISCV_Data_Width);
		PORT( 	d 		: in 	BIT_VECTOR(Width-1 downto 0);
					rst 	: in 	BIT;
					clk 	: in 	BIT;
					q 		: out BIT_VECTOR(Width-1 downto 0));
	END COMPONENT;
	-- END OF flopr
	
	-- adder declaration
	COMPONENT adder
		GENERIC( Width 			: INTEGER := RISCV_Data_Width); 
		PORT   ( 	a, b 		: in  BIT_VECTOR(Width-1 DOWNTO 0);
						cin 		: in  BIT;
						y		   : out BIT_VECTOR(Width-1 DOWNTO 0);
						cout		: out BIT); 
	END COMPONENT;
	-- END OF adder
	
	-- alu declaration
	COMPONENT alu
		GENERIC (Width : INTEGER := RISCV_Data_Width); 
		PORT (
					a, b        : IN  BIT_VECTOR(Width-1 DOWNTO 0);
					ALUControl  : IN  BIT_VECTOR(2 DOWNTO 0);
					Result      : OUT BIT_VECTOR(Width-1 DOWNTO 0);
					Zero        : OUT BIT); 
	END COMPONENT;
	-- END OF alu
	
	-- regfile declaration
	COMPONENT regfile
		GENERIC ( Width : INTEGER := RISCV_DATA_Width);
		PORT(
		clk  : in  STD_LOGIC;
		A1   : in  BIT_VECTOR(4 downto 0); -- endereço rs1
		A2   : in  BIT_VECTOR(4 downto 0); -- endereço rs2
		A3   : in  BIT_VECTOR(4 downto 0); -- endereço rd
		WD3  : in  BIT_VECTOR(Width-1 downto 0); -- dado a ser escrito
		WE3  : in  BIT; -- controle de escrita
		RD1  : out BIT_VECTOR(Width-1 downto 0); -- dado lido de rs1
		RD2  : out BIT_VECTOR(Width-1 downto 0)  -- dado lido de rs2
	);
	END COMPONENT;
	-- END OF regfile

	-- extend declaration
	COMPONENT extend
		PORT(
		immsrc : IN BIT_VECTOR(1 DOWNTO 0);
		instr  : IN BIT_VECTOR(31 DOWNTO 0);
		immext : OUT BIT_VECTOR(31 DOWNTO 0)
	);
	END COMPONENT;
	--END OF extend
	
	-- aludec declaration
	COMPONENT aludec
		PORT (
      ALUOp     : IN  BIT_VECTOR(1 DOWNTO 0);
      funct3    : IN  BIT_VECTOR(2 DOWNTO 0);
      opb5      : IN  BIT;
      funct7b5  : IN  BIT;
      ALUControl: OUT BIT_VECTOR(2 DOWNTO 0)
    );
	END COMPONENT;
	-- END OF aludec
	
END riscv_pkg;

PACKAGE BODY riscv_pkg IS
	


  -- função para converter BIT_VECTOR para inteiro
  FUNCTION bit_vector_to_integer(bv: BIT_VECTOR(4 DOWNTO 0)) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    FOR i IN 0 TO 4 LOOP
      IF bv(i) = '1' THEN
        result := result + 2**i;
      END IF;
    END LOOP;
    RETURN result;
  END FUNCTION;

  -- Overload "+" for BIT_VECTORs of same length
  FUNCTION "+" (a, b : BIT_VECTOR) RETURN BIT_VECTOR IS
    VARIABLE result : BIT_VECTOR(a'length - 1 DOWNTO 0);
    VARIABLE carry  : BIT := '0';
  BEGIN
    FOR i IN a'reverse_range LOOP
      result(i) := a(i) XOR b(i) XOR carry;
      carry := (a(i) AND b(i)) OR (a(i) AND carry) OR (b(i) AND carry);
    END LOOP;
    RETURN result;
  END FUNCTION;
  -- END OF Overload "+"
  
  
  -- Overload "-" for BIT_VECTORs of same length
  FUNCTION "-" (a, b : BIT_VECTOR) RETURN BIT_VECTOR IS
  VARIABLE result : BIT_VECTOR(a'length - 1 DOWNTO 0);
  VARIABLE borrow : BIT := '0';
  VARIABLE a_bit, b_bit : BIT;
BEGIN

  FOR i IN 0 TO a'length - 1 LOOP
    a_bit := a(i);
    b_bit := b(i);
    
    -- Calculate difference and borrow
    result(i) := a_bit XOR b_bit XOR borrow;
    borrow := (NOT a_bit AND b_bit) OR (NOT a_bit AND borrow) OR (b_bit AND borrow);
  END LOOP;
  
  RETURN result;
END FUNCTION;
-- END OF Overload "-"

END riscv_pkg;

