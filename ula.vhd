library ieee;

-- Use clauses import declarations into the current scope.	
-- If more than one use clause imports the same name into the
-- the same scope, none of the names are imported.

-- Import all the declarations in a package
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula is
	Generic ( DATA_WIDTH : natural := 8 );
	
	port
	(
		-- Entradas
		A : in std_logic_vector (DATA_WIDTH-1 downto 0);
		B : in std_logic_vector (DATA_WIDTH-1 downto 0);
		
		-- Diz qual funcao sera executada.
		func : in std_logic_vector (5 downto 0);
		
		-- Saida quando tem soma ou subtracao
		Y : out std_logic_vector (DATA_WIDTH-1 downto 0)

	);
end ula;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture ulaArch of ula is

	--Soma A + B
	constant SOMA : std_logic_vector(5 downto 0) := "100000";

	--SUBTRAI A - B
	constant SUBTRAI : std_logic_vector(5 downto 0) := "100010";

begin
	
	--Salva a saida da ULA
	SAIDA : with func select
	Y <= std_logic_vector(unsigned(A) + unsigned(B)) when SOMA,
		  std_logic_vector(unsigned(A) - unsigned(b)) when SUBTRAI,
		  A when others;
	
end ulaArch;
