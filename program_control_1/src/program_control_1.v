//本module实现一个能够反复跳变的led
module program_control_1
(
    input i_CLK, //输入时钟信号,上升沿同步
    input i_RST, //同步复位信号
    output reg o_CTR //跳变输出
);
    //基本参数设置
    parameter state_rst=2'b00; //重置计数器
    parameter state_wait=2'b01; //等待计数器溢出
    parameter state_change=2'b10; //修改跳变值
    parameter delay_time=2; //等待时间参数
    //内部寄存器定义
    reg [1:0]current_state;
    reg counter_reset;
    //内部线网定义
    wire c_overflow;
    wire clk_slow;
    //初始化
    initial begin
        //外部线初始化
        o_CTR<=1'b0;
        //内部寄存器初始化
        current_state<=2'b00;
        counter_reset<=2'b00;
    end
    //组合逻辑
    counter_overflow counter(.i_CLK(clk_slow),.i_LIM(delay_time),.i_RST(counter_reset),.o_OVERFLOW(c_overflow));
    time_divider inst(.i_CLK(i_CLK),.i_RST(1'b0),.o_CLK(clk_slow));
    //时序逻辑
    //主状态机，负责控制状态转换
    always @(posedge clk_slow or negedge clk_slow or posedge i_RST) begin
        //复位信号检测
        if(i_RST==1) begin
            //内部寄存器初始化
            current_state<=2'b00;
            counter_reset<=2'b00;
        end
        //非复位，正常工作
        else begin
            if(clk_slow==1) begin
                //时钟上升沿
                case (current_state)
                    //复位态，复位计数器
                    state_rst:
                    begin
                        counter_reset<=1;
                        current_state <= state_wait;
                    end
                    //等待态，等待overflow
                    state_wait:
                    begin
                        if(c_overflow==1) begin
                            current_state<=state_change;
                        end
                        // else begin
                            
                        // end
                    end
                    state_change:
                    begin
                        // o_CTR<=~o_CTR;
                        current_state<=state_rst;
                    end
                    default:
                    //出现异常，进行复位
                    current_state<=state_rst; 
                endcase
            end
            else begin
                //时钟下降沿
                if(counter_reset==1) begin
                    counter_reset<=0;
                end
                // else begin
                //     // o_CTR<=o_CTR;
                // end
            end
        end
    end
    //输出进行修改
    always @(current_state or i_RST) begin
        if(i_RST==1) begin
            //外部线初始化
            o_CTR<=1'b0;
        end
        else begin
            case (current_state)
                state_change:
                    o_CTR<=~o_CTR; 
            endcase
        end
    end
endmodule