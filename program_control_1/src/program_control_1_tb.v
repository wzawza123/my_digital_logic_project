`timescale 1ps/1ps
module program_control_1_tb (
);
    //引脚定义
    reg i_CLK; //输入时钟信号;上升沿同�?
    reg i_RST; //同步复位信号
    wire o_CTR; //跳变输出
    //迭代变量定义
    integer i;
    program_control_1 pc1(.i_CLK(i_CLK),.i_RST(i_RST),.o_CTR(o_CTR));
    //复位信号
    initial begin
        i_CLK<=0;
        i_RST<=1; //进行复位
    end
    // 进行test
    initial begin
        #5
        i_RST<=0; //复位复位信号，开始正常工�?
        for (i = 0;i<10000 ;i=i+1 ) begin
            #5
            i_CLK<=~i_CLK;
        end
    end

    // use the top module to test
    // initial begin   
    //     $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
    //     $dumpvars(0, program_control_1_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的有信号将被记
    //     #100000 $finish;
    // end
endmodule