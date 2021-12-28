module time_divider_tb (
);
    reg i_CLK; //input clock signal
    reg i_RST; //rest signal->enables when high
    wire o_CLK;
    time_divider #(10) divider (.i_CLK(i_CLK),.i_RST(i_RST),.o_CLK(o_CLK));
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, time_divider_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
    initial begin
        i_RST<=0; //归零复位信号
        i_CLK<=0;
    end
    integer i;
    initial begin
        for (i = 0;i<100 ;i=i+1 ) begin
            #5
            i_CLK=~i_CLK;
        end
    end
endmodule