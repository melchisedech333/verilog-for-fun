
module device_interface();

    reg read_control = 0;
    integer write_fd;

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
        forever begin
            #1;
            if ($time % 10000 == 0) begin
                read_control <= ~read_control;
            end
        end
    end

    always @(posedge read_control) begin
        $readmemb("input.txt", mem);
        input1 = mem[0];
        input2 = mem[1];
    end

    always @(out, carry) begin
        write_fd = $fopen("output.txt", "w");
        if (write_fd == 0) begin
            $display("Error open output file.");
        end else begin
            $fdisplay(write_fd, "%0b,%0b,%0b,%0b", input1, input2, out, carry);
            $fclose(write_fd);
        end
    end

endmodule


