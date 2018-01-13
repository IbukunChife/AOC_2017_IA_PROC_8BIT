library ieee;
use ieee.std_logic_1164.all;

entity MAnd is
port	(
			A, B: in std_logic;
			R: out std_logic
		);
end MAnd;

architecture logic_and of MAnd is
begin
	R<=(A and B);
end logic_and;