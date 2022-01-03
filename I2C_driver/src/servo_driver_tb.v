module servo_driver_tb ();
    //control signals
    reg i_clk; //clock for servo controller
    reg i_rst_n; //reset signal enables when low
    //I2C frame output interface
    wire io_SDA;
    wire o_SCL;
    servo_driver servo_inst
    (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .io_SDA(io_SDA),
        .o_SCL(o_SCL)
    );
    integer i;
    initial begin
        i_rst_n=1;
        i_clk=0;
        #5
        i_rst_n=0;
        #5
        i_rst_n=1;
        for (i = 0;i<600 ;i=i+1 ) begin
            #5
            i_clk=0;
            #5
            i_clk=1;
        end
    end
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, servo_driver_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
endmodule