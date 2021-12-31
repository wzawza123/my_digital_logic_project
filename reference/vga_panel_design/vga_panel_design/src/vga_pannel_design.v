/*************************************************
*	Module Name		:	vga_pannel_design.v		   
*	Engineer		:	Crazy Bingo
*	Target Device	:	EP2C35F672C6N
*	Tool versions	:	Quartus II 11.0
*	Create Date		:	2011-6-26
*	Revision		:	v1.0
*	Description		:   	
**************************************************/
module vga_pannel_design
(
	//clock and reset
	input 			clk,
	input 			rst_n,
	
	//vga interface
	output			vga_adv_clk, 
	output			vga_blank_n, 
	output			vga_sync_n,
	
	output			vga_hs,    
	output			vga_vs,    
	output	[15:0]	vga_rgb
);

assign	vga_adv_clk	=	~clk_vga;
assign	vga_blank_n = 	1'b1;		
assign	vga_sync_n 	= 	1'b0;	

//----------------------------------------
//vga parameter define
//`define	VGA_640_480_60FPS_25MHz
//`define	VGA_800_600_72FPS_50MHz
`define	VGA_1024_768_60FPS_65MHz 

`ifdef	VGA_640_480_60FPS_25MHz
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
`endif
	
`ifdef VGA_800_600_72FPS_50MHz
	parameter	DUTY_CYCLE		=	50;
	parameter	DIVIDE_DATA		=	1;
	parameter	MULTIPLY_DATA	=	1;
	parameter	H_DISP 	=	11'd800; 
	parameter	H_FRONT	=	11'd56; 
	parameter	H_SYNC 	=	11'd120;  
	parameter	H_BACK 	=	11'd64;  
	parameter	H_TOTAL	=	11'd1040; 
	parameter	V_DISP 	=	10'd600; 					
	parameter	V_FRONT	=	10'd37;  
	parameter	V_SYNC 	=	10'd6;   
	parameter	V_BACK 	=	10'd23;   
	parameter	V_TOTAL	=	10'd666;
`endif
	
`ifdef	VGA_1024_768_60FPS_65MHz
	parameter	DUTY_CYCLE		=	50;
	parameter	DIVIDE_DATA		=	10;
	parameter	MULTIPLY_DATA	=	13;
	parameter	H_DISP 	=	11'd1024; 
	parameter	H_FRONT	=	11'd24;	 
	parameter	H_SYNC 	=	11'd136;  
	parameter	H_BACK 	=	11'd160;   
	parameter	H_TOTAL	=	11'd1344; 
	parameter	V_DISP 	=	10'd768; 					
	parameter	V_FRONT	=	10'd3; 
	parameter	V_SYNC 	=	10'd6;    
	parameter	V_BACK 	=	10'd29;   
	parameter	V_TOTAL	=	10'd806;
`endif

//-----------------------------
//system control instantiation
wire	clk_vga;
wire	sys_rst_n;
system_ctrl
#(
	.DUTY_CYCLE		(DUTY_CYCLE),
	.DIVIDE_DATA	(DIVIDE_DATA),
	.MULTIPLY_DATA	(MULTIPLY_DATA)
)
system_ctrl_inst
(
	.clk		(clk),
	.rst_n		(rst_n),
	.clk_c0		(clk_vga),
	.sys_rst_n	(sys_rst_n)
);

//-----------------------------
//vga display instantiation
wire	[9:0]	vga_xpos;
wire	[9:0]	vga_ypos;
wire	[15:0]	vga_data;
vga_display 
#(
	.H_DISP 	(H_DISP),
	.V_DISP 	(V_DISP) 
)
vga_display_inst
(
	.clk		(clk_vga), 
	.rst_n		(sys_rst_n), 

	.vga_xpos	(vga_xpos), 
	.vga_ypos	(vga_ypos),
	.vga_data	(vga_data)
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
	.rst_n		(sys_rst_n),     
	
	.vga_data	(vga_data),
	.vga_rgb	(vga_rgb),	
	.vga_hs		(vga_hs),	
	.vga_vs		(vga_vs),	
	
	.vga_xpos	(vga_xpos),	
	.vga_ypos	(vga_ypos)	
);

endmodule

