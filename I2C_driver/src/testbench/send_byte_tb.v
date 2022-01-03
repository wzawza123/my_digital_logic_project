module send_byte_tb (
);
    //control signals
    reg i_clk; //clock for servo controller
    reg i_rst_n; //reset signal enables when low
    //I2C frame output interface
    wire io_SDA;
    wire o_SCL;
    //======register definitions
    reg [3:0] current_state;
    reg [3:0] next_state; //for the waiting state
    reg start_flag;
    reg [7:0] gen_register_addr;
    reg [7:0] gen_data;
//======wire definitions
    wire controller_clk;
    wire complete; //compelete signal from frame output
    I2C_frame_output
    inst
    (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .i_register_addr(gen_register_addr),
        .i_data(gen_data),
        .i_start(start_flag),
        .o_complete(complete),
        .io_SDA(io_SDA),
        .o_SCL(o_SCL)
    );
    initial begin
        i_clk=0;
        i_rst_n=1;
        gen_register_addr=16'hff;
        gen_data=16'hff;
        #5
        i_rst_n=0;
        #5
        i_rst_n=1;
    end
    integer i;
    initial begin
        for (i=0; i<100;i=i+1) begin
            #5
            i_clk=0;
            #5
            i_clk=1;
        end
        for (i=0; i<100;i=i+1) begin
            #5
            i_clk=0;
            #5
            i_clk=1;
        end
    end
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, send_byte_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
endmodule