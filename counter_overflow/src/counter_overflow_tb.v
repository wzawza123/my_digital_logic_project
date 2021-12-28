module counter_overflow_tb 
#(parameter COUNTER_BITS=32)
(
);
reg i_CLK; //输入时钟信号
reg [COUNTER_BITS-1:0] i_LIM; //上限
reg i_RST; //异步复位信号，上升沿有效
wire o_OVERFLOW; //若超过上限，维持高电平
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, counter_overflow_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
    counter_overflow cnt(.i_CLK(i_CLK),.i_LIM(i_LIM),.i_RST(i_RST),.o_OVERFLOW(o_OVERFLOW));
    initial begin
        i_RST<=0; //归零复位信号
        i_CLK<=0;
        i_LIM=5;
    end
    integer i;
    initial begin
        //计数测试
        for (i = 0;i<15 ;i=i+1 ) begin
            #5
            i_CLK=~i_CLK;
        end
        //复位测试
        i_RST=1;
        #5
        i_RST=0;
        for (i = 0;i<6 ;i=i+1 ) begin
            #5
            i_CLK=~i_CLK;
        end
        //中部复位测试
        i_RST=1;
        #5
        i_RST=0;
        for (i = 0;i<15 ;i=i+1 ) begin
            #5
            i_CLK=~i_CLK;
        end
    end
endmodule