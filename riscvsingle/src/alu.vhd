library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;
use ieee.math_real.all;


ENTITY alu IS
  GENERIC (Width : INTEGER := 32); 
  PORT (
    a, b        : IN  BIT_VECTOR(Width-1 DOWNTO 0);
    ALUControl  : IN  BIT_VECTOR(2 DOWNTO 0);
    ALUResult      : OUT BIT_VECTOR(Width-1 DOWNTO 0);
    Zero        : OUT BIT
  ); 
END alu;


ARCHITECTURE rtl OF alu IS

  COMPONENT adder
    GENERIC (Width : INTEGER := 32);
    PORT (
      a, b   : IN  BIT_VECTOR(Width-1 DOWNTO 0);
      cin    : IN  BIT;
      y      : OUT BIT_VECTOR(Width-1 DOWNTO 0);
      cout   : OUT BIT
    );
  END COMPONENT;

  -- Function declarations in architecture declarative part
  FUNCTION "+" (a, b : BIT_VECTOR) RETURN BIT_VECTOR IS
    VARIABLE result : BIT_VECTOR(a'length - 1 DOWNTO 0);
    VARIABLE carry  : BIT := '0';
  BEGIN
    FOR i IN a'reverse_range LOOP
      result(i) := a(i) XOR b(i) XOR carry;
      carry := (a(i) AND b(i)) OR (a(i) AND carry) OR (b(i) AND carry); -- will not be used**
    END LOOP;
    RETURN result;
  END FUNCTION;

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

  -- Signals for adder
  SIGNAL add_a, add_b : BIT_VECTOR(Width-1 DOWNTO 0);
  SIGNAL add_cin : BIT;
  SIGNAL add_result : BIT_VECTOR(Width-1 DOWNTO 0);
  SIGNAL add_cout : BIT;
  
  -- Other signals
  SIGNAL all_zero 	: BIT_VECTOR(Width-1 DOWNTO 0) := (OTHERS => '0'); 
  SIGNAL b_inverted : BIT_VECTOR(Width-1 DOWNTO 0);
  SIGNAL result_s   : BIT_VECTOR(Width-1 DOWNTO 0);
  SIGNAL zero_sig   : BIT;

BEGIN

  -- Instantiate the adder component
  U_ADDER: adder
    GENERIC MAP (Width => Width)
    PORT MAP (
      a    => add_a,
      b    => add_b,
      cin  => add_cin,
      y    => add_result,
      cout => add_cout
    );


  -- Process to control ALU operation
  PROCESS(ALUControl, a, b, add_result)
		VARIABLE sub_result : BIT_VECTOR(Width-1 DOWNTO 0);
  BEGIN
    -- Default assignments
    add_a <= (OTHERS => '0');
    add_b <= (OTHERS => '0');
    add_cin <= '0';
    zero_sig <= '0';
    
    CASE ALUControl IS
      WHEN "000" => -- ADD using overloaded +
        result_s <= a + b;
        
      WHEN "001" => -- SUB using overloaded -
        result_s <= a - b;
          
      WHEN "010" => -- AND operation
        result_s <= a AND b;
          
      WHEN "011" => -- OR operation
        result_s <= a OR b;
          
      WHEN "101" => -- SLT (Set Less Than)
		sub_result := bit_vector(signed(a) - signed(b));
		result_s <= (0 => sub_result(31), OTHERS => '0');

		--sub_result <= bit_vector(signed(a) - signed(b));
		--result_s <= all_zero(n-1 downto 1) & sub_result(n-1);

      WHEN OTHERS =>
        result_s <= (OTHERS => '0');
    END CASE;
  END PROCESS;

  -- Zero flag is '1' when result is all zeros
  Zero <= '1' WHEN result_s = (result_s'RANGE => '0') ELSE '0';
  ALUResult <= result_s;

END rtl;