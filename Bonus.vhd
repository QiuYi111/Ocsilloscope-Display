library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Bonus is
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
end entity Bonus;

architecture rtl of Bonus is

    signal SDA_internal_x: STD_LOGIC;
    signal SDA_internal_y: STD_LOGIC;

begin

    -- Instantiate the controller
    ctrl_inst: entity work.controller
        port map (
            clk         => clk,
            rst         => rst,
            start_x     => start_x,
            start_y     => start_y,
            ACKSDA_x    => ACKSDA_x,
            ACKSDA_y    => ACKSDA_y,
            burstmode   => burstmode,
            loaddata    => loaddata,
            ASDA_x      => ASDA_x,
            ASDA_y      => ASDA_y,
            EXDATACLK_x => EXDATACLK_x,
            EXDATACLK_y => EXDATACLK_y,
            pend_x      => pend_x,
            pend_y      => pend_y,
            SCL_x       => SCL_x,
            SCL_y       => SCL_y,
            SDA_x       => SDA_internal_x,
            SDA_y       => SDA_internal_y
        );

    -- Bidirectional SDA line handling for X
    SDA_x <= 'Z' when (SDA_internal_x = '1') else '0';

    -- Bidirectional SDA line handling for Y
    SDA_y <= 'Z' when (SDA_internal_y = '1') else '0';

end architecture rtl;
