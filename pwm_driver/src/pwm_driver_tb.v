module pwm_driver_tb();
    reg i_clk;
    reg i_rst_n;
    reg [12:0]data; //50 to 250
    wire o_signal;
    pwm_driver inst(.i_clk(i_clk),.i_rst_n(i_rst_n),.data(data),.o_signal(o_signal));
    integer i;
    initial begin
        data=12'd50;
        i_clk=0;
        i_rst_n=1;
        #5
        i_rst_n=0;
        #5
        i_rst_n=1;
        for (i = 0;i<20000;i=i+1) begin
            #5
            i_clk=1;
            #5
            i_clk=0;
        end
    end
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, pwm_driver_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #100000 $finish;
    end
endmodule