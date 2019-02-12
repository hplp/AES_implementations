module tb();
    reg clk;
    reg [3:0] raddr;
    reg  we;
    reg [3:0] waddr;

    toplevel block(.raddr(raddr), .we(we), .waddr(waddr), .clk(clk));

    always
        #0.5 clk = ~clk;

    initial begin
        $dumpfile ("waveform.vcd");
        $dumpvars;

        clk = 0;
        raddr = 4'd1;
        we = 1'd1;
        waddr = 4'd1;

        #2
        raddr = 4'd2;
        we = 1'd1;
        waddr = 4'd2;

        #2
        raddr = 4'd3;
        we = 1'd1;
        waddr = 4'd3;

        #2
        raddr = 4'd4;
        we = 1'd1;
        waddr = 4'd4;

        #2
        raddr = 4'd0;
        we = 1'd1;
        waddr = 4'd0;

        #2
        raddr = 4'd1;
        we = 1'd1;
        waddr = 4'd1;

        #2
        raddr = 4'd2;
        we = 1'd1;
        waddr = 4'd2;

        #2
        raddr = 4'd3;
        we = 1'd1;
        waddr = 4'd3;

        #2
        raddr = 4'd4;
        we = 1'd1;
        waddr = 4'd4;

        #2
        raddr = 4'd0;
        we = 1'd1;
        waddr = 4'd0;

        #2
        raddr = 4'd1;
        we = 1'd1;
        waddr = 4'd1;

        #2
        raddr = 4'd2;
        we = 1'd1;
        waddr = 4'd2;

        #2
        raddr = 4'd3;
        we = 1'd1;
        waddr = 4'd3;

        #2
        raddr = 4'd4;
        we = 1'd1;
        waddr = 4'd4;

        #2
        raddr = 4'd0;
        we = 1'd1;
        waddr = 4'd0;

        #2
        raddr = 4'd1;
        we = 1'd1;
        waddr = 4'd1;

        #2
        raddr = 4'd2;
        we = 1'd1;
        waddr = 4'd2;

        #2
        raddr = 4'd3;
        we = 1'd1;
        waddr = 4'd3;

        #2
        raddr = 4'd4;
        we = 1'd1;
        waddr = 4'd4;

        #2
        raddr = 4'd0;
        we = 1'd1;
        waddr = 4'd0;

        #2
        raddr = 4'd1;
        we = 1'd1;
        waddr = 4'd1;

        #2
        raddr = 4'd2;
        we = 1'd1;
        waddr = 4'd2;

        #2
        raddr = 4'd3;
        we = 1'd1;
        waddr = 4'd3;

        #2
        raddr = 4'd4;
        we = 1'd1;
        waddr = 4'd4;

        #2
        $finish;
    end
endmodule
