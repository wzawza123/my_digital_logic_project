module pineball_data 
#(
    //display region
    parameter	H_DISP 	     =	10'd640,
	parameter	V_DISP 	     =	10'd480,
    parameter   POS_BITS     =  10,
    parameter   SIZE         =  10'd5
)
(
    input clk, //clock signal
    input rst_n, //reset signal enables when low

    output [POS_BITS-1:0]pos_x, //the x-axis position of ball
    output [POS_BITS-1:0]pos_y  //the y-axis position of ball
);
    //register definations
    reg [POS_BITS-1:0]POS_X_R;
    reg [POS_BITS-1:0]POS_Y_R;
    
    //the velocity of the pineball
    reg [POS_BITS-1:0]PINEBALL_VX =10'd1;
    reg [POS_BITS-1:0]PINEBALL_VY =10'd1;

    //cobinational circuits
    assign pos_x=POS_X_R;
    assign pos_y=POS_Y_R;

    //update the data
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            //reset the data
            POS_X_R<=5;
            POS_Y_R<=5;
            PINEBALL_VX <= 10'd1;
            PINEBALL_VY <= 10'd1;
        end
        else begin
            //update the position

            if(POS_X_R+10'd5>H_DISP||POS_X_R<=1) begin
                POS_X_R=POS_X_R-PINEBALL_VX;
                PINEBALL_VX = -PINEBALL_VX;
            end
            if(POS_Y_R+10'd5>V_DISP||POS_Y_R<=1) begin
                POS_Y_R=POS_Y_R-PINEBALL_VY;
                PINEBALL_VY = -PINEBALL_VY;
            end
            POS_X_R=POS_X_R+PINEBALL_VX;
            POS_Y_R=POS_Y_R+PINEBALL_VY;
        end
    end
endmodule