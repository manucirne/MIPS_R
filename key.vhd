
library ieee;

-- Use clauses import declarations into the current scope.	
-- If more than one use clause imports the same name into the
-- the same scope, none of the names are imported.

-- Import all the declarations in a package
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity key is
	
	port
	(
		key_in : in std_logic_vector(0 downto 0); -- Entrada dos botoes que serao utilizados
		clk : in std_logic;
		reset : in std_logic;
		key_out : out std_logic_vector(0 downto 0) -- Informacao lida que e enviada para o processador
	);
end key;

-- Library Clause(s) (optional)
-- Use Clause(s) (optional)
architecture keyArch of key is

begin

	REGISTRADOR: entity work.reg_reset
		generic map (DATA_WIDTH => 1 --Tamanho do dado
		)
		Port Map(clk=>clk,
		entrada=>key_in,
		reset=>reset,
		saida=>key_out);
	
--	key_out <= (not(key_in)) when (enable = '1') else ('Z');
	
	
end architecture ;
