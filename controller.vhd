library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity controller is
    port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        start_x     : in  std_logic;
        start_y     : in  std_logic;
        ACKSDA_x    : in  std_logic;
        ACKSDA_y    : in  std_logic;
        burstmode   : in  std_logic;
        loaddata    : in  std_logic;
        ASDA_x      : out std_logic;
        ASDA_y      : out std_logic;
        EXDATACLK_x : out std_logic;
        EXDATACLK_y : out std_logic;
        pend_x      : out std_logic;
        pend_y      : out std_logic;
        SCL_x       : out std_logic;
        SCL_y       : out std_logic;
        SDA_x       : inout std_logic;
        SDA_y       : inout std_logic
    );
end entity controller;

architecture behav of controller is

    signal rom_addr_x   : std_logic_vector(3 downto 0) := (others => '0');
    signal rom_addr_y   : std_logic_vector(3 downto 0) := (others => '0');
    signal wdata_x      : std_logic_vector(7 downto 0);
    signal wdata_y      : std_logic_vector(7 downto 0);
    signal rdata_x      : std_logic_vector(7 downto 0);
    signal rdata_y      : std_logic_vector(7 downto 0);
    signal inSDA_x      : std_logic;
    signal inSDA_y      : std_logic;
    signal start_read_x : std_logic := '0';
    signal start_read_y : std_logic := '0';
    signal start_write_x: std_logic := '0';
    signal start_write_y: std_logic := '0';
    signal stop_x       : std_logic := '0';
    signal stop_y       : std_logic := '0';

    -- Instantiate ROMs
    signal x_data       : std_logic_vector(7 downto 0);
    signal y_data       : std_logic_vector(7 downto 0);

    component rom_x is
        generic (
            DATA_WIDTH : integer := 8;
            ADDR_WIDTH : integer := 4
        );
        port (
            clk    : in  std_logic;
            addr   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
            data   : out std_logic_vector(DATA_WIDTH-1 downto 0)
        );
    end component;

	 component rom_y is
        generic (
            DATA_WIDTH : integer := 8;
            ADDR_WIDTH : integer := 4
        );
        port (
            clk    : in  std_logic;
            addr   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
            data   : out std_logic_vector(DATA_WIDTH-1 downto 0)
        );
    end component;


begin

    -- Instantiate Xs ROM
    rom_x_inst: rom_x
        port map (
            clk  => clk,
            addr => rom_addr_x,
            data => x_data
        );

    -- Instantiate Ys ROM
    rom_y_inst: rom_y
        port map (
            clk  => clk,
            addr => rom_addr_y,
            data => y_data
        );

    -- Instantiate I2C module for Xs
    i2c_x_inst: entity work.rdwr1
        port map (
            ACKSDA      => ACKSDA_x,
            burstmode   => burstmode,
            clk         => clk,
            inSDA       => inSDA_x,
            loaddata    => loaddata,
            rst         => rst,
            start_read  => start_read_x,
            startc      => start_write_x,
            stopc       => stop_x,
            wdata       => wdata_x,
            ASDA        => ASDA_x,
            EXDATACLK   => EXDATACLK_x,
            pend        => pend_x,
            rdata       => rdata_x,
            SCL         => SCL_x,
            SDA         => SDA_x
        );

    -- Instantiate I2C module for Ys
    i2c_y_inst: entity work.rdwr1
        port map (
            ACKSDA      => ACKSDA_y,
            burstmode   => burstmode,
            clk         => clk,
            inSDA       => inSDA_y,
            loaddata    => loaddata,
            rst         => rst,
            start_read  => start_read_y,
            startc      => start_write_y,
            stopc       => stop_y,
            wdata       => wdata_y,
            ASDA        => ASDA_y,
            EXDATACLK   => EXDATACLK_y,
            pend        => pend_y,
            rdata       => rdata_y,
            SCL         => SCL_y,
            SDA         => SDA_y
        );

    -- Sequentially read X and Y data and send via separate I2C controllers
    process(clk, rst)
    begin
        if rst = '1' then
            rom_addr_x <= (others => '0');
            rom_addr_y <= (others => '0');
            start_write_x <= '0';
            start_write_y <= '0';
            start_read_x <= '0';
            start_read_y <= '0';
            stop_x <= '0';
            stop_y <= '0';
        elsif rising_edge(clk) then
            if start_x = '1' then
                wdata_x <= x_data;
                start_write_x <= '1';
                if rom_addr_x = "1111" then
                    rom_addr_x <= (others => '0');
                else
                    rom_addr_x <= std_logic_vector(unsigned(rom_addr_x) + 1);
                end if;
            else
                start_write_x <= '0';
            end if;
            if start_y = '1' then
                wdata_y <= y_data;
                start_write_y <= '1';
                if rom_addr_y = "1111" then
                    rom_addr_y <= (others => '0');
                else
                    rom_addr_y <= std_logic_vector(unsigned(rom_addr_y) + 1);
                end if;
            else
                start_write_y <= '0';
            end if;
        end if;
    end process;

end architecture behav;
