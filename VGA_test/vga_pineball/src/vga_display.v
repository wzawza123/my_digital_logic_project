//a frame render for vga display basing on the xpos and y pos
module vga_display
#(
	parameter	H_DISP 	=	10'd640,
	parameter	V_DISP 	=	10'd480 
)
(
	//control signals 
	input				clk, //clock signal
	input   			rst_n, //reset when the signal is low
	//vga interface
	input		[9:0]	vga_xpos, //input the position of the pixel
	input 		[9:0] 	vga_ypos,
	output 	reg	[11:0] 	vga_data, //output data to display
	//position data
	input [9:0] pineball_x, //position data
	input [9:0] pineball_y //position data
);

//some colors definitions
localparam RED     	 =	12'hF00;
localparam GREEN     = 	12'h0F0;
localparam BLUE      = 	12'h00F;  
localparam WHITE     = 	12'hFFF;  
localparam BLACK     = 	12'h000;  
localparam YELLOW    = 	12'h0FF;  
localparam CYAN      = 	12'haaa;  
localparam ROYAL     = 	12'hFF0;  

localparam SIZE 	 = 	3'd5;
//main loop to generate the pixel data
//update the pixel by the layer order
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		vga_data <= 12'h0;
	else
		begin
		//update the pineball
		if (vga_xpos >= pineball_x && vga_xpos<=pineball_x+SIZE&&vga_ypos >= pineball_y && vga_ypos<=pineball_y+SIZE)
			vga_data=RED;
		else if (vga_xpos >= 0 && vga_xpos < (H_DISP>>3))
			vga_data <= ROYAL;
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
