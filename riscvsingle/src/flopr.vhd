ENTITY flopr IS
GENERIC (Width : INTEGER := 32);
port ( 	d 		: in 	BIT_VECTOR(Width-1 downto 0);
			reset 	: in 	BIT;
			clk 	: in 	BIT;
			q 		: out BIT_VECTOR(Width-1 downto 0));
			
END flopr;

ARCHITECTURE rtl OF flopr IS
BEGIN

PROCESS (clk, reset)
	BEGIN
		
		IF (reset = '1') THEN q <= (OTHERS => '0');
		ELSIF (clk'EVENT and clk = '1') THEN q <= d;
		
		END IF;

	END PROCESS;

END rtl;