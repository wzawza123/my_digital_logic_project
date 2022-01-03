module pc1_tb (
);
    reg i_CLK;
    reg i_RST;
    reg control;
    wire o_CLK;
    pc1 pc(i_CLK, i_RST, control,o_CLK);
    initial begin
        i_CLK=0;
        i_RST=0;
        control=0;
        #5
        i_RST=1;
        #5
        i_RST=0;
        #5
        i_CLK=0;
        #5
        i_CLK=1;
        #5
        control=1;
        #5
        i_RST=1;
        #5
        i_RST=0;
    end
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, pc1_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
endmodule