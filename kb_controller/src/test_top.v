module kb_test_top1 (
    input i_rst_n, //reset when signal is low
    //ps 2 interface
    input i_data, //ps2 data,lowest bit first
    input i_sclk, //ps2 clk,use negedge to trigger
    //driver interface
    output reg [7:0]o_frame_data //the datared
);
    //wire definitions
    wire done;
    wire controller_clk;
    //instantiation
    
    //loop for display
endmodule