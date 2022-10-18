module test ();
    reg clk;
    reg rst;
    wire [3:0] out;
    Accumulator uut(
        .clk(clk),
        .rst(rst),
        .cnt(out)
    );
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, uut);
        clk = 0;
        rst = 1;
        #1
        rst = 0;
        #1
        rst = 1;
    end
    always #10 begin
        clk = ~clk;
        if (out == 4'b1111)
            $finish;
    end
endmodule