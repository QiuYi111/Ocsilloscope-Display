library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Bonus is
    port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        a, b, c, d  : in std_logic;
        start_x     : in  std_logic;
        start_y     : in  std_logic;
        SCL_x       : out std_logic;
        SCL_y       : out std_logic;
        SDA_x       : out std_logic;
        SDA_y       : out std_logic
    );
end entity Bonus;

architecture rtl of Bonus is
    signal romStart_signal : integer;
	 signal SCL_in:std_logic;

    component encode
        port (
            a, b, c, d : in std_logic;
            romStart   : out integer
        );
    end component;
	 component controller
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
    end component;

begin
    encoder_inst: entity work.encode
        port map (
            a => a,
            b => b,
            c => c,
            d => d,
            romStart => romStart_signal
        );
		  

    ctrl_inst: entity work.controller
        port map (
            clk     => clk,
            rst     => rst,
            romStart => romStart_signal,
            start_x => start_x,
            start_y => start_y,
            SCL_x   => SCL_x,
            SCL_y   => SCL_y,
            SDA_x   => SDA_x,
            SDA_y   => SDA_y
        );

end architecture rtl;
