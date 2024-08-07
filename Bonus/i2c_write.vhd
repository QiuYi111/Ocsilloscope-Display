library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity i2c_write is
    port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        start       : in  std_logic;
        wdata       : in  std_logic_vector(7 downto 0);
        SCL         : out std_logic;
        SDA         : out std_logic
    );
end entity i2c_write;

architecture behav of i2c_write is
    type state_type is (IDLE, STARTs, WRITE, ACK, STOP);
    signal state     : state_type := IDLE;
    
    signal bit_cnt   : integer range 0 to 7 := 0;
    signal sda_int   : std_logic := '1';
    signal scl_int   : std_logic := '1';
begin
    -- Clock divider to generate SCL (assuming clk is much faster than desired SCL)

    -- Main state machine for I2C write operation
process (clk, rst)
    begin
        if rst = '1' then
            state <= IDLE;
            bit_cnt <= 0;
            sda_int <= '1';
            
        elsif clk= '1' then
            case state is
                when IDLE =>
                    sda_int <= '1';
                    if start = '1' then
                        state <= STARTs;
                    end if;
                
                when STARTs =>
                    if scl_int <= '1' then
                    sda_int <= '0';
						  end if;
                    state <= WRITE;
                
                when WRITE =>
                    sda_int <= wdata(bit_cnt);
                    if bit_cnt = 7 then
                         state <= ACK;
                      else
                         bit_cnt <= bit_cnt + 1;
                         state <= WRITE;
                      end if;
                 
                
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

    -- Output assignments
    SCL <= clk;
    SDA <= sda_int;


end architecture behav;
