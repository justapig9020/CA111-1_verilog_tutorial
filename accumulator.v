module Accumulator (
    clk,
    rst,
    cnt,
);
    input clk, rst;
    output reg [3:0] cnt;
    always @(posedge clk or negedge rst) begin
        if (rst == 1'b0) begin
            cnt = 4'b0;
        end
        else begin
            cnt += 1;
        end
    end
endmodule