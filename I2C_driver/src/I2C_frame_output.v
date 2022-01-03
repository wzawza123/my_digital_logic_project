//control the I2C_byte_output to output a data frame to manipulate the register
//data frame 
module I2C_frame_output
#(
    parameter slave_addr=16'h40 //default address of the slave board
)
(
    //control signals
    input i_clk, //the global clock signal to generate the I2C clk
    input i_rst_n, //reset signal enables when low,only once after power up
    input [7:0]i_register_addr, //the address of the register to manipulate
    input [7:0]i_data, //the data to send 
    input i_start, //posedge to start sending
    output o_complete, //high when complete
    //I2C interfac
    output reg io_SDA, //the signal line of I2C
    output reg o_SCL //the clk signal for I2C
);
//=======local parameters definition
    localparam state_idle = 30;
    localparam state_start = 29;
    localparam state_slave_h = 28;
    localparam state_slave_l = 22;
    localparam state_rw1 = 21;
    localparam state_ack1 = 20;
    localparam state_reg_adr_h = 19;
    localparam state_reg_adr_l = 12;
    localparam state_ack2 = 11;
    localparam state_data_h=10;
    localparam state_data_l=3;
    localparam state_ack=2;
    localparam state_stop = 1; //reset the data,wait for the negedge of start to change to next one
    localparam state_waitforstart= 0; //wait for high level of start
    // localparam state_idle = 0;
//=======wire definition
    wire controller_clk; //generated clock for I2C controller
//======register definition
    reg out_clock; //output clock for I2C sclk
    reg [5:0]current_state;
    reg finished;
    reg rst_complete;
//=======combinational circuits
    // assign o_SCL=(i_start==1)?1:out_clk; 
    //pull the scl up when it is not sending
    assign o_complete=(current_state==state_stop)&&(rst_complete);
//=======instantiation
    //generate the clock output for the I2C
    time_divider
    #(2) //1 for test
    clk_generator
    (
        .i_clk(i_clk),
        .rst_n(i_rst_n),
        .o_clk(controller_clk
)
    );
//======sequential logic
    //main loop for FSM switching
    always @(posedge controller_clk or negedge i_rst_n or negedge i_start) begin
        if(!i_rst_n) begin
            current_state<=state_waitforstart;
        end
        else begin
            if(current_state==state_stop) begin
                if(!i_start) begin
                    current_state=state_waitforstart;
                end
            end
            else if(current_state==state_waitforstart)begin
                if(i_start) begin
                    current_state=state_start;
                end
            end
            else current_state=current_state-1;
        end
    end
    //data and clk generate
    always @(controller_clk) begin
        if(!i_rst_n)begin
            io_SDA<=1;
            o_SCL<=1;
        end
        else begin
            if(controller_clk) begin
                //high level
                //update data first
                if(current_state==state_start) begin
                    //start signal
                    io_SDA<=0;
                    rst_complete <= 0;
                end
                else if (current_state>=state_slave_h&&current_state<=state_slave_l) begin
                    //slave address
                    io_SDA<=io_SDA<=slave_addr[current_state-22];
                end
                else if (current_state==state_ack1||current_state==state_ack2) begin
                    //acknoknowledge
                    io_SDA<=1'bz;
                end
                else if (current_state==state_rw1) begin
                    //read write control
                    io_SDA<=0; //write enable
                end
                else if(current_state<=state_reg_adr_h&&current_state>=state_reg_adr_l) begin
                    //register address
                    io_SDA<=i_register_addr[current_state-12];
                end
                else if(current_state<=state_data_h&&current_state>=state_data_l) begin
                    //output data
                    io_SDA<=i_data[current_state-3];
                end
                else if(current_state==state_stop||current_state==state_idle)begin
                    //stop
                    io_SDA<=1;
                    rst_complete <=1;
                end
                //update clock
                o_SCL=0;
            end
            else begin
                //low level
                o_SCL=1;
            end
        end
    end

endmodule