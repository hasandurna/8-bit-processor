library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity data_memory is
	port(
			clk			: in std_logic;
			address		: in std_logic_vector(7 downto 0);
			data_in		: in std_logic_vector(7 downto 0);
			write_en 	: in std_logic;	-- CPU tarafindan gonderilen kontrol sinyali / yaz emri
			-- Output:
			data_out	: out std_logic_vector(7 downto 0)
	);
end data_memory;

architecture arch of data_memory is

type ram_type is array (128 to 223) of std_logic_vector(7 downto 0);	-- 96x8-bit
signal RAM : ram_type := (others => x"00");	-- Baslangic verileri hepsi sifir

signal enable : std_logic;

begin

process(address)
begin
	if(address >= x"80" and address <= x"DF") then -- 128 ile 223 araliginda ise
		enable <= '1';
	else
		enable <= '0';
	end if;
end process;

--
process(clk)
begin
	if(rising_edge(clk)) then
		if(enable = '1' and write_en = '1') then	-- Yazma
			RAM(to_integer(unsigned(address))) <= data_in;
		elsif(enable = '1' and write_en = '0') then	-- Okuma
			data_out <= RAM(to_integer(unsigned(address)));
		end if;
	end if;
end process;

end architecture;