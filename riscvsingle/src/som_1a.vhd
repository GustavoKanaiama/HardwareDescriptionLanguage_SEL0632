ENTITY som_1a IS
  PORT   (a, b, cin  : IN  BIT;
          s, cout     : OUT BIT); 
END som_1a;

ARCHITECTURE teste OF som_1a IS
BEGIN
  s  <=  a XOR b  XOR cin;                      -- soma
  cout <= (a AND b) OR (a AND cin) OR (b AND cin); -- vai um
END teste;