module spec (
    input clk,
    input rst,
    input [7:0] data_in,
    input valid_in,
    input ready,
    output reg [7:0] data_out,
    output reg valid_out
);

reg [3:0] state;
localparam IDLE = 4'd1;
localparam Pro  = 4'd2;
localparam Out0 = 4'd3;
localparam Out1 = 4'd4;
localparam Out2 = 4'd5;
localparam Out3 = 4'd6;
localparam STOR = 4'd7;

//up
reg [4:0] up_cnt;
reg [7:0] temp_data;
reg [1:0] data0;
reg [1:0] data1;
reg [1:0] data2;
reg [1:0] data3;

// down
reg [4:0]  down_rptr;
reg [4:0]  down_wptr;
reg [3:0] down_wdata;
reg        down_wen;
wire [3:0] down_data_o;
reg [3:0] down_data_out0;
reg [3:0] down_data_out1;

reg valid_temp;
reg down_rptr_token;
wire token;
assign token = (down_rptr_token ^ down_rptr[2]);

always @(posedge clk) begin
    if(rst) begin
        state <= IDLE;
        up_cnt <= 0;
        down_wptr <= 0;
        down_wen <= 0;
    end
    else begin
        case(state)
            IDLE: begin 
                if (valid_in) begin
                state <= Out0;
                temp_data <= data_in;
                end
                if (token) up_cnt <= up_cnt - 4;
            end
            Out0: begin 
                data0 <= {temp_data[4], temp_data[0]};
                if (up_cnt < 8) state <= Out1;
                if (token) up_cnt <= up_cnt - 4;
            end
            Out1: begin
                data1 <= {temp_data[5], temp_data[1]};
                down_wdata <= {{temp_data[5],data0[1]}, {temp_data[1], data0[0]}};
                state <= Out2;
                down_wen <= 1;
                if (token) up_cnt <= up_cnt - 3;
                else up_cnt <= up_cnt + 1;
            end
            Out2: begin
                // Store data0 & data1
                data2 <= {temp_data[6], temp_data[2]};
                down_wptr <= down_wptr + 1;
                state <= Out3;
                down_wen <= 0;
                if (token) up_cnt <= up_cnt - 4;
            end
            Out3: begin
                data3 <= {temp_data[7], temp_data[3]};
                down_wdata <= {{temp_data[7],data2[1]}, {temp_data[3], data2[0]}};
                state <= STOR;
                down_wen <= 1;
                if (token) up_cnt <= up_cnt - 3;
                else up_cnt <= up_cnt + 1;
                
            end
            STOR: begin
                down_wptr <= down_wptr + 1;
                down_wen <= 0;
                if (token) up_cnt <= up_cnt - 4;
                if (valid_in) begin
                    state <= Out0;
                    temp_data <= data_in;
                end
                else state <= IDLE;
            end
        endcase
    end
end


always @(posedge clk) begin
    if (rst) begin
        down_rptr <= 0;
    end
    else begin
        if (ready && valid_out)
            valid_out <= 0;
        else if (valid_temp) begin
            data_out <= {{down_data_out1[3:2],down_data_out0[3:2]},{down_data_out1[1:0],down_data_out0[1:0]}};
            valid_out <= 1;
        end

        if (ready & (down_wptr != down_rptr) & (down_rptr[0] == 0 )) begin
            down_data_out0 <= down_data_o;
            down_rptr <= down_rptr + 1;
            valid_temp <= 0;
        end
        else if (ready & (down_wptr != down_rptr) & (down_rptr[0] == 1)) begin
            down_data_out1 <= down_data_o;
            down_rptr <= down_rptr + 1;
            valid_temp <= 1;
        end
    end
end

always @(posedge clk) begin
    if (rst) down_rptr_token <= 0;
    else down_rptr_token <= down_rptr[2];
end

Memory_32 mem(
    .clk(clk),
    .rst(rst),
    .r_addr(down_rptr),
    .w_addr(down_wptr),
    .w_data(down_wdata),
    .w_en(down_wen),
    .r_data(down_data_o)
    );

endmodule


module Memory_32
#(
	parameter N_ELEMENTS = 8,
	parameter ADDR_WIDTH = 4,
	parameter DATA_WIDTH = 4
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