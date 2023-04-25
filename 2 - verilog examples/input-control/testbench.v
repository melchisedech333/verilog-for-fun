
module testbench();

    reg [1:0] mem [0:1];
    reg input1;
    reg input2;
    wire out;
    wire carry;

    half_adder u0(
        .inp1(input1), .inp2(input2), 
        .out(out), .carry(carry)
    );

    initial begin
        $readmemb("input.txt", mem);

        input1 = mem[0];
        input2 = mem[1];

        $display("-----------------------------");
        $display("         A | B | SUM | CARRY");
        $display("-----------------------------");
        $monitor(" HF   -> %0b | %0b |  %0b  | %0b", input1, input2, out, carry);

        $finish;
    end

endmodule


