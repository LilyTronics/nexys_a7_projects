library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity switches_and_leds is
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
end entity;


architecture behavioral of switches_and_leds is
    
begin
    -- Disable the 7 segments display
    AN <= (others => '1');

    -- Simply connect the switches to the LEDs on each clock transition
    switch_to_led : process (CLK100MHZ)
    begin
        if rising_edge(CLK100MHZ) then
            LED <= SW;
        end if;
    end process;

end architecture;
