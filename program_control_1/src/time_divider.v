module time_divider 
#(parameter ratio=100000000) //分频比 100M=1e8  1e8/100000=1e3HZ->1ms
(
    input i_CLK, //输入时钟信号
    input i_RST, //同步重置信号高电平有效
    output reg o_CLK //输出时钟信号
);
    integer c;
    integer target=ratio/2;
    initial begin
        o_CLK=0;
        c=0;
    end
    always @(posedge i_CLK) begin
        if(i_RST==1) begin
            c=0;
            o_CLK=0;
        end
        else begin
            c=c+1;
        end
        if(c==target) begin
            o_CLK=~o_CLK;
            c=0;
        end
    end
endmodule