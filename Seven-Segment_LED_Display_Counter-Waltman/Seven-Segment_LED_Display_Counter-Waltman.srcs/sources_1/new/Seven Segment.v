`timescale 1ns / 1ps                 // Simulation time units/resolution

//////////////////////////////////////////////////////////////////////////////////
// Company: Sonoma State University
// Engineer: Zella Waltman
// 
// Create Date: 08/26/2025 07:17:27 PM
// Design Name: Seven Segment LED Display Counter
// Module Name: Pmod Seven Segment
// Project Name: Seven Segment LED Display Counter
// Target Devices: PYNQ-Z2
// Tool Versions: Verilog 2025.1
// Description: 
//  This program is a Seven Segment LED Display Counter which continuously cycles through the numbers
//  0 through 9.
// Dependencies: 
// 
// Revision: 0.1 - Comments added, added select
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module pmod_ssd(                      // Begin module pmod_ssd (7-Segment)
    input sys_clk,                    // System clock
    input rst_n,                      // Active-LOW reset (n = negated)
    output reg[6:0] ssd,              // 7-bit register for 7-Segment Display
    output sel                        // Selection for right-hand digits place
);                             

    reg[31:0] timer_cnt;              // 32-bit counter for 1-second delay
    reg[3:0]  binary_cnt;             // 4-bit counter to hold current digit (0-9)
    
    assign sel = 0;                   // Digits will display in the ones place
    
    always@(posedge sys_clk or negedge rst_n)  // 0r negedge rst_n = async active-LOW reset
    begin
        if(!rst_n)                    // If reset = asserted (LOW) on clock edge or at negedge rst_n:
        begin
            ssd        <= 7'b1111110; // Initialize 7-Segment to show "0"
            binary_cnt <= 4'b0000;    // Start digit counter at 0
            timer_cnt  <= 32'd0;      // Clear timer counter
        end
        // If not in reset, check this branch next:
        else if(binary_cnt > 4'b1001 && timer_cnt >= 32'd50_000_000)
        begin
            ssd        <= 7'b1111110; // If digit exceeded 9 & a timer counter finished
            binary_cnt <= 4'b0000;    // reset back to 0
            timer_cnt  <= 32'd0;      // clear timer
        end
        // Timer counter = once per second (w/ 50 MHz clock):
        else if(timer_cnt >= 32'd50_000_000)
        begin
            binary_cnt <= binary_cnt + 1; // Increment digit
            timer_cnt  <= 32'd0;          // restart 1-second timer

            if(binary_cnt == 4'b0000)
            begin
                ssd <= 7'b1111110;   // Show "0"
            end
            else if(binary_cnt == 4'b0001)
            begin
                ssd <= 7'b0110000;   // Show "1"
            end
            else if(binary_cnt == 4'b0010)
            begin
                ssd <= 7'b1101101;   // Show "2"
            end
            else if(binary_cnt == 4'b0011)
            begin
                ssd <= 7'b1111001;   // Show "3"
            end
            else if(binary_cnt == 4'b0100)
            begin
                ssd <= 7'b0110011;   // Show "4"
            end
            else if(binary_cnt == 4'b0101)
            begin
                ssd <= 7'b1011011;   // Show "5"
            end
            else if(binary_cnt == 4'b0110)
            begin
                ssd <= 7'b0011111;   // Show "6"
            end
            else if(binary_cnt == 4'b0111)
            begin
                ssd <= 7'b1110000;   // Show "7"
            end
            else if(binary_cnt == 4'b1000)
            begin
                ssd <= 7'b1111111;   // Show "8"
            end
            else if(binary_cnt == 4'b1001)
            begin
                ssd <= 7'b1111011;   // Show "9"
            end
        end
        else                         // No reset, no 1-second timer count yet
        begin
            ssd       <= ssd;        // Update ssd
            timer_cnt <= timer_cnt + 32'd1; // Increment timer
        end
    end
endmodule                           
