library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity banco_reg is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 BCsiges e escrita em 1 BCsig simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
--
        escreveC        : in std_logic := '0';
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of banco_reg is
	 
	 type blocoBC is array(0 TO 2**larguraEndBancoRegs - 1) of std_logic_vector(larguraDados-1 DOWNTO 0);

  function initBC
        return blocoBC is variable tmp : blocoBC := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
        tmp(0) := x"00";
        tmp(1) := x"01";
        tmp(2) := x"02";
        tmp(3) := x"03";
        tmp(4) := x"04";
        tmp(5) := x"05";
        tmp(6) := x"06";
        tmp(7) := x"07";
        return tmp;
    end initBC;

    signal BCsig : blocoBC := initBC;
	 
	 

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                BCsig(to_integer(unsigned(enderecoC))) <= dadoEscritaC;
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(enderecoA) = 0) then
            saidaA <= (others => '0');
         else
            saidaA <= BCsig(to_integer(unsigned(enderecoA)));
         end if;
         if (unsigned(enderecoB) = 0) then
            saidaB <= (others => '0');
         else
            saidaB <= BCsig(to_integer(unsigned(enderecoB)));
        end if;
     end process;
end architecture;