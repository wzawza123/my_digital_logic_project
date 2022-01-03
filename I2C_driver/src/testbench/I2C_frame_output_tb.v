module I2C_frame_output_tb (
);
    reg i_clk; //the global clock signal to generate the I2C clk
    reg i_rst_n; //reset signal enables when low;only once after power up
    reg [7:0]i_register_addr; //the address of the register to manipulate
    reg [7:0]i_data; //the data to send 
    reg i_start; //posedge to start sending
    wire o_complete; //high when complete
    //I2C interfac
    wire io_SDA; //the signal line of I2C
    wire o_SCL; //the clk signal for I2C
    I2C_frame_output
    I2C_inst
    (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .i_register_addr(i_register_addr),
        .i_data(i_data),
        .i_start(i_start),
        .o_complete(o_complete),
        .io_SDA(io_SDA),
        .o_SCL(o_SCL)
    );
    initial begin
        i_clk=0;
        i_start=0;
        i_register_addr=8'b11111111;
        i_data=8'b11111110;
        #5
        i_rst_n=1;
        #5
        i_rst_n=0;
        #5
        i_rst_n=1;
        #5
        i_start=1;
    end
    integer i;
    initial begin
        for (i = 0;i<100;i=i+1 ) begin
            #5
            i_clk=0;
            #5
            i_clk=1;
        end
        #10
        i_start=0;
        for (i = 0;i<15;i=i+1 ) begin
            #5
            i_clk=0;
            #5
            i_clk=1;
        end
        i_start=1;
        for (i = 0;i<120;i=i+1 ) begin
            #5
            i_clk=0;
            #5
            i_clk=1;
        end
    end
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, I2C_frame_output_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #200000 $finish;
    end
endmodule