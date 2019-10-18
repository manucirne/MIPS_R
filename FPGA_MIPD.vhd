library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity FPGA_MIPS is
    port
    (
		CLOCK : in std_logic;
		SW : in std_logic_vector(2 downto 0);
		KEY : in std_logic_vector(0 downto 0);
		LEDG : out std_logic_vector(0 downto 0)
    );
end entity;

architecture comportamento of FPGA_MIPS is

signal sig_key_clock : in std_logic;
signal sig_func_ula : in std_logic_vector(2 downto 0);

begin
	



	key_clock: entity work.key
		Generic Map(TOTAL_KEY=>1,DATA_SIZE=>1)
		Port Map(key_in=>KEY(0),enable=>1,led_in=>LEDG(0),key_out=>sig_key_clock)
		
	if SW(2) == '1' then
		sig_func_ula <= "000";
	else
		sig_func_ula <= "010";
		

	mips_r: entity work.MIPS
		Generic Map(addrWidth=>32,regAddrWidth => 5,dataWidth=>32)
		Port Map(clk=>sig_key_clock,reset=>SW(0),escreveC=>SW(1),func=>sig_func_ula,romOut=>);
		
end architecture;
               