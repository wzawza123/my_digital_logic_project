module kb_driver
(
    //control signals
    // input i_clk, //clock for driver
    input i_rst_n, //reset when signal is low
    //ps 2 interface
    input i_data, //ps2 data,lowest bit first
    input i_sclk, //ps2 clk,use negedge to trigger
    //driver interface
    output o_done,//high for a clk cycle, signaling a Byte of data is received
    output reg [7:0]o_frame_data //the datared
);
    //registers definitions
    reg [3:0] read_cnt; //counter of the clk
    
    //combinational circuits
    assign o_done=(read_cnt>=4'd9)?4'b1:4'b0;

    always @(negedge i_sclk or negedge i_rst_n) begin
        if(!i_rst_n) begin
            read_cnt <= 4'b0;
            o_frame_data <= 8'b0;
        end
        else begin
            if(read_cnt==4'b0)begin
                //start flag
                if(i_data==0) begin
                    read_cnt<=read_cnt+4'b1;
                end
            end
            else if(read_cnt>=4'b1&&read_cnt<=4'd8)begin
                //data frame
                o_frame_data[read_cnt-4'b1]=i_data;
                read_cnt<=read_cnt+4'b1;
            end
            else begin
                //reset when read is done
                read_cnt<=4'b0;
            end
        end
    end
endmodule