/***************************************
晶振频率 fc = 100MHz
输出频率 fo = 1kHz（根据需要可以设为任意值）
控制参数 K  = (fo*2^N)/fc = 2791728742
参数 N = 2^32,(32为计数器的位宽)
****************************************/
module div(
    input clk,
    input rst,
    output reg clk_out
    );

    reg [31:0] cnt;

always @(posedge clk or posedge rst) 
    if(rst)
        cnt <= 0;
    else
        cnt <= cnt + 32'd1073741824;  //计数器步长K

always @(posedge clk or posedge rst)
    if(rst)
        clk_out <= 1'b0;
    else if(cnt < 32'h7FFF_FFFF)
        clk_out <= 1'b0;
    else
        clk_out <= 1'b1;

endmodule