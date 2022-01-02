module pineball_data_tb();
    reg clk; //clock signal
    reg rst_n; //reset signal enables when low

    wire [10-1:0]pos_x; //the x-axis position of ball
    wire [10-1:0]pos_y; //the y-axis position of ball

    //implenentation
    pineball_data pineball_inst(.clk(clk),.rst_n(rst_n),.pos_x(pos_x),.pos_y(pos_y));

    initial begin
        clk=0;
        rst_n=1;
        #5
        rst_n=0;
        #5
        rst_n=1;
    end
    integer i;
    initial begin
       for (i= 0;i<100 ;i=i+1)begin
           #5
           clk=1;
           #5
           clk=0;
       end 
    end
    initial begin
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, pineball_data_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
endmodule