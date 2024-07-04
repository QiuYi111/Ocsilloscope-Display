library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity controller is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
		  romStart: in  integer;
        start_x : in  std_logic;
        start_y : in  std_logic;
        SCL_x   : out std_logic;
        SCL_y   : out std_logic;
        SDA_x   : out std_logic;
        SDA_y   : out std_logic
    );
end entity controller;

architecture behav of controller is
    signal rom_addr_x : std_logic_vector(13 downto 0);
    signal rom_addr_y : std_logic_vector(13 downto 0);
    signal x_data     : std_logic_vector(7 downto 0);
    signal y_data     : std_logic_vector(7 downto 0);
    signal start_write_x : std_logic := '0';
    signal start_write_y : std_logic := '0';
	 signal clk_inside : std_logic;

    component i2c_write
        port (
            clk    : in  std_logic;
            rst    : in  std_logic;
            start  : in  std_logic;
            wdata  : in  std_logic_vector(7 downto 0);
            SCL    : out std_logic;
            SDA    : out std_logic
        );
    end component;

    component rom_x is
        generic (
            DATA_WIDTH : integer := 8;
            ADDR_WIDTH : integer := 14
        );
        port (
            clk  : in  std_logic;
            addr : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
            data : out std_logic_vector(DATA_WIDTH-1 downto 0)
        );
    end component;

	 component clock_divider is
		Port ( clk_in : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
	end component;	
    component rom_y is
        generic (
            DATA_WIDTH : integer := 8;
            ADDR_WIDTH : integer := 14
        );
        port (
            clk  : in  std_logic;
            addr : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
            data : out std_logic_vector(DATA_WIDTH-1 downto 0)
        );
    end component;

begin
    rom_x_inst: rom_x
        port map (
            clk  => clk,
            addr => rom_addr_x,
            data => x_data
        );

    rom_y_inst: rom_y
        port map (
            clk  => clk,
            addr => rom_addr_y,
            data => y_data
        );

    i2c_x_inst: i2c_write
        port map (
            clk    => clk_inside,
            rst    => rst,
            start  => start_write_x,
            wdata  => x_data,
            SCL    => SCL_x,
            SDA    => SDA_x
        );

    i2c_y_inst: i2c_write
        port map (
            clk    => clk_inside,
            rst    => rst,
            start  => start_write_y,
            wdata  => y_data,
            SCL    => SCL_y,
            SDA    => SDA_y
        );
		  
	clkd:clock_divider
		port map(
		clk_in => clk,
		clk_out => clk_inside
		);

    process(clk, rst)
    begin
        if rst = '1' then
            rom_addr_x <= (others => '0');
            rom_addr_y <= (others => '0');
            start_write_x <= '0';
            start_write_y <= '0';
        elsif clk_inside = '1'then
            if start_x = '1' then
                start_write_x <= '1';
                if rom_addr_x = std_logic_vector(to_unsigned((romStart+1)*800, rom_addr_x'length)) then
                    rom_addr_x <= std_logic_vector(to_unsigned(romStart*800, rom_addr_x'length));
                else
                    rom_addr_x <= std_logic_vector(unsigned(rom_addr_x) + 1);
                end if;
            end if;

            if start_y = '1' then
                start_write_y <= '1';
                if rom_addr_y = std_logic_vector(to_unsigned((romStart+1)*800, rom_addr_y'length)) then
                    rom_addr_y <= std_logic_vector(to_unsigned(romStart*800, rom_addr_y'length));
                else
                    rom_addr_y <= std_logic_vector(unsigned(rom_addr_y) + 1);
                end if;
            end if;
        end if;
    end process;

end architecture behav;
