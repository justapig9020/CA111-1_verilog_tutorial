module test ();
    reg [2:0] in;
    wire cout, sout;
    Adder uut(
        .cin(in[0]),
        .a(in[1]),
        .b(in[2]),
        .cout(cout),
        .s(sout)
    );
    initial begin
        $dumpfile("adder.vcd");
        $dumpvars(0, uut);
        in = 3'b0;
    end
    always #10 begin
        in = in + 1'b1;
        if (in == 0)
            $finish;
    end
endmodule