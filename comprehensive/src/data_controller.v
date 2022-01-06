module data_controller (
    //control signals
    input i_clk,
    input i_rst_n,
    //keyboard communication
    input [9:0]i_keyboard_status,
    //data bus
    output reg [12:0]servo0,
    output reg [12:0]servo1,
    output reg [12:0]servo2,
    output reg [12:0]servo3,

    output replaying,
    output reg [4:0]tot_state,
    output reg [4:0]current_state
);
//parameter definitions
    localparam state_update=0;
    localparam state_replay=1;
    //servo
    localparam servo_default=150;
    localparam servo_step=5;
    localparam servo_upper_limit=965;
    localparam servo_lower_limit=50;
    //keyboard
    localparam kb_w=0;
    localparam kb_s=1;
    localparam kb_a=2;
    localparam kb_d=3;
    localparam kb_i=4;
    localparam kb_k=5;
    localparam kb_j=6;
    localparam kb_l=7;
    localparam kb_space=8;
    localparam kb_enter=9;
//wire definitions
    wire controller_clk; //clk for controller
//register definitions
    reg [4:0] controller_state;
    time_divider #(10000000)
    time_generator
    (
        .i_clk(i_clk),
        .rst_n(i_rst_n),
        .o_clk(controller_clk)
    );

//sequencial circuit
    always @(posedge controller_clk or negedge i_rst_n) begin
        if(!i_rst_n) begin
            //initialize
            servo0<=servo_default;
            servo1<=servo_default;
            servo2<=servo_default;
            servo3<=servo_default;
            tot_state<=0;
            current_state<=0;
            controller_state<=state_update;
        end
        else begin
            if(i_keyboard_status[kb_w]) begin
                servo0=servo0+servo_step;
                if(servo0>servo_upper_limit) begin
                    servo0=servo_upper_limit;
                end
            end
            if(i_keyboard_status[kb_s]) begin
                servo0=servo0-servo_step;
                if(servo0<servo_lower_limit) begin
                    servo0=servo_lower_limit;
                end
            end
        end
    end
endmodule