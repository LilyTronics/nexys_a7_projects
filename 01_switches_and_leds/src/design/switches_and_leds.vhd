library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity switches_and_leds is
    Port (
        -- Switches
        SW  : in  std_logic_vector(15 downto 0);
        -- LEDs
        LED : out std_logic_vector(15 downto 0)
    );
end switches_and_leds;

architecture structure of switches_and_leds is

begin
    
    -- Simply connect the switches to the LEDs
    LED <= SW;

end ;
