//一个递增计数器，达到指定的上限会置高溢出信号并停止计时
module counter_overflow
#(parameter COUNTER_BITS=32) //计数器位数
(
    input i_CLK, //输入时钟信号
    input [COUNTER_BITS-1:0] i_LIM, //上限
    input i_RST, //异步复位信号，上升沿有效
    output reg o_OVERFLOW //若超过上限，维持高电平
);
    reg [COUNTER_BITS-1:0] c;
    initial begin
        c<=0; //clear
        o_OVERFLOW<=0;
    end
    always @(posedge i_CLK or posedge i_RST) begin
        //异步复位
        if(i_RST == 1) begin
            c<=0;
            o_OVERFLOW<=0;
        end
        else begin
            if(o_OVERFLOW==0) begin
                c=c+1;
                if(c>i_LIM) begin
                    o_OVERFLOW<=1;
                end
                else begin
                    o_OVERFLOW<=0;
                end
            end
            else begin
                c<={COUNTER_BITS{1'bz}};
            end
        end
    end
endmodule