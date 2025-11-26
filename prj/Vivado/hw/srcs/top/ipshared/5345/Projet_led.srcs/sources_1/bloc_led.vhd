library ieee;
use ieee.std_logic_1164.all;    
use ieee.numeric_std.all;   


entity bloc_led is
    generic (CLK_FREQ : integer := 100_000_000); -- Hz
    port (
        clk      : in  std_logic;
        rst      : in  std_logic;
        data_in  : in  std_logic_vector(31 downto 0);
        data_out : out std_logic_vector(31 downto 0)
    );
end entity bloc_led;    

architecture rtl of bloc_led is

    constant US_COUNT    : integer := CLK_FREQ / 1000000;  -- clock cycles in 1 us
             -- us

    signal counter    : unsigned(31 downto 0) := (others => '0');
    signal counter_us : unsigned(31 downto 0) := (others => '0');
    signal trigger    : std_logic := '0';
    signal trigger_us : std_logic := '0';

    signal timing_us  : unsigned(31 downto 0) := to_unsigned(500, 32); -- default 500 us

    signal dout    : std_logic_vector(31 downto 0) := (others => '0');
    
begin    
    clock_us : process (clk) is
    begin
        if rising_edge(clk) then
            if rst = '1' then
                counter_us <= (others => '0');
                trigger_us <= '0';
                timing_us  <= shift_right(unsigned(data_in), 1);
            elsif counter_us = US_COUNT-1 then
                counter_us <= (others => '0');
                trigger_us <= '1';
                timing_us  <= shift_right(unsigned(data_in), 1);  -- <── latch here
            else
                counter_us <= counter_us + 1;
                trigger_us <= '0';
            end if;
        end if;
    end process clock_us;

    timer_proc : process (clk) is
    begin
        if rising_edge(clk) then
            if rst = '1' then
                counter <= (others => '0');
                trigger <= '0';
            else
                if trigger_us = '1' then 
                    if counter = timing_us-1 then  
                        trigger <= '1';
                        counter <= (others => '0');
                    else
                        trigger <= '0';
                        counter <= counter + 1;
                    end if;
                else
                    trigger <= '0';
                end if;
            end if;
        end if;
    end process timer_proc;

    data_proc : process (clk) is
    begin
        if rising_edge(clk) then
            if rst = '1' then
                dout <= (others => '0');
            elsif trigger = '1' then
                dout <= not dout;
            end if;
        end if;
    end process data_proc;

    data_out <= dout;

end architecture rtl;




