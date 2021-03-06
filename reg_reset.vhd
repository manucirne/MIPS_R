library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Utilizado para o Generic

entity reg_reset is
	generic (DATA_WIDTH : natural := 10 --Tamanho do dado
	);
    
	 port
    (
		clk: in std_logic; -- Entrada do clock
		entrada : in std_logic_vector (DATA_WIDTH-1 downto 0); 
		reset: in std_logic;
		saida: out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;


architecture reg of reg_reset is
begin

	process (clk, reset)
	begin
		-- Reset whenever the reset signal goes low, regardless of the clock
		if (reset = '0') then
			saida <= (others => '0');
		-- If not resetting, update the register output on the clock's rising edge
		elsif (rising_edge(clk)) then
			saida <= entrada;
		end if;
	end process;

end architecture;