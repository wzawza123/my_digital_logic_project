module pwm_driver
(
    input i_clk,
    input i_rst_n,
    input [12:0]data, //50 to 250
    output o_signal
);
    wire gen_clk;
    reg [12:0]counter;
    time_divider 
    #(1000) div_inst
    (
        .i_clk(i_clk),
        .rst_n(i_rst_n),
        .o_clk(gen_clk)
    );
    assign o_signal=(counter>=0&&counter<=data)?1:0;
    always @(posedge gen_clk or negedge i_rst_n) begin
        if(!i_rst_n) begin
            counter=0;
        end
        else begin
            if(counter==2000) begin
                counter=0;
            end
            else begin
                counter=counter+1;
            end
        end
    end
endmodule