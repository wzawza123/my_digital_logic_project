module timedivider 
#(
    parameter ratio=2
)
(
    input i_clk,
    input rst_n,
    output o_clk
);
    //registers definitions
    reg [31:0]count;
    integer lim=ratio/2;
    //combinational circuits
    assign o_clk=count>=lim?1'b1:1'b0;
    //counting
    always @(posedge i_clk or negedge rst_n) begin
        if(!rst_n) begin
            count<=32'b0;
        end
        else begin
            if(count<lim)begin
                count<=count+1;
            end
            else begin
                count<=32'b0;
            end
        end
    end
endmodule