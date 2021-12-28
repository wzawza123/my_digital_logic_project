module time_divider (
    input i_CLK,
    input i_RST,
    output reg o_CLK
);
    parameter ratio=20;
    integer c=0;
    integer target=ratio/2;
    always @(posedge i_CLK) begin
        if(RST==1) begin
            c=0;
            o_CLK=0;
        end
        else begin
            c=c+1;
        end
        if(c==target) begin
            o_CLK=~o_CLK;
            c=0;
        end
    end
endmodule