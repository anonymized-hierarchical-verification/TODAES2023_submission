module ila (
    input clk,
    input rst,
    input valid_in,
    input [7:0] data_in,
    input ready,
    output [7:0] data_out,
    output valid_out
);

wire data_int_ch0, data_int_ch1;
wire valid_interface;
wire io_token_out;
reg io_token;

BSG_UPSTREAM
upstream
(
.__ILA_BSG_UPSTREAM_grant__ (7'b1111111),
.clk (clk),
.core_clk (1'b0),
.core_data_in (data_in),
.core_valid_in (valid_in),
.io_token (io_token ^ io_token_out),
.rst (rst),

.io_valid_out (valid_interface),
.io_data_out_ch0 (data_int_ch0),
.io_data_out_ch1 (data_int_ch1)
);

BSG_DOWNSTREAM_ch
downstream_0
(
    .__ILA_BSG_DOWNSTREAM_ch_grant__(4'b1111),
    .clk (clk),
    .core_clk (1'b0),
    .core_ready (ready),
    .io_data_in  (data_int_ch0),
    .io_valid_in (valid_interface),
    .rst (rst),
    .buffer_data_n65 (r_data_ch0),
    .buffer_data_n69 (r_data_ch0),
    .buffer_addr0    (w_addr_ch0),
    .buffer_data0    (w_data_ch0),
    .buffer_wen0     (w_en_ch0),
    .buffer_addr_n68 (r_addr_ch0),
    .core_data_out ({data_out[5:4], data_out[1:0]}),
    .core_valid_out (valid_out),
    .io_token_out (io_token_out)
);

always @(posedge clk) begin
    if (rst) io_token <= 0;
    else io_token <= io_token_out;
end

wire w_en_ch0;
wire [1:0] w_data_ch0;
wire [2:0] w_addr_ch0;
wire [2:0] r_addr_ch0;
wire [1:0] r_data_ch0;

Memory mem_ch0(
    .clk(clk),
    .rst(rst),
    .r_addr(r_addr_ch0),
    .w_addr(w_addr_ch0),
    .w_data(w_data_ch0),
    .w_en(w_en_ch0),
    .r_data(r_data_ch0)
);

BSG_DOWNSTREAM_ch
downstream_1
(
    .__ILA_BSG_DOWNSTREAM_ch_grant__(4'b1111),
    .clk (clk),
    .core_clk (1'b0),
    .core_ready (ready),
    .io_data_in  (data_int_ch1),
    .io_valid_in (valid_interface),
    .rst (rst),
    .buffer_data_n65 (r_data_ch1),
    .buffer_data_n69 (r_data_ch1),
    .buffer_addr0    (w_addr_ch1),
    .buffer_data0    (w_data_ch1),
    .buffer_wen0     (w_en_ch1),
    .buffer_addr_n68 (r_addr_ch1),
    .core_data_out ({data_out[7:6], data_out[3:2]}),
    .core_valid_out (),
    .io_token_out ()
);

wire w_en_ch1;
wire [1:0] w_data_ch1;
wire [2:0] w_addr_ch1;
wire [2:0] r_addr_ch1;
wire [1:0] r_data_ch1;

Memory mem_ch1(
    .clk(clk),
    .rst(rst),
    .r_addr(r_addr_ch1),
    .w_addr(w_addr_ch1),
    .w_data(w_data_ch1),
    .w_en(w_en_ch1),
    .r_data(r_data_ch1)
);

endmodule



module Memory
#(
	parameter N_ELEMENTS = 8,
	parameter ADDR_WIDTH = 4,
	parameter DATA_WIDTH = 2
)(
	// Inputs
	input                   clk,    // Clock
	input                   rst,    // Reset (All entries -> 0)
	input  [ADDR_WIDTH-1:0] r_addr, // Read Addresss
	input  [ADDR_WIDTH-1:0] w_addr, // Write Address
	input  [DATA_WIDTH-1:0] w_data, // Write Data
	input                   w_en,   // Write Enable

	// Outputs
	output [DATA_WIDTH-1:0] r_data  // Read Data
);

	// Memory Unit
	reg [DATA_WIDTH-1:0] mem[N_ELEMENTS:0];

	// Continuous Read
	assign r_data = mem[r_addr[2:0]];

	// Synchronous Reset + Write
	always @(posedge clk) begin
		if (rst) begin
			mem[0] <= 0;
            mem[1] <= 0;
            mem[2] <= 0;
            mem[3] <= 0;
            mem[4] <= 0;
            mem[5] <= 0;
            mem[6] <= 0;
            mem[7] <= 0;
		end
		else if (w_en) begin
			mem[w_addr[2:0]] <= w_data;
		end
	end

endmodule