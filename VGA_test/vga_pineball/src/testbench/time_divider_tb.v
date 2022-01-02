module time_divider_tb ();
    reg i_clk;
    reg rst_n;
    wire o_clk1;
    wire o_clk2;
    timedivider #(2) inst1(.i_clk(i_clk),.rst_n(rst_n),.o_clk(o_clk1));
    timedivider #(10) inst2(.i_clk(i_clk),.rst_n(rst_n),.o_clk(o_clk2));
    initial begin
        i_clk=0;
        rst_n=0;
        #5
        rst_n=1;
    end
    integer i;
    initial begin
        for (i = 0;i<100 ;i=i+1 ) begin
            #5 i_clk=0;
            #5 i_clk=1;
        end
    end
    initial begin
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, time_divider_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
endmodule