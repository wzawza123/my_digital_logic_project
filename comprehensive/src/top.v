module top(
    //control signals
    input i_rst_n,
    input i_clk,
    //signal for debugging
    output [7:0]o_data,
    //signal for keyboard
    input i_ps2_data, //ps2 data,lowest bit first
    input i_ps2_sclk //ps2 clk,use negedge to trigger
);
//wire definitions
    wire [9:0]kb_state;
    wire [12:0] servo0;
    wire [12:0] servo1;
    wire [12:0] servo2;
    wire [12:0] servo3;
    wire replaying;
    wire [4:0] tot_state;
    wire [4:0] current_state;
//instantiation
    kb_controller_advanced kb_controller_inst
    (
        .i_rst_n(i_rst_n),
        .i_data(i_ps2_data),
        .i_sclk(i_ps2_sclk),
        .o_keyboard_status(kb_state)
    );
    data_controller data_ctr_ist
    (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .i_keyboard_status(kb_state),
        .servo0(servo0),
        .servo1(servo1),
        .servo2(servo2),
        .servo3(servo3),
        .replaying(replaying),
        .tot_state(tot_state),
        .current_state(current_state)
    );
//wire definitions
endmodule