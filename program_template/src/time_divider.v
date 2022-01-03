module pc1 
(
    input i_CLK,
    input i_RST,
    input control,
    output reg o_CLK
);
    always @ (posedge i_CLK or posedge control) begin
        $display("in here");
        o_CLK=0;
        if(control)begin
            $display("input suc");
            o_CLK=1;
        end
        @ (posedge i_RST) begin
            o_CLK=1;
        end
    end
endmodule