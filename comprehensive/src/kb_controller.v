module kb_controller (
    // input i_clk, //input global clock
    input i_rst_n, //reset when signal is low
    //ps 2 interface
    input i_data, //ps2 data,lowest bit first
    input i_sclk, //ps2 clk,use negedge to trigger
    //driver interface
    output reg [7:0]o_frame_data,
    output reg [7:0]o_last_data
);
    //wire definitions
    wire done;
    // wire controller_clk;
    //register definitions
    wire [7:0]data_out;
    //instantiation
    // time_divider
    // #(2)
    // time_for_controller
    // (
    //     .i_clk(i_clk),.rst_n(i_rst_n),.o_clk(controller_clk)
    // ); //1HZ
    // reg [7:0]o_frame_data; //the datared
    kb_driver kbdriver
    (
        .i_rst_n(i_rst_n),
        .i_data(i_data),
        .i_sclk(i_sclk),
        .o_done(done),
        .o_frame_data(data_out)
    );
    //loop for display
    always @(posedge done or negedge i_rst_n) begin
        if(!i_rst_n) begin
            o_frame_data<=8'b0;
        end
        else begin
            o_last_data=o_frame_data;
            o_frame_data=data_out;
        end
    end
endmodule