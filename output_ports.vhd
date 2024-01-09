library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity output_ports is
	port(
			clk			: in std_logic;
			rst			: in std_logic;
			address		: in std_logic_vector(7 downto 0);
			data_in		: in std_logic_vector(7 downto 0);
			write_en 	: in std_logic;	-- CPU tarafindan gonderilen kontrol sinyali / yaz emri
			-- Output:
			port_out_00	: out std_logic_vector(7 downto 0);
			port_out_01	: out std_logic_vector(7 downto 0);
			port_out_02	: out std_logic_vector(7 downto 0);
			port_out_03	: out std_logic_vector(7 downto 0);
			port_out_04	: out std_logic_vector(7 downto 0);
			port_out_05	: out std_logic_vector(7 downto 0);
			port_out_06	: out std_logic_vector(7 downto 0);
			port_out_07	: out std_logic_vector(7 downto 0);
			port_out_08	: out std_logic_vector(7 downto 0);
			port_out_09	: out std_logic_vector(7 downto 0);
			port_out_10	: out std_logic_vector(7 downto 0);
			port_out_11	: out std_logic_vector(7 downto 0);
			port_out_12	: out std_logic_vector(7 downto 0);
			port_out_13	: out std_logic_vector(7 downto 0);
			port_out_14	: out std_logic_vector(7 downto 0);
			port_out_15	: out std_logic_vector(7 downto 0)
	);
end output_ports;

architecture arch of output_ports is
begin

	process(clk,rst)
	begin
		if(rst = '1') then
			port_out_00	<= (others => '0');
			port_out_01 <= (others => '0');
			port_out_02 <= (others => '0');
			port_out_03 <= (others => '0');
			port_out_04 <= (others => '0');
			port_out_05 <= (others => '0');
			port_out_06 <= (others => '0');
			port_out_07 <= (others => '0');
			port_out_08 <= (others => '0');
			port_out_09 <= (others => '0');
			port_out_10 <= (others => '0');
			port_out_11 <= (others => '0');
			port_out_12 <= (others => '0');
			port_out_13 <= (others => '0');
			port_out_14 <= (others => '0');
			port_out_15 <= (others => '0');
		elsif(rising_edge(clk)) then
			if(write_en = '1') then
				case address is
					when x"E0" =>
						port_out_00 <= data_in;
					when x"E1" =>
						port_out_01 <= data_in;
					when x"E2" =>
						port_out_02 <= data_in;
					when x"E3" =>
						port_out_03 <= data_in;
					when x"E4" =>
						port_out_04 <= data_in;
					when x"E5" =>
						port_out_05 <= data_in;
					when x"E6" =>
						port_out_06 <= data_in;
					when x"E7" =>
						port_out_07 <= data_in;
					when x"E8" =>
						port_out_08 <= data_in;
					when x"E9" =>
						port_out_09 <= data_in;
					when x"EA" =>
						port_out_10 <= data_in;
					when x"EB" =>
						port_out_11 <= data_in;
					when x"EC" =>
						port_out_12 <= data_in;
					when x"ED" =>
						port_out_13 <= data_in;
					when x"EE" =>
						port_out_14 <= data_in;
					when x"EF" =>
						port_out_15 <= data_in;
					when others =>
						port_out_00	<= (others => '0');
						port_out_01 <= (others => '0');
						port_out_02 <= (others => '0');
						port_out_03 <= (others => '0');
						port_out_04 <= (others => '0');
						port_out_05 <= (others => '0');
						port_out_06 <= (others => '0');
						port_out_07 <= (others => '0');
						port_out_08 <= (others => '0');
						port_out_09 <= (others => '0');
						port_out_10 <= (others => '0');
						port_out_11 <= (others => '0');
						port_out_12 <= (others => '0');
						port_out_13 <= (others => '0');
						port_out_14 <= (others => '0');
						port_out_15 <= (others => '0');	
				end case;			
			end if;
		end if;	
	end process;

end architecture;