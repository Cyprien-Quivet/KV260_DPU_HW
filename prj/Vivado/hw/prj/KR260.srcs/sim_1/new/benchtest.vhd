library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_wrapper_dma_test is
end tb_wrapper_dma_test;

architecture sim of tb_wrapper_dma_test is

    -- Clock 100 MHz
    constant clk_period : time := 10 ns;

    signal clk_sys      : std_logic := '0';
    signal rst          : std_logic := '1';
    signal arst_n       : std_logic := '0';

    -- AXI-lite signals
    signal araddr    : std_logic_vector(39 downto 0) := (others=>'0');
    signal arprot    : std_logic_vector(2 downto 0)  := (others=>'0');
    signal arready   : std_logic;
    signal arvalid   : std_logic := '0';
    signal awaddr    : std_logic_vector(39 downto 0) := (others=>'0');
    signal awprot    : std_logic_vector(2 downto 0)  := (others=>'0');
    signal awready   : std_logic;
    signal awvalid   : std_logic := '0';
    signal bready    : std_logic := '1';
    signal bresp     : std_logic_vector(1 downto 0);
    signal bvalid    : std_logic;
    signal rdata     : std_logic_vector(31 downto 0);
    signal rready    : std_logic := '1';
    signal rresp     : std_logic_vector(1 downto 0);
    signal rvalid    : std_logic;
    signal wdata     : std_logic_vector(31 downto 0) := (others=>'0');
    signal wready    : std_logic;
    signal wstrb     : std_logic_vector(3 downto 0) := (others=>'1');
    signal wvalid    : std_logic := '0';

    -- AXI Stream S2MM
    signal tdata     : std_logic_vector(127 downto 0);
    signal tkeep     : std_logic_vector(15 downto 0);
    signal tlast     : std_logic;
    signal tready    : std_logic := '1';  -- DMA always ready
    signal tvalid    : std_logic;

    -- Internal RAM and trigger
    signal ram_addr  : std_logic_vector(5 downto 0) := (others=>'0');
    signal ram_data  : std_logic_vector(127 downto 0);
    signal data_from_ram  : std_logic_vector(127 downto 0);
    signal get_data  : std_logic;
    signal trg       : std_logic := '0';
    signal trg_done  : std_logic;

begin

    --------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------
    DUT : entity work.wrapper_dma_test
    port map(

        clk_sys_i           => clk_sys,
        peripheral_reset_i  => rst,
        arst_n_i            => arst_n,
        sim_trg_i           => trg, 
        S_AXI_araddr_i      => araddr,
        S_AXI_arprot_i      => arprot,
        S_AXI_arready_o     => arready,
        S_AXI_arvalid_i     => arvalid,
        S_AXI_awaddr_i      => awaddr,
        S_AXI_awprot_i      => awprot,
        S_AXI_awready_o     => awready,
        S_AXI_awvalid_i     => awvalid,
        S_AXI_bready_i      => bready,
        S_AXI_bresp_o       => bresp,
        S_AXI_bvalid_o      => bvalid,
        S_AXI_rdata_o       => rdata,
        S_AXI_rready_i      => rready,
        S_AXI_rresp_o       => rresp,
        S_AXI_rvalid_o      => rvalid,
        S_AXI_wdata_i       => wdata,
        S_AXI_wready_o      => wready,
        S_AXI_wstrb_i       => wstrb,
        S_AXI_wvalid_i      => wvalid,

        M_AXIS_S2MM_tdata_o  => tdata,
        M_AXIS_S2MM_tkeep_o  => tkeep,
        M_AXIS_S2MM_tlast_o  => tlast,
        M_AXIS_S2MM_tready_i => tready,
        M_AXIS_S2MM_tvalid_i => tvalid
    );

    --------------------------------------------------------------------
    -- Clock generation
    --------------------------------------------------------------------
    clk_gen : process
    begin
        clk_sys <= '0';
        wait for clk_period/2;
        clk_sys <= '1';
        wait for clk_period/2;
    end process;

    --------------------------------------------------------------------
    -- RAM SIMPLE (stimulus)
    --------------------------------------------------------------------
    ram_process : process(clk_sys)
    begin
        if rising_edge(clk_sys) then
            -- Incremente l'adresse si gen_stream demande la data
            if get_data = '1' then
                ram_addr <= std_logic_vector(unsigned(ram_addr) + 1);
            end if;

            -- génère des données visibles dans la simulation
            data_from_ram <= std_logic_vector(to_unsigned(to_integer(unsigned(ram_addr))*16#1111#,128));
        end if;
    end process;

    --------------------------------------------------------------------
    -- Reset + scenario
    --------------------------------------------------------------------
    stim : process
    begin
        --------------------------------------------------------
        -- Reset global
        --------------------------------------------------------
        rst <= '1';
        arst_n <= '0';
        wait for 50 ns;
        rst <= '0';
        arst_n <= '1';
        wait for 50 ns;

        --------------------------------------------------------
        -- Déclenchement d'un transfert AXI Stream
        --------------------------------------------------------
        report ">>> Lancement transfert...";
        trg <= '1';
        wait for clk_period;
        trg <= '0';

        --------------------------------------------------------
        -- Attendre fin transfert
        --------------------------------------------------------
        wait until trg_done = '1';
        report ">>> Transfert AXI Stream terminé";

        wait for 100 ns;
        report "Simulation terminée";
        wait;
    end process;

end sim;
