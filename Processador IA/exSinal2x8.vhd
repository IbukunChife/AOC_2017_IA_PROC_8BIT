LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY exSinal2x8 IS
PORT(a: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
     s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	 );
END exSinal2x8;

ARCHITECTURE extensor OF exSinal2x8 IS
BEGIN
	s <= ("000000" & a);
END extensor;