module time_divider 
#(
    parameter ratio=2
)
(
    input i_clk,
    input rst_n,
    output reg o_clk=0
);
    //registers definitions
    reg [31:0]count;
    integer lim=ratio/2;
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
                o_clk<=~o_clk;
            end
        end
    end
endmodule