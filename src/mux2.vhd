-- Exercise 2 - MUX2 implementation
--
-- Prof. Maximiliam Luppe
-- Date 25/03/2025

ENTITY  mux2 IS
GENERIC (Width : INTEGER := 32);
   PORT (d0, d1 : in BIT_VECTOR(Width-1 DOWNTO 0);
   		 s		: in BIT; 
         y		: out BIT_VECTOR(Width-1 downto 0));
END mux2;

ARCHITECTURE rtl OF mux2 IS

BEGIN
	y <= 	d0 when (s = '0') else
			d1 when (s = '1') else
			(OTHERS => '0');

END rtl;