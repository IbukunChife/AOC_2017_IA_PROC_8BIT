library ieee;
use ieee.std_logic_1164.all;

entity MOr is
port	(
			A, B: in std_logic;
			R: out std_logic
		);
end MOr;

architecture logic_or of MOr is
begin
	R<=(A or B);
end logic_or;