module sec (
    input clk,
    input rst,
    input [63:0] data_in,
    input valid_in,
    input ready
);

wire [63:0] ila_data, spec_data;
wire ila_valid, spec_valid;

ila ila_off_chip (
    .clk (clk),
    .rst (rst),
    .valid_in (valid_in),
    .data_in (data_in),
    .ready (ready),
    .data_out (ila_data),
    .valid_out (ila_valid)
);

spec spec_off_chip (
    .clk (clk),
    .rst (rst),
    .valid_in (valid_in),
    .data_in (data_in),
    .ready (ready),
    .data_out (spec_data),
    .valid_out (spec_valid)  
);

endmodule
