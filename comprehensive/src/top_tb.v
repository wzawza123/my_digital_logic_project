module top_tb ();
    //control signals
    reg i_rst_n;
    reg i_clk;
    //signal for debugging
    wire [12:0]o_data;
    //signal for keyboard
    reg i_ps2_data; //ps2 data;lowest bit first
    reg i_ps2_sclk; //ps2 clk;use negedge to trigger
    //servo interface
    wire o_servo0;
    //vga interface
    //vga interface
    wire			vga_adv_clk; 
    wire			vga_blank_n; 
    wire			vga_sync_n;

    wire			vga_hs;    
    wire			vga_vs;    
    wire	[11:0]	vga_rgb;
    top inst(
        .i_rst_n(i_rst_n),
        .i_clk(i_clk),
        .o_data(o_data),
        .i_ps2_sclk(i_ps2_sclk),
        .i_ps2_data(i_ps2_data),
        .o_servo0(o_servo0),
        .vga_adv_clk(vga_adv_clk),
        .vga_blank_n(vga_blank_n),
        .vga_hs(vga_hs),
        .vga_vs(vga_vs),
        .vga_rgb(vga_rgb)
    );
    initial begin
        i_rst_n=1;
        #5
        i_clk=0;
        #5
        i_rst_n=0;
        #5
        i_rst_n=1;
    end
    integer i;
    initial begin
        for (i=0; i<10000;i=i+1) begin
            #5
            i_clk=1;
            #5
            i_clk=0;
        end
    end
    initial begin   
        $dumpfile("./build/wave2.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, top_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #100000 $finish;
    end
endmodule