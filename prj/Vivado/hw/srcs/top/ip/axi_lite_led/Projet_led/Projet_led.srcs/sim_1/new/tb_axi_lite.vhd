----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/25/2025 10:44:01 AM
-- Design Name: 
-- Module Name: tb_axi_lite - Behavioral
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
library std;
use std.env.finish;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_axi_lite is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 4
    );
end tb_axi_lite;

architecture Behavioral of tb_axi_lite is
    constant T : time := 10 ns;

    signal S_AXI_ACLK : std_logic;
    signal S_AXI_ARESETN : std_logic;
    signal S_AXI_AWADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal S_AXI_AWPROT : std_logic_vector(2 downto 0);
    signal S_AXI_AWVALID : std_logic;
    signal S_AXI_AWREADY : std_logic;
    signal S_AXI_WDATA : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_WSTRB : std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    signal S_AXI_WVALID : std_logic;
    signal S_AXI_WREADY : std_logic;
    signal S_AXI_BRESP : std_logic_vector(1 downto 0);
    signal S_AXI_BVALID : std_logic;
    signal S_AXI_BREADY : std_logic;
    signal S_AXI_ARADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal S_AXI_ARPROT : std_logic_vector(2 downto 0);
    signal S_AXI_ARVALID : std_logic;
    signal S_AXI_ARREADY : std_logic;
    signal S_AXI_RDATA : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_RRESP : std_logic_vector(1 downto 0);
    signal S_AXI_RVALID : std_logic;
    signal S_AXI_RREADY : std_logic;
    signal S_data_config_period_o : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal S_data_blinking_led_i : STD_LOGIC_VECTOR ( 31 downto 0 );

begin
    S : entity work.axi_lite_led_simu_wrapper port map (
        data_config_period_o_0 => S_data_config_period_o,
        data_blinking_led_i_0 => S_data_blinking_led_i,
        s00_axi_aclk_0 => S_AXI_ACLK,
        s00_axi_aresetn_0 => S_AXI_ARESETN,
        S00_AXI_0_awaddr => S_AXI_AWADDR,
        S00_AXI_0_AWPROT => S_AXI_AWPROT,
        S00_AXI_0_AWVALID => S_AXI_AWVALID,
        S00_AXI_0_AWREADY => S_AXI_AWREADY,
        S00_AXI_0_WDATA => S_AXI_WDATA,
        S00_AXI_0_WSTRB => S_AXI_WSTRB,
        S00_AXI_0_WVALID => S_AXI_WVALID,
        S00_AXI_0_WREADY => S_AXI_WREADY,
        S00_AXI_0_BRESP => S_AXI_BRESP,
        S00_AXI_0_BVALID => S_AXI_BVALID,
        S00_AXI_0_BREADY => S_AXI_BREADY,
        S00_AXI_0_ARADDR => S_AXI_ARADDR,
        S00_AXI_0_ARPROT => S_AXI_ARPROT,
        S00_AXI_0_ARVALID => S_AXI_ARVALID,
        S00_AXI_0_ARREADY => S_AXI_ARREADY,
        S00_AXI_0_RDATA => S_AXI_RDATA,
        S00_AXI_0_RRESP => S_AXI_RRESP,
        S00_AXI_0_RVALID => S_AXI_RVALID,
        S00_AXI_0_RREADY => S_AXI_RREADY
    );

    process
    begin
        S_AXI_ACLK <= '0';
        wait for T/2;
        S_AXI_ACLK <= '1';
        wait for T/2;
    end process;

    process
    begin
    
        -- RESET
        S_AXI_ARESETN <= '0';
        S_AXI_AWVALID <= '0';
        S_AXI_AWPROT <= b"000";
        S_AXI_WVALID <= '0';
        S_AXI_BREADY <= '0';
        S_AXI_ARVALID <= '0';
        S_AXI_ARPROT <= b"000";
        S_AXI_RREADY <= '0';
        S_data_blinking_led_i <= b"00000000000000000000000000000001";
        wait for T;

        S_AXI_ARESETN <= '1';

        -- WRITES
        S_AXI_WSTRB <= b"1111";
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID <= '1';
        S_AXI_BREADY <= '1';

        -- Write to r0
        S_AXI_AWADDR <= b"0100";
        S_AXI_WDATA <= b"01010101010101010101010101010101";
        wait for T;

        -- Check response
        wait for T;

        -- Write to r1
        S_AXI_AWADDR <= b"0100";
        S_AXI_WDATA <= b"11111111111111111111111111111111";
        wait for T;

        -- Check response
        wait for T;

        -- Apply some backpressure and make sure the response is available until we're ready for it
        S_AXI_BREADY <= '0';
        wait for 2 * T;
        S_AXI_BREADY <= '1';

        -- We're done writing
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID <= '0';

        -- READS
        S_AXI_ARVALID <= '1';
        S_AXI_RREADY <= '1';

        -- Read r0
        S_AXI_ARADDR <= b"0000";
        wait for T;

        -- Read r1
        S_AXI_ARADDR <= b"0000";

        wait for 2*T;
        finish;
    end process;
end Behavioral;
