ENTITY mux3 IS
GENERIC (Width : INTEGER := 32);
port ( 	d0, d1, d2 : in BIT_VECTOR(Width-1 downto 0);
		s : in BIT_VECTOR(1 downto 0);
		y : out BIT_VECTOR(Width-1 downto 0));
END mux3;

ARCHITECTURE rtl OF mux3 IS
BEGIN
	with s select
		y <= 	d0 WHEN "00",
				d1 WHEN "01",
				d2 WHEN "10",
				(OTHERS => '0') WHEN OTHERS;
END rtl;