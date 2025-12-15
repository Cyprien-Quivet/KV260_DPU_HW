----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2025 16:37:37
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level is
--  Port ( );
end top_level;

architecture Behavioral of top_level is
signal     sM00_AXI_0_araddr :  STD_LOGIC_VECTOR ( 39 downto 0 );
signal     sM00_AXI_0_arprot :  STD_LOGIC_VECTOR ( 2 downto 0 );
signal     sM00_AXI_0_arready :  STD_LOGIC;
signal     sM00_AXI_0_arvalid :  STD_LOGIC;
signal     sM00_AXI_0_awaddr :  STD_LOGIC_VECTOR ( 39 downto 0 );
signal     sM00_AXI_0_awprot :  STD_LOGIC_VECTOR ( 2 downto 0 );
signal     sM00_AXI_0_awready :  STD_LOGIC;
signal     sM00_AXI_0_awvalid :  STD_LOGIC;
signal     sM00_AXI_0_bready :  STD_LOGIC;
signal     sM00_AXI_0_bresp :  STD_LOGIC_VECTOR ( 1 downto 0 );
signal     sM00_AXI_0_bvalid :  STD_LOGIC;
signal     sM00_AXI_0_rdata :  STD_LOGIC_VECTOR ( 31 downto 0 );
signal     sM00_AXI_0_rready :  STD_LOGIC;
signal     sM00_AXI_0_rresp :  STD_LOGIC_VECTOR ( 1 downto 0 );
signal     sM00_AXI_0_rvalid :  STD_LOGIC;
signal     sM00_AXI_0_wdata :  STD_LOGIC_VECTOR ( 31 downto 0 );
signal     sM00_AXI_0_wready :  STD_LOGIC;
signal     sM00_AXI_0_wstrb :  STD_LOGIC_VECTOR ( 3 downto 0 );
signal     sM00_AXI_0_wvalid :  STD_LOGIC;
signal     sclk_sys_o :  STD_LOGIC;
signal     speripheral_reset_0 :  STD_LOGIC_VECTOR ( 0 to 0 );
signal     sS_AXIS_S2MM_1_tdata : STD_LOGIC_VECTOR ( 127 downto 0 );
signal     sS_AXIS_S2MM_1_tkeep : STD_LOGIC_VECTOR ( 15 downto 0 );
signal     sS_AXIS_S2MM_1_tlast : STD_LOGIC;
signal     sS_AXIS_S2MM_1_tready :STD_LOGIC;
signal     sS_AXIS_S2MM_1_tvalid : STD_LOGIC;

component  top 
  port (
    M00_AXI_0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_arready : in STD_LOGIC;
    M00_AXI_0_arvalid : out STD_LOGIC;
    M00_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_awready : in STD_LOGIC;
    M00_AXI_0_awvalid : out STD_LOGIC;
    M00_AXI_0_bready : out STD_LOGIC;
    M00_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_bvalid : in STD_LOGIC;
    M00_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_rready : out STD_LOGIC;
    M00_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_rvalid : in STD_LOGIC;
    M00_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_wready : in STD_LOGIC;
    M00_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_wvalid : out STD_LOGIC;
    S_AXIS_S2MM_1_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_S2MM_1_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_S2MM_1_tlast : in STD_LOGIC;
    S_AXIS_S2MM_1_tready : out STD_LOGIC;
    S_AXIS_S2MM_1_tvalid : in STD_LOGIC;
    clk_sys_o : out STD_LOGIC;
    peripheral_reset_0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end component;

begin


    -------------------------------------------------------------------------
    -- Instanciation du block design top_wrapper
    -------------------------------------------------------------------------
    top_i : top
        port map (
            M00_AXI_0_araddr  => sM00_AXI_0_araddr,
            M00_AXI_0_arprot  => sM00_AXI_0_arprot,
            M00_AXI_0_arready => sM00_AXI_0_arready,
            M00_AXI_0_arvalid => sM00_AXI_0_arvalid,

            M00_AXI_0_awaddr  => sM00_AXI_0_awaddr,
            M00_AXI_0_awprot  => sM00_AXI_0_awprot,
            M00_AXI_0_awready => sM00_AXI_0_awready,
            M00_AXI_0_awvalid => sM00_AXI_0_awvalid,

            M00_AXI_0_bready  => sM00_AXI_0_bready,
            M00_AXI_0_bresp   => sM00_AXI_0_bresp,
            M00_AXI_0_bvalid  => sM00_AXI_0_bvalid,

            M00_AXI_0_rdata   => sM00_AXI_0_rdata,
            M00_AXI_0_rready  => sM00_AXI_0_rready,
            M00_AXI_0_rresp   => sM00_AXI_0_rresp,
            M00_AXI_0_rvalid  => sM00_AXI_0_rvalid,

            M00_AXI_0_wdata   => sM00_AXI_0_wdata,
            M00_AXI_0_wready  => sM00_AXI_0_wready,
            M00_AXI_0_wstrb   => sM00_AXI_0_wstrb,
            M00_AXI_0_wvalid  => sM00_AXI_0_wvalid,
            
            S_AXIS_S2MM_1_tdata  => sS_AXIS_S2MM_1_tdata,
            S_AXIS_S2MM_1_tkeep  => sS_AXIS_S2MM_1_tkeep,
            S_AXIS_S2MM_1_tlast  => sS_AXIS_S2MM_1_tlast,
            S_AXIS_S2MM_1_tready => sS_AXIS_S2MM_1_tready,
            S_AXIS_S2MM_1_tvalid => sS_AXIS_S2MM_1_tvalid,

            clk_sys_o         => sclk_sys_o,
            peripheral_reset_0 => speripheral_reset_0
        );
        
    -------------------------------------------------------------------------
    -- Instanciation des custom IPs ici ....
    -------------------------------------------------------------------------
    u_wrapper_dma_test : entity work.wrapper_dma_test
generic map (
    C_S_AXI_ADDR_WIDTH => 40
)
port map (

    -- Clocks / Reset
    clk_sys_i          => sclk_sys_o,
    peripheral_reset_i => speripheral_reset_0(0),
    arst_n_i           => '1',                   

    S_AXI_araddr_i  => sM00_AXI_0_araddr,
    S_AXI_arprot_i  => sM00_AXI_0_arprot,
    S_AXI_arready_o => sM00_AXI_0_arready,
    S_AXI_arvalid_i => sM00_AXI_0_arvalid,

    S_AXI_awaddr_i  => sM00_AXI_0_awaddr,
    S_AXI_awprot_i  => sM00_AXI_0_awprot,
    S_AXI_awready_o => sM00_AXI_0_awready,
    S_AXI_awvalid_i => sM00_AXI_0_awvalid,

    S_AXI_bready_i  => sM00_AXI_0_bready,
    S_AXI_bresp_o   => sM00_AXI_0_bresp,
    S_AXI_bvalid_o  => sM00_AXI_0_bvalid,

    S_AXI_rdata_o   => sM00_AXI_0_rdata,
    S_AXI_rready_i  => sM00_AXI_0_rready,
    S_AXI_rresp_o   => sM00_AXI_0_rresp,
    S_AXI_rvalid_o  => sM00_AXI_0_rvalid,

    S_AXI_wdata_i   => sM00_AXI_0_wdata,
    S_AXI_wready_o  => sM00_AXI_0_wready,
    S_AXI_wstrb_i   => sM00_AXI_0_wstrb,
    S_AXI_wvalid_i  => sM00_AXI_0_wvalid,

    
    M_AXIS_S2MM_tdata_o  => sS_AXIS_S2MM_1_tdata,
    M_AXIS_S2MM_tkeep_o  => sS_AXIS_S2MM_1_tkeep,
    M_AXIS_S2MM_tlast_o  => sS_AXIS_S2MM_1_tlast,
    M_AXIS_S2MM_tready_i => sS_AXIS_S2MM_1_tready,
    M_AXIS_S2MM_tvalid_i => sS_AXIS_S2MM_1_tvalid
);
    ------------------------------------------
    -- Fin des instanciations des custom IPs ici ....
    -------------------------------------------------------------------------

end Behavioral;
