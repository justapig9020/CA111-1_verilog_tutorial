module Adder (
    cin,
    a,
    b,
    cout,
    s,
);
    input cin, a, b;
    output cout, s;
    wire a_xor_b;
    assign a_xor_b = a ^ b;
    assign s = a_xor_b ^ cin;
    assign cout = (a_xor_b & cin) | (a & b);
endmodule