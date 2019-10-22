
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
		key_in : in std_logic; -- Entrada dos botoes que serao utilizados
		enable : in std_logic; -- Habilita leitura dos botoes
		
		led_in : out std_logic; -- Led que indica o botao que esta sendo apertado
		key_out : out std_logic -- Informacao lida que e enviada para o processador
	);
end key;

-- Library Clause(s) (optional)
-- Use Clause(s) (optional)
architecture keyArch of key is

begin
	
	key_out <= (not(key_in)) when (enable = '1') else ('Z');
	led_in <= not(key_in); -- Acende os leds
	
	
end architecture ;
