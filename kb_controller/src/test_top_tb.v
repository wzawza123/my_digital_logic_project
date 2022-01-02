module kb_test_top_tb1 ();
    reg i_rst_n; //reset when signal is low
    //ps 2 interface
    reg i_data; //ps2 data;lowest bit first
    reg i_sclk; //ps2 clk,use negedge to trigger
    //driver interface
    wire [7:0]o_frame_data; //the datared
    //instantiation
    kb_test_top1 inst(
        .i_rst_n(i_rst_n),
        .i_data(i_data),
        .i_sclk(i_sclk),
        .o_frame_data(o_frame_data)
    );
    //initialize
    initial begin
        i_sclk=1;
        i_data=0;
        //reset
        i_rst_n=1;
        #5
        i_rst_n=0;
        #5
        i_rst_n=1;
    end
    //test start
    integer i;
    initial begin
        for (i=0;i<100 ;i=i+1)begin
            #5
            i_sclk=0;
            #5
            i_sclk=1;
            if(i>=20 && i<=23) begin
                i_data=1;
            end
            else if(i>=25&&i<=27)begin
                i_data=0;
            end
        end
    end
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, kb_test_top_tb1);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
endmodule