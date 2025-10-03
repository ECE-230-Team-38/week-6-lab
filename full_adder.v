// Implement module called full_adder
module full_adder(
    // Declare your A/B inputs
    input A, B,
    // Declare C input
    input Cin,
    // Declare Y output
    output Y,
    // Declare carry output
    output Cout
);

    // Enter logic equation here
    assign Y = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);
endmodule