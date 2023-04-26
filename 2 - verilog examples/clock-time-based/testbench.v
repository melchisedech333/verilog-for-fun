
module device();

    reg clk = 0;

    initial begin
        
        // Time based.
        forever begin
            #1;
            if ($time % 100000 == 0) begin
                clk <= ~clk;
            end
        end
        
        $finish;
    end

    always @(posedge clk) begin
        $display("clock = %b, time = %0t", clk, $time);
    end

endmodule


