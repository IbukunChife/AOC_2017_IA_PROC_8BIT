library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity B is
PORT (CLOCK: in std_logic;
		D:in std_logic_vector( 7 downto 0);
		Q: out std_logic_vector( 7 downto 0));
end B ;

architecture behavior of B is

begin
process(CLOCK)
begin
	if(CLOCK='1' and CLOCK'EVENT)then
		Q<=D;
	end if;
end process;
end behavior;