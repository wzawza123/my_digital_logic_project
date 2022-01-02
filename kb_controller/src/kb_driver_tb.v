module kb_driver1_tb ();
    reg i_rst_n; //reset when signal is low
    //ps 2 interface
    reg i_data; //ps2 data;lowest bit first
    reg i_sclk; //ps2 clk;use negedge to trigger
    //driver interface
    wire o_done;//high for a clk cycle; signaling a Byte of data is received
    wire [7:0]o_frame_data; //the datared
    
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
    //implementation
    kb_driver1 inst(
        .i_rst_n(i_rst_n),
        .i_data(i_data),
        .i_sclk(i_sclk),
        .o_done(o_done),
        .o_frame_data(o_frame_data)
    );
    initial begin   
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, kb_driver1_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
endmodule