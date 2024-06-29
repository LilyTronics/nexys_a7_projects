library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.finish;

entity switches_and_leds_tb is
end entity;


architecture behavioral of switches_and_leds_tb is

    component switches_and_leds is
        Port (
            -- Clock
            CLK100MHZ   : in  std_logic; 
            -- Switches
            SW          : in  std_logic_vector(15 downto 0);
            -- LEDs
            LED         : out std_logic_vector(15 downto 0);
            -- Anodes of the 7 segments display
            AN          : out std_logic_vector( 7 downto 0)
        );
    end component;
    
    signal clk_in   : std_logic                     := '0';
    signal switches : std_logic_vector(15 downto 0) := (others => '0');
    signal leds     : std_logic_vector(15 downto 0);
    signal anodes   : std_logic_vector( 7 downto 0);

begin
    
    dut : switches_and_leds port map (
        CLK100MHZ   => clk_in,
        SW          => switches,
        LED         => leds,
        AN          => anodes
    );
 
    stimulus : process
    begin
        for i in 0 to 19 loop
            clk_in <= not clk_in;
            wait for 2ns;
            switches <= std_logic_vector(unsigned(switches) + 1);
            wait for 3ns;
        end loop;
        
        finish;
        
    end process;

end architecture;
