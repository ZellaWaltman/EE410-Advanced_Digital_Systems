`timescale 1ns / 1ps

module testbench_pmod_ssd();

    // Testbench signals
    reg sys_clk;
    reg rst_n;
    wire [6:0] ssd;
    wire sel;

    // Instantiate your design under test (DUT)
    pmod_ssd dut (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .ssd(ssd),
        .sel(sel)
    );

    // Clock generator: 10 MHz = 10 ns period
    initial sys_clk = 0;
    always #5 sys_clk = ~sys_clk; // wait 5 ns, toggle every 5 ns (10 ns period)

    // Stimulus
    initial begin
        // Initialize
        rst_n = 0;         // hold reset
        #50;               // wait 50 ns
        rst_n = 1;         // release reset
        // Run simulation for a while
        #1_000_000;        // run for 1 ms of simulated time
        $finish;             // stop simulation
    end

    // Output
    initial begin
        $display("Time\tReset\t\tSSD");
        $monitor("%0t\t%b\t\t%07b", $time, rst_n, ssd);
    end

endmodule
