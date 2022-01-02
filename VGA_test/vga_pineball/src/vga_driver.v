//the vga driver to display the data
module vga_driver
#(
	// VGA_1024_768_60fps_65MHz
	// Horizontal Parameter	( Pixel )
	parameter	H_DISP 	=	11'd1024, 
	parameter	H_FRONT	=	11'd24,	 
	parameter	H_SYNC 	=	11'd136,  
	parameter	H_BACK 	=	11'd160,   
	parameter	H_TOTAL	=	11'd1344, 
	// Virtical Parameter	( Line ) 
	parameter	V_DISP 	=	10'd768,  					
	parameter	V_FRONT	=	10'd3,   
	parameter	V_SYNC 	=	10'd6,    
	parameter	V_BACK 	=	10'd29,   
	parameter	V_TOTAL	=	10'd806  
)
(  	
	input			clk_vga,	// clock of 25MHz
	input			rst_n,     	// reset signal
	
	input	[11:0]	vga_data,
	output	[11:0]	vga_rgb,	// return the displayed colors to the connection
	output	reg		vga_hs,		// VGA管脚 行同步
	output	reg		vga_vs,		// VGA管脚 场同步
	
	output	[9:0]	vga_xpos,	// the X-axis of the pixel
	output	[9:0]	vga_ypos	// the Y-axis of the pixel
);	

//------------------------------------------
// 行同步信号发生器
reg [10:0] hcnt; 
always @ (posedge clk_vga or negedge rst_n)
begin
	if (!rst_n) begin
		hcnt <= 0;
		// $display("%h",vcnt);
	end
	else
		begin
        if (hcnt < H_TOTAL-1'b1)			
            hcnt <= hcnt + 1'b1;
        else
            hcnt <= 0;
		end
end 

always@(posedge clk_vga or negedge rst_n)
begin
	if(!rst_n)
		vga_hs <= 1;
	else
		begin
        if( (hcnt >= H_DISP+H_FRONT-1'b1) && (hcnt < H_DISP+H_FRONT+H_SYNC-1'b1) )
            vga_hs <= 0;       
        else
            vga_hs <= 1;
		end
end

//------------------------------------------
// 场同步信号发生器
reg [9:0] vcnt;
always @ (posedge clk_vga or negedge rst_n)
begin
	if (!rst_n) begin
		vcnt <= 0;
		// $display("%h",vcnt);
	end
	else
		begin
		if(hcnt == H_DISP-1)
			begin
			if (vcnt < V_TOTAL-1'b1)			
				vcnt <= vcnt+1'b1;
			else
				vcnt <= 0;   
			end 
		else
			vcnt <= vcnt;
		end
end

always @ (posedge clk_vga or negedge rst_n) 
begin
	if(!rst_n)
		vga_vs <= 1;
	else
		begin
		if( (vcnt >= V_DISP+V_FRONT-1'b1) && (vcnt < V_DISP+V_FRONT+V_SYNC-1'b1) )
            vga_vs <= 0;        
        else
            vga_vs <= 1;		
		end
end

//------------------------------------------
assign	vga_xpos = (hcnt < H_DISP) ? hcnt[9:0]+1'b1 : 10'd0;
assign	vga_ypos = (vcnt < V_DISP) ? vcnt[9:0]+1'b1 : 10'd0;
assign	vga_rgb 	= 	((hcnt < H_DISP) && (vcnt < V_DISP)) ? vga_data : 12'd0;

endmodule
