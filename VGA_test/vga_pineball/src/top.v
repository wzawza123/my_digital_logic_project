module top (
    input 			clk, //clock input
	input 			rst_n, //reset at low level
	//vga interface
	output			vga_adv_clk, 
	output			vga_blank_n, 
	output			vga_sync_n,
	//vga output to the connection
	output			vga_hs,    
	output			vga_vs,    
	output	[11:0]	vga_rgb
);
    wire	clk_vga;
    wire	sys_rst_n;
    assign	vga_adv_clk	=	~clk_vga;
    assign	vga_blank_n = 	1'b1;		
    assign	vga_sync_n 	= 	1'b0;	
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


//generate clock of 25MHz for vga
div div_inst(.clk(clk),.rst(~rst_n),.clk_out(clk_vga));
//-----------------------------data------------------
//-----------------------------
//data definitions
wire	[9:0]	pineball_x;
wire	[9:0]	pineball_y;
wire pineball_clk;
//generate clock signal for position generating
timedivider #(10000000)
time_div_for_pineball
(
	.i_clk(clk),
	.rst_n(rst_n),
	.o_clk(pineball_clk)
);
//generate pineball position data
pineball_data
#(
	.H_DISP 	(H_DISP),
	.V_DISP 	(V_DISP) 
)
pineball_controller
(
	.clk(pineball_clk),
	.rst_n(rst_n),
	.pos_x(pineball_x),
	.pos_y(pineball_y)
);
//-----------------------------display--------------------
//-----------------------------
//vga display instantiation
wire	[9:0]	vga_xpos;
wire	[9:0]	vga_ypos;
wire	[11:0]	vga_data;
//generate vga data based on the pos data
vga_display 
#(
	.H_DISP 	(H_DISP),
	.V_DISP 	(V_DISP) 
)
vga_display_inst
(
	.clk		(clk_vga), 
	.rst_n		(rst_n), 

	.vga_xpos	(vga_xpos), 
	.vga_ypos	(vga_ypos),
	.vga_data	(vga_data),

	.pineball_x	(pineball_x),
	.pineball_y	(pineball_y)
);

//----------------------------
//vga driver instantiation
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
	.rst_n		(rst_n),     
	
	.vga_data	(vga_data),
	.vga_rgb	(vga_rgb),	
	.vga_hs		(vga_hs),	
	.vga_vs		(vga_vs),	
	
	.vga_xpos	(vga_xpos),	
	.vga_ypos	(vga_ypos)	
);
endmodule