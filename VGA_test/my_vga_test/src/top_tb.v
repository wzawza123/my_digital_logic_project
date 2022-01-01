module top_tb (
);
    reg 			clk; //外部时钟
    reg 			rst_n; //低电平复位信号
    //vga interface
    wire			vga_adv_clk; 
    wire			vga_blank_n; 
    wire			vga_sync_n;
    wire			vga_hs;    
    wire			vga_vs;    
    wire	[11:0]	vga_rgb;
    top inst(
        .clk(clk),
        .rst_n(rst_n),
        .vga_adv_clk(vga_adv_clk),
        .vga_blank_n(vga_blank_n),
        .vga_sync_n(vga_sync_n),
        .vga_hs(vga_hs),
        .vga_vs(vga_vs),
        .vga_rgb(vga_rgb)
        );
    initial	begin
        clk=0;
        rst_n=1;
        #5
        rst_n=0;
        #5
        rst_n=1;
    end
    integer i;
    initial begin
        for (i = 0;i<100 ;i=i+1 ) begin
            #5
            clk=0;
            #5
            clk=1;
        end
    end
    initial begin
        $dumpfile("./build/wave.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, top_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end
endmodule