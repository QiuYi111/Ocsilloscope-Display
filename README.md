# Ocsilloscope-Display
## IIC 介绍
[![iic 介绍](https://res.cloudinary.com/marcomontalbano/image/upload/v1719912344/video_to_markdown/images/youtube--CAvawEcxoPU-c05b58ac6eb4c4700831b2b3070cd403.jpg)](https://www.youtube.com/watch?v=CAvawEcxoPU "iic 介绍")
## 端口介绍
这里是关于顶层实体 `controller_top` 中端口的详细介绍的Markdown文档。

```markdown
# 顶层实体 `controller_top` 端口详细介绍

## `controller_top` 实体端口说明

```vhdl
entity controller_top is
    port (
        clk: in STD_LOGIC;          -- 系统时钟
        rst: in STD_LOGIC;          -- 复位信号
        start_x: in STD_LOGIC;      -- 启动X数据传输
        start_y: in STD_LOGIC;      -- 启动Y数据传输
        ACKSDA_x: in STD_LOGIC;     -- X数据的ACK信号
        ACKSDA_y: in STD_LOGIC;     -- Y数据的ACK信号
        burstmode: in STD_LOGIC;    -- 突发模式信号
        loaddata: in STD_LOGIC;     -- 加载数据信号
        ASDA_x: out STD_LOGIC;      -- X数据的SDA信号
        ASDA_y: out STD_LOGIC;      -- Y数据的SDA信号
        EXDATACLK_x: out STD_LOGIC; -- X数据的额外数据时钟信号
        EXDATACLK_y: out STD_LOGIC; -- Y数据的额外数据时钟信号
        pend_x: out STD_LOGIC;      -- X数据的挂起信号
        pend_y: out STD_LOGIC;      -- Y数据的挂起信号
        SCL_x: out STD_LOGIC;       -- X数据的SCL信号
        SCL_y: out STD_LOGIC;       -- Y数据的SCL信号
        SDA_x: out STD_LOGIC;       -- X数据的SDA信号
        SDA_y: out STD_LOGIC        -- Y数据的SDA信号
    );
end controller_top;
```

### 各端口作用

1. **`clk`**: 输入端口，系统时钟信号，用于同步整个系统的操作。

2. **`rst`**: 输入端口，复位信号，用于重置系统状态。

3. **`start_x`**: 输入端口，启动X数据传输的信号。当该信号为高电平时，开始传输存储在ROM中的X数据。

4. **`start_y`**: 输入端口，启动Y数据传输的信号。当该信号为高电平时，开始传输存储在ROM中的Y数据。

5. **`ACKSDA_x`**: 输入端口，X数据的ACK信号。连接到外部I2C从设备: 这些信号应该连接到对应外部I2C从设备的SDA线。当主设备（FPGA）发送一个字节的数据后，从设备会在第9个时钟周期内通过拉低SDA线来发送ACK信号在I2C通信中，当主设备发送一个字节数据后，从设备会在第9个时钟周期内通过拉低SDA线来应答。

6. **`ACKSDA_y`**: 输入端口，Y数据的ACK信号。与`ACKSDA_x`作用相同，但用于Y数据。

7. **`burstmode`**: 输入端口，突发模式信号。在突发模式下，可以连续传输多个数据字节而无需重复启动和停止条件。

8. **`loaddata`**: 输入端口，加载数据信号，指示是否加载数据到发送缓冲区。

9. **`ASDA_x`**: 输出端口，X数据的SDA信号，用于I2C总线的数据线。

10. **`ASDA_y`**: 输出端口，Y数据的SDA信号，用于I2C总线的数据线。

11. **`EXDATACLK_x`**: 输出端口，X数据的额外数据时钟信号，用于外部数据同步。

12. **`EXDATACLK_y`**: 输出端口，Y数据的额外数据时钟信号，用于外部数据同步。

13. **`pend_x`**: 输出端口，X数据的挂起信号，指示当前操作是否完成。

14. **`pend_y`**: 输出端口，Y数据的挂起信号，指示当前操作是否完成。

15. **`SCL_x`**: 输出端口，X数据的SCL信号，用于I2C总线的时钟线。

16. **`SCL_y`**: 输出端口，Y数据的SCL信号，用于I2C总线的时钟线。

17. **`SDA_x`**: 输出端口，X数据的SDA信号，用于I2C总线的数据线。

18. **`SDA_y`**: 输出端口，Y数据的SDA信号，用于I2C总线的数据线。
```

这个文档详细介绍了 `controller_top` 实体中各个端口的功能和作用。通过这些端口，你可以连接和控制不同的ROM和I2C模块，实现数据的读写和传输。
