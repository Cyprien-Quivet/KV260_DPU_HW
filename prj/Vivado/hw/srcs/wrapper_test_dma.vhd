library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_dma_test is
	generic (

		C_S_AXI_ADDR_WIDTH	: integer	:= 40
	);
	port (
	
	    clk_sys_i              : in STD_LOGIC;
        peripheral_reset_i     : in STD_LOGIC;
        arst_n_i                : in std_logic;
        
        --sim_trg_i              : in std_logic; 
        
        S_AXI_araddr_i         : in STD_LOGIC_VECTOR ( 39 downto 0 );
        S_AXI_arprot_i         : in STD_LOGIC_VECTOR ( 2 downto 0 );
        S_AXI_arready_o        : out STD_LOGIC;
        S_AXI_arvalid_i        : in STD_LOGIC;
        S_AXI_awaddr_i         : in STD_LOGIC_VECTOR ( 39 downto 0 );
        S_AXI_awprot_i         : in STD_LOGIC_VECTOR ( 2 downto 0 );
        S_AXI_awready_o        : out STD_LOGIC;
        S_AXI_awvalid_i        : in STD_LOGIC;
        S_AXI_bready_i         : in STD_LOGIC;
        S_AXI_bresp_o          : out STD_LOGIC_VECTOR ( 1 downto 0 );
        S_AXI_bvalid_o         : out STD_LOGIC;
        S_AXI_rdata_o          : out STD_LOGIC_VECTOR ( 31 downto 0 );
        S_AXI_rready_i         : in STD_LOGIC;
        S_AXI_rresp_o          : out STD_LOGIC_VECTOR ( 1 downto 0 );
        S_AXI_rvalid_o         : out STD_LOGIC;
        S_AXI_wdata_i          : in STD_LOGIC_VECTOR ( 31 downto 0 );
        S_AXI_wready_o         : out STD_LOGIC;
        S_AXI_wstrb_i          : in STD_LOGIC_VECTOR ( 3 downto 0 );
        S_AXI_wvalid_i         : in STD_LOGIC;
        
        M_AXIS_S2MM_tdata_o    : out STD_LOGIC_VECTOR ( 127 downto 0 );
        M_AXIS_S2MM_tkeep_o    : out STD_LOGIC_VECTOR ( 15 downto 0 );
        M_AXIS_S2MM_tlast_o    : out STD_LOGIC;
        M_AXIS_S2MM_tready_i   : in STD_LOGIC;
        M_AXIS_S2MM_tvalid_i   : out STD_LOGIC
        
       
	);
end wrapper_dma_test;

architecture arch_imp of wrapper_dma_test is
signal s_ram_add                            : std_logic_vector(5 downto 0);
signal s_data_from_ram                      : std_logic_vector(127 downto 0);
signal data_from_ram                        : std_logic_vector(127 downto 0);
signal get_data_from_ram                    : std_logic;

signal trg_from_ps,trg_done_from_gen_stream : std_logic; 
        

component dist_mem_gen_0 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    qspo_srst : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
  );
END component dist_mem_gen_0;


begin
gen_stream : entity work.gen_stream
    generic map ( C_NB_TRANSFERS => 8)
	port map(

        clk_sys_i             =>    clk_sys_i,
        peripheral_reset_i    =>    peripheral_reset_i,
        
        trg_i                 => '0', 
        --trg_i                 =>    trg_from_ps,
        trg_done_o            =>    trg_done_from_gen_stream,
        
        data_i                =>   data_from_ram,
        trg_get_dat_o         =>   get_data_from_ram, 
        
	    M_AXIS_S2MM_tdata_o   =>   M_AXIS_S2MM_tdata_o,
        M_AXIS_S2MM_tkeep_o   =>   M_AXIS_S2MM_tkeep_o,
        M_AXIS_S2MM_tlast_o   =>   M_AXIS_S2MM_tlast_o,
        M_AXIS_S2MM_tready_i  =>   M_AXIS_S2MM_tready_i,
        M_AXIS_S2MM_tvalid_o  =>   M_AXIS_S2MM_tvalid_i
	);


uaxi_inbterco : entity work.axi_lite_custom
	port map(
		
	    S_AXI_ACLK     => clk_sys_i,
        S_AXI_ARESETN  => arst_n_i,
        S_AXI_AWADDR   => S_AXI_awaddr_i,
        S_AXI_AWPROT   => S_AXI_awprot_i,
        S_AXI_AWVALID  => S_AXI_awvalid_i,
        S_AXI_AWREADY  => S_AXI_awready_o,
        S_AXI_WDATA    => S_AXI_wdata_i,
        S_AXI_WSTRB    => S_AXI_wstrb_i,
        S_AXI_WVALID   => S_AXI_wvalid_i,
        S_AXI_WREADY   => S_AXI_wready_o,
        S_AXI_BRESP    => S_AXI_bresp_o,
        S_AXI_BVALID   => S_AXI_bvalid_o,
        S_AXI_BREADY   => S_AXI_bready_i,
        S_AXI_ARADDR   => S_AXI_araddr_i,
        S_AXI_ARPROT   => S_AXI_arprot_i,
        S_AXI_ARVALID  => S_AXI_arvalid_i,
        S_AXI_ARREADY  => S_AXI_arready_o,
        S_AXI_RDATA    => S_AXI_rdata_o,
        S_AXI_RRESP    => S_AXI_rresp_o,
        S_AXI_RVALID   => S_AXI_rvalid_o,
        S_AXI_RREADY   => S_AXI_rready_i
	);


udata_ram :  dist_mem_gen_0 
port map (
    a => s_ram_add,
    d => (others => '0'),
    clk  =>clk_sys_i,
    we => '0',
    qspo_srst => peripheral_reset_i,
    qspo => s_data_from_ram
); 


end arch_imp;
