module top(
    //control signals
    input i_rst_n,
    input i_clk,
    //signal for debugging
    output [12:0]o_data,
    //signal for keyboard
    input i_ps2_data, //ps2 data,lowest bit first
    input i_ps2_sclk, //ps2 clk,use negedge to trigger
    //servo interface
    output o_servo0,
    //vga interface
	output			vga_adv_clk, 
	output			vga_blank_n, 
	output			vga_sync_n,
	
	output			vga_hs,    
	output			vga_vs,    
	output	[11:0]	vga_rgb
);
//wire definitions
    wire	clk_vga;
    wire	sys_rst_n;
    assign	vga_adv_clk	=	~clk_vga;
    assign	vga_blank_n = 	1'b1;		
    assign	vga_sync_n 	= 	1'b0;
//parameter definitions
    //vga
    parameter	DUTY_CYCLE		=	50;
    parameter	DIVIDE_DATA		=	2;
    parameter	MULTIPLY_DATA	=	1;
    parameter	H_DISP	=	11'd640;
    parameter	H_FRONT	=	11'd16; 
    parameter	H_SYNC 	=	11'd96;  
    parameter	H_BACK 	=	11'd48;   
    parameter	H_TOTAL	=	11'd800; 	
    parameter	V_DISP 	=	10'd480;  					
    parameter	V_FRONT	=	10'd10;  
    parameter	V_SYNC 	=	10'd2;   
    parameter	V_BACK 	=	10'd33;   
    parameter	V_TOTAL	=	10'd525;
//wire definitions
    //keyboard
    wire [9:0]kb_state;
    //servo
    wire [12:0] servo0;
    wire [12:0] servo1;
    wire [12:0] servo2;
    wire [12:0] servo3;
    //running status
    wire replaying;
    wire [4:0] tot_state;
    wire [4:0] current_state;

    //for vga
    wire	[9:0]	vga_xpos;
    wire	[9:0]	vga_ypos;
    wire	[11:0]	vga_data;
//instantiation
    //keyboard interface
    kb_controller_advanced kb_controller_inst
    (
        .i_rst_n(i_rst_n),
        .i_data(i_ps2_data),
        .i_sclk(i_ps2_sclk),
        .o_keyboard_status(kb_state)
    );
    //data processing
    data_controller data_ctr_ist
    (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .i_keyboard_status(kb_state),
        .servo0(o_data),
        .servo1(servo1),
        .servo2(servo2),
        .servo3(servo3),
        .replaying(replaying),
        .tot_state(tot_state),
        .current_state(current_state)
    );
    pwm_driver servo_driver0
    (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .data(o_data),
        .o_signal(o_servo0)
    );
    //vga interface
    //generate vga data based on the pos data
    vga_display 
    #(
        .H_DISP 	(H_DISP),
        .V_DISP 	(V_DISP) 
    )
    vga_display_inst
    (
        .clk		(clk_vga), 
        .rst_n		(i_rst_n), 

        .vga_xpos	(vga_xpos), 
        .vga_ypos	(vga_ypos),
        .vga_data	(vga_data),

        .i_servo_0  (o_data)
    );

    //----------------------------
    //vga driver instantiation
    // time_divider #(4)
    // vga_clk_generator
    // (
    //     .i_clk(i_clk),
    //     .rst_n(i_rst_n),
    //     .o_clk(clk_vga)
    // );
    div div_inst(.clk(i_clk),.rst(~i_rst_n),.clk_out(clk_vga));
    vga_driver
    #
    (
        .H_DISP 	(H_DISP), 	
        .H_FRONT	(H_FRONT),	
        .H_SYNC 	(H_SYNC), 	
        .H_BACK 	(H_BACK), 	
        .H_TOTAL	(H_TOTAL),	
        .V_DISP 	(V_DISP), 					
        .V_FRONT	(V_FRONT),	 
        .V_SYNC 	(V_SYNC), 	
        .V_BACK 	(V_BACK), 	
        .V_TOTAL	(V_TOTAL)
    )
    vga_driver_inst
    (  	
        .clk_vga	(clk_vga),	
        .rst_n		(i_rst_n),     
        
        .vga_data	(vga_data),
        .vga_rgb	(vga_rgb),	
        .vga_hs		(vga_hs),	
        .vga_vs		(vga_vs),	
        
        .vga_xpos	(vga_xpos),	
        .vga_ypos	(vga_ypos)
    );
//wire definitions
endmodule