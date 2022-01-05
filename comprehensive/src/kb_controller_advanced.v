module kb_controller_advanced (
    // input i_clk, //input global clock
    input i_rst_n, //reset when signal is low
    //ps 2 interface
    input i_data, //ps2 data,lowest bit first
    input i_sclk, //ps2 clk,use negedge to trigger
    //driver interface
    output reg [9:0]o_keyboard_status=10'b0 //keyboard status for WSADIKJL SPACE ENTER, 1 for pressed
);
//wire definitions
    wire done;
    wire [7:0]data_out;
//register definitions
    reg release_flag=0;
//parameter definitions
    localparam kb_code_W=8'h1D;
    localparam kb_code_S=8'h1B;
    localparam kb_code_A=8'h1C;
    localparam kb_code_D=8'h23;
    localparam kb_code_I=8'h43;
    localparam kb_code_K=8'h42;
    localparam kb_code_J=8'h3B;
    localparam kb_code_L=8'h4B;
    localparam kb_code_SPACE=8'h29;
    localparam kb_code_ENTER=8'h5A;
    localparam kb_code_BREAK=8'hF0;

    // wire controller_clk;
    
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
            o_keyboard_status<=10'b0;
            release_flag<=0;
        end
        else begin
            if(!release_flag) begin
                case (data_out)
                    kb_code_W:begin
                        o_keyboard_status[0]=~o_keyboard_status[0];
                    end
                    kb_code_S:begin
                        o_keyboard_status[1]=~o_keyboard_status[1];
                    end
                    kb_code_A:begin
                        o_keyboard_status[2]=~o_keyboard_status[2];
                    end
                    kb_code_D:begin
                        o_keyboard_status[3]=~o_keyboard_status[3];
                    end
                    kb_code_I:begin
                        o_keyboard_status[4]=~o_keyboard_status[4];
                    end
                    kb_code_K:begin
                        o_keyboard_status[5]=~o_keyboard_status[5];
                    end
                    kb_code_J:begin
                        o_keyboard_status[6]=~o_keyboard_status[6];
                    end
                    kb_code_L:begin
                        o_keyboard_status[7]=~o_keyboard_status[7];
                    end
                    kb_code_SPACE:begin
                        o_keyboard_status[8]=~o_keyboard_status[8];
                    end
                    kb_code_ENTER:begin
                        o_keyboard_status[9]=~o_keyboard_status[9];
                    end
                    kb_code_BREAK:begin
                        release_flag<=1;
                    end
                    default: ;
                endcase
            end
            else begin
                release_flag<=0;
                o_keyboard_status<=10'b0;
            end
        end
    end
endmodule