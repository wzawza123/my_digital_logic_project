`timescale 1ns/1ps
/***************************************
晶振频率 fc = 100MHz
输出频率 fo = 1kHz（根据需要可以设为任意值）
控制参数 K  = (fo*2^N)/fc = 42950
参数 N = 2^32,(32为计数器的位宽)
****************************************/
module div_tb();
    reg clk;
    reg rst;
    wire clk_out;
    div inst (.clk(clk),.rst(rst),.clk_out(clk_out));
    integer i;
    initial begin
        clk=0;
        rst=0;
        #5
        rst=1;
        #5
        rst=0;
    end
    initial begin
        for (i = 0;i<100;i=i+1) begin
            #5
            clk=1;
            #5
            clk=0;
        end
    end
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, div_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
endmodule