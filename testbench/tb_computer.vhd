

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_computer is
--  Port ( );
end tb_computer;

architecture Behavioral of tb_computer is
component computer is
	port(	
			clk			: in std_logic;
			rst			: in std_logic;
			port_in_00	: in std_logic_vector(7 downto 0);
			port_in_01	: in std_logic_vector(7 downto 0);
			port_in_02	: in std_logic_vector(7 downto 0);
			port_in_03	: in std_logic_vector(7 downto 0);
			port_in_04	: in std_logic_vector(7 downto 0);
			port_in_05	: in std_logic_vector(7 downto 0);
			port_in_06	: in std_logic_vector(7 downto 0);
			port_in_07	: in std_logic_vector(7 downto 0);
			port_in_08	: in std_logic_vector(7 downto 0);
			port_in_09	: in std_logic_vector(7 downto 0);
			port_in_10	: in std_logic_vector(7 downto 0);
			port_in_11	: in std_logic_vector(7 downto 0);
			port_in_12	: in std_logic_vector(7 downto 0);
			port_in_13	: in std_logic_vector(7 downto 0);
			port_in_14	: in std_logic_vector(7 downto 0);
			port_in_15	: in std_logic_vector(7 downto 0);
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
end component;

--
constant clock_period : time := 20 ns;
--
signal clk			: std_logic;
signal rst			: std_logic;
signal port_in_00	: std_logic_vector(7 downto 0);
signal port_in_01	: std_logic_vector(7 downto 0);
signal port_in_02	: std_logic_vector(7 downto 0);
signal port_in_03	: std_logic_vector(7 downto 0);
signal port_in_04	: std_logic_vector(7 downto 0);
signal port_in_05	: std_logic_vector(7 downto 0);
signal port_in_06	: std_logic_vector(7 downto 0);
signal port_in_07	: std_logic_vector(7 downto 0);
signal port_in_08	: std_logic_vector(7 downto 0);
signal port_in_09	: std_logic_vector(7 downto 0);
signal port_in_10	: std_logic_vector(7 downto 0);
signal port_in_11	: std_logic_vector(7 downto 0);
signal port_in_12	: std_logic_vector(7 downto 0);
signal port_in_13	: std_logic_vector(7 downto 0);
signal port_in_14	: std_logic_vector(7 downto 0);
signal port_in_15	: std_logic_vector(7 downto 0);
			
signal port_out_00	: std_logic_vector(7 downto 0);
signal port_out_01	: std_logic_vector(7 downto 0);
signal port_out_02	: std_logic_vector(7 downto 0);
signal port_out_03	: std_logic_vector(7 downto 0);
signal port_out_04	: std_logic_vector(7 downto 0);
signal port_out_05	: std_logic_vector(7 downto 0);
signal port_out_06	: std_logic_vector(7 downto 0);
signal port_out_07	: std_logic_vector(7 downto 0);
signal port_out_08	: std_logic_vector(7 downto 0);
signal port_out_09	: std_logic_vector(7 downto 0);
signal port_out_10	: std_logic_vector(7 downto 0);
signal port_out_11	: std_logic_vector(7 downto 0);
signal port_out_12	: std_logic_vector(7 downto 0);
signal port_out_13	: std_logic_vector(7 downto 0);
signal port_out_14	: std_logic_vector(7 downto 0);
signal port_out_15	: std_logic_vector(7 downto 0);

begin

clock_process: process
               begin
                    clk <= '0';
                    wait for clock_period/2;
                    clk <= '1';
                    wait for clock_period/2;
               end process;

uut: computer port map
(
    clk			=> clk			,
    rst			=> rst			,
    port_in_00	=> port_in_00	,
    port_in_01	=> port_in_01	,
    port_in_02	=> port_in_02	,
    port_in_03	=> port_in_03	,
    port_in_04	=> port_in_04	,
    port_in_05	=> port_in_05	,
    port_in_06	=> port_in_06	,
    port_in_07	=> port_in_07	,
    port_in_08	=> port_in_08	,
    port_in_09	=> port_in_09	,
    port_in_10	=> port_in_10	,
    port_in_11	=> port_in_11	,
    port_in_12	=> port_in_12	,
    port_in_13	=> port_in_13	,
    port_in_14	=> port_in_14	,
    port_in_15	=> port_in_15	,
                                
    port_out_00 => port_out_00  ,
    port_out_01 => port_out_01  ,
    port_out_02 => port_out_02  ,
    port_out_03 => port_out_03  ,
    port_out_04 => port_out_04  ,
    port_out_05 => port_out_05  ,
    port_out_06	=> port_out_06  ,
    port_out_07	=> port_out_07  ,
    port_out_08	=> port_out_08  ,
    port_out_09	=> port_out_09  ,
    port_out_10	=> port_out_10  ,
    port_out_11	=> port_out_11  ,
    port_out_12	=> port_out_12  ,
    port_out_13	=> port_out_13  ,
    port_out_14	=> port_out_14  ,
    port_out_15	=> port_out_15  
);

process
begin
rst <= '1';
wait for 40ns;
rst <= '0';
wait for clock_period*2;


wait for clock_period*200;
wait;

end process;

end Behavioral;
