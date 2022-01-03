
module servo_driver (
    //control signals
    input i_clk, //clock for servo controller
    input i_rst_n, //reset signal enables when low
    //I2C frame output interface
    output io_SDA,
    output o_SCL
);
//======parameter definitions
    //states definitnions
    localparam state_set_mode_sleep=0;
    localparam state_setf=1;
    localparam state_set_mode_run=2;
    localparam state_update = 3;
    localparam state_send_on_h = 4;
    localparam state_send_on_l = 5;
    localparam state_send_off_h = 6;
    localparam state_send_off_l = 7;
    localparam state_wait = 8;
    //data frme definitions
    //mode setting
    localparam mode_reg_addr = 8'h00;
    localparam mode_sleep_data = 8'h10;
    localparam mode_run_data = 8'h00;
    //frequency setting
    localparam frequency_reg_addr = 8'hfe;
    localparam frequency_data = 8'h79; //50Hz
    //data setting
    localparam pwm0_on_h_data = 8'h00;
    localparam pwm0_on_l_data = 8'h00;
    localparam pwm0_off_h_data = 8'h00;
    localparam pwm0_off_l_data = 8'hd8;
    //reg addr setting
    localparam pwm0_on_l_addr = 8'd6;
    localparam pwm0_on_h_addr = 8'd7;
    localparam pwm0_off_l_addr = 8'd8;
    localparam pwm0_off_h_addr = 8'd9;

//======register definitions
    reg [3:0] current_state;
    reg [3:0] next_state; //for the waiting state
    reg start_flag;
    reg [7:0] gen_register_addr;
    reg [7:0] gen_data;
//======wire definitions
    wire controller_clk;
    wire complete; //compelete signal from frame output
//======instantiation
    //generate the clk signal for controller
    time_divider
    #(2)
    controller_clk_generator
    (
        .i_clk(i_clk),
        .rst_n(i_rst_n),
        .o_clk(controller_clk)
    );
    I2C_frame_output
    I2C_driver
    (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .i_register_addr(gen_register_addr),
        .i_data(gen_data),
        .i_start(start_flag),
        .o_complete(complete),
        .io_SDA(io_SDA),
        .o_SCL(o_SCL)
    );
//======sequencial circuit
    //for mst
    always @(posedge i_clk or negedge i_rst_n) begin
        if(!i_rst_n) begin
            current_state=state_set_mode_sleep;
            start_flag=0;
        end
        else begin
            case (current_state)
                state_set_mode_sleep: begin
                    gen_data=mode_sleep_data;
                    gen_register_addr=mode_reg_addr;
                    send_byte;
                    current_state=state_setf;
                end
                state_setf: begin
                    gen_data=frequency_data;
                    gen_register_addr=frequency_reg_addr;
                    send_byte;
                    current_state=state_set_mode_run;
                end
                state_set_mode_run: begin
                    gen_data=mode_run_data;
                    gen_register_addr=mode_reg_addr;
                    send_byte;
                    current_state=state_update;
                end
                state_update: begin
                    current_state=state_send_on_h;
                end
                state_send_on_h:begin
                    gen_data=pwm0_on_h_data;
                    gen_register_addr=pwm0_on_h_addr;
                    send_byte;
                    current_state=state_send_on_l;
                end
                state_send_on_l:begin
                    gen_data=pwm0_on_l_data;
                    gen_register_addr=pwm0_on_l_addr;
                    send_byte;
                    current_state=state_send_off_h;
                end
                state_send_off_h:begin
                    gen_data=pwm0_off_h_data;
                    gen_register_addr=pwm0_off_h_addr;
                    send_byte;
                    current_state=state_send_off_l;
                end
                state_send_off_l:begin
                    gen_data=pwm0_on_l_data;
                    gen_register_addr=pwm0_on_l_addr;
                    send_byte;
                    current_state=state_update;
                end
                default:;
            endcase
        end
    end
//======task definitions
task send_byte;
    begin
        start_flag=1;
        @(posedge complete)
        @(posedge i_clk)
        start_flag=0;
    end
endtask
endmodule