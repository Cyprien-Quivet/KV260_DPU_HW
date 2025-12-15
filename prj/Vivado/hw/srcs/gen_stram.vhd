library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gen_stream is
	generic (

		C_NB_TRANSFERS	: integer	:= 40
	);
	port (
	
	    clk_sys_i               : in  STD_LOGIC;
        peripheral_reset_i      : in  STD_LOGIC;
        
        trg_i                   : in  STD_LOGIC;
        trg_done_o              : out STD_LOGIC;
        
        data_i                  : in  std_logic_vector(127 downto 0); 
        trg_get_dat_o           : out std_logic;
        rd_ram_add_o            : out std_logic_vector(5 downto 0); 
        
        M_AXIS_S2MM_tdata_o    : out STD_LOGIC_VECTOR ( 127 downto 0 );
        M_AXIS_S2MM_tkeep_o    : out STD_LOGIC_VECTOR ( 15 downto 0 );
        M_AXIS_S2MM_tlast_o    : out STD_LOGIC;
        M_AXIS_S2MM_tready_i   : in STD_LOGIC;
        M_AXIS_S2MM_tvalid_o   : out STD_LOGIC
        
       
	);
end gen_stream;

architecture arch_imp of gen_stream is
  type t_state is (
        IDLE,
        GET_DAT,
        WT_READ1,        
        WT_READ2,        
        SEND, 
        DONE
    );

    signal state        : t_state := IDLE;

    signal index_cnt    : unsigned(15 downto 0); 
    signal data_reg     : std_logic_vector(127 downto 0);

    signal valid_reg    : std_logic := '0';
    signal last_reg     : std_logic := '0';

begin

    M_AXIS_S2MM_tdata_o <= data_i;
    M_AXIS_S2MM_tkeep_o <= (others => '1');
    M_AXIS_S2MM_tvalid_o <= valid_reg;
    M_AXIS_S2MM_tlast_o <= last_reg;

    trg_done_o <= '1' when (state = DONE) else '0';
    valid_reg  <= '1' when state = SEND  else '0'; 
    last_reg  <= '1' when (index_cnt = C_NB_TRANSFERS-1) and state = SEND else '0';
    trg_get_dat_o <= '0' when  (state = IDLE) or (state = DONE) else '1'; 


    process(clk_sys_i)
    begin
        if rising_edge(clk_sys_i) then
            if peripheral_reset_i = '1' then
                state <= IDLE;
                index_cnt <= (others => '0');
            else
                case state is

                when IDLE =>
                    index_cnt <= (others => '0');
                    if trg_i = '1' then
                        state <= WT_READ1;
                    end if;
                when GET_DAT => state <= WT_READ1;index_cnt <= index_cnt + 1;
                when WT_READ1 => state <= WT_READ2;index_cnt <= index_cnt + 1;
                when WT_READ2 =>
                    state <= SEND;index_cnt <= index_cnt + 1;
                when SEND =>
                        if index_cnt = C_NB_TRANSFERS-1 then
                            state <= DONE;
                            index_cnt <= (others => '0');
                        else
                            index_cnt <= index_cnt + 1;
                        end if;
                    when DONE => state <= IDLE;
                    when others => 
                end case;
            end if;
        end if;
    end process;



end arch_imp;
