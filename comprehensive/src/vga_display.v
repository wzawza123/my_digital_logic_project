/*************************************************
*	Module Name		:	vga_display.v		   
*	Engineer		:	Crazy Bingo
*	Target Device	:	EP2C35F672C6N
*	Tool versions	:	Quartus II 11.0
*	Create Date		:	2011-6-26
*	Revision		:	v1.0
*	Description		:   	
**************************************************/
module vga_display
#(
	parameter	H_DISP 	=	10'd640,
	parameter	V_DISP 	=	10'd480 
)
(
	input				clk, 
	input   			rst_n, 

	input		[9:0]	vga_xpos, 
	input 		[9:0] 	vga_ypos,
	output 	reg	[11:0] 	vga_data
);

localparam RED     	=	12'hF00;  //F00
localparam GREEN     = 	12'h0F0;  //0F0
localparam BLUE      = 	12'h00F;  
localparam WHITE     = 	12'hFFF;  
localparam BLACK     = 	12'h000;  
localparam YELLOW    = 	12'h0FF;  
localparam CYAN      = 	12'haaa;  
localparam ROYAL     = 	12'hFF0;  
      
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		vga_data <= 12'h0;
	else
		begin
		if	(vga_xpos >= 0 && vga_xpos < (H_DISP>>3))
			vga_data <= RED;
		else if(vga_xpos >= (H_DISP>>3)*1 && vga_xpos < (H_DISP>>3)*2)
			vga_data <= GREEN;
		else if(vga_xpos >= (H_DISP>>3)*2 && vga_xpos < (H_DISP>>3)*3)
			vga_data <= BLUE;
		else if(vga_xpos >= (H_DISP>>3)*3 && vga_xpos < (H_DISP>>3)*4)
			vga_data <= WHITE;
		else if(vga_xpos >= (H_DISP>>3)*4 && vga_xpos < (H_DISP>>3)*5)
			vga_data <= BLACK;
		else if(vga_xpos >= (H_DISP>>3)*5 && vga_xpos < (H_DISP>>3)*6)
			vga_data <= YELLOW;
		else if(vga_xpos >= (H_DISP>>3)*6 && vga_xpos < (H_DISP>>3)*7)
			vga_data <= CYAN;
		else// if(vga_xpos >= (H_DISP<<3)*7 && vga_xpos < (H_DISP<<3)*8)
			vga_data <= ROYAL;
		end
end

//wire	[19:0]	vga_result = vga_xpos * vga_ypos;
//always@(posedge clk or negedge rst_n)
//begin
//	if(!rst_n)
//		vga_data <= 16'h0;
//	else
//		vga_data = vga_result[15:0];
//end


endmodule
