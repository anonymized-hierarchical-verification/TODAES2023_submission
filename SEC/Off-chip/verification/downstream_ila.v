module BSG_DOWNSTREAM_ch(
__ILA_BSG_DOWNSTREAM_ch_grant__,
clk,
core_clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_ch_acc_decode__,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_OUTPUT_FINAL__,
__ILA_BSG_DOWNSTREAM_ch_valid__,
buffer_data_n65,
buffer_data_n69,
buffer_addr0,
buffer_data0,
buffer_wen0,
buffer_addr_n64,
buffer_addr_n68,
core_data_out,
core_valid_out,
io_token_out,
rptr,
wptr,
wptr_t,
full,
io_valid,
io_data,
core_data0,
core_data1,
child_valid
);
input      [3:0] __ILA_BSG_DOWNSTREAM_ch_grant__;
input            clk;
input            core_clk;
input            core_ready;
input            io_data_in;
input            io_valid_in;
input            rst;
input      [1:0] buffer_data_n65;
input      [1:0] buffer_data_n69;
output      [3:0] __ILA_BSG_DOWNSTREAM_ch_acc_decode__;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_OUTPUT_FINAL__;
output            __ILA_BSG_DOWNSTREAM_ch_valid__;
output      [2:0] buffer_addr0;
output      [1:0] buffer_data0;
output            buffer_wen0;
output      [2:0] buffer_addr_n64;
output      [2:0] buffer_addr_n68;
output reg      [3:0] core_data_out;
output reg            core_valid_out;
output reg            io_token_out;
output reg      [3:0] rptr;
output reg      [3:0] wptr;
output reg      [3:0] wptr_t;
output reg            full;
output reg            io_valid;
output reg            io_data;
output reg      [1:0] core_data0;
output reg      [1:0] core_data1;
output reg            child_valid;
wire      [3:0] __ILA_BSG_DOWNSTREAM_ch_acc_decode__;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_OUTPUT_FINAL__;
wire      [3:0] __ILA_BSG_DOWNSTREAM_ch_grant__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire      [2:0] buffer_addr0;
wire      [2:0] buffer_addr_n64;
wire      [2:0] buffer_addr_n68;
wire      [1:0] buffer_data0;
wire      [1:0] buffer_data_n65;
wire      [1:0] buffer_data_n69;
wire            buffer_wen0;
wire            bv_1_0_n4;
wire            bv_1_1_n0;
wire      [3:0] bv_4_1_n29;
wire            clk;
wire            core_clk;
wire            core_ready;
wire            io_data_in;
wire            io_valid_in;
wire            n1;
wire            n10;
wire            n11;
wire            n12;
wire            n13;
wire            n14;
wire            n15;
wire            n16;
wire            n17;
wire            n18;
wire            n19;
wire            n2;
wire            n20;
wire            n21;
wire            n22;
wire            n23;
wire            n24;
wire            n25;
wire            n26;
wire            n27;
wire      [3:0] n28;
wire            n3;
wire      [3:0] n30;
wire            n31;
wire            n32;
wire            n33;
wire            n34;
wire            n35;
wire            n36;
wire            n37;
wire            n38;
wire      [2:0] n39;
wire      [1:0] n40;
wire      [3:0] n41;
wire      [3:0] n42;
wire            n43;
wire      [3:0] n44;
wire      [3:0] n45;
wire            n46;
wire      [3:0] n47;
wire            n48;
wire            n49;
wire            n5;
wire            n50;
wire            n51;
wire            n52;
wire            n53;
wire      [2:0] n54;
wire      [2:0] n55;
wire            n56;
wire            n57;
wire            n58;
wire            n59;
wire            n6;
wire            n60;
wire            n61;
wire            n62;
wire      [2:0] n63;
wire      [1:0] n66;
wire      [2:0] n67;
wire            n7;
wire      [1:0] n70;
wire            n8;
wire            n9;
wire            rst;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign bv_1_1_n0 = 1'h1 ;
assign n1 =  ( io_valid_in ) == ( bv_1_1_n0 )  ;
assign n2 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n3 =  ( n1 ) | ( n2 )  ;
assign bv_1_0_n4 = 1'h0 ;
assign n5 =  ( full ) == ( bv_1_0_n4 )  ;
assign n6 =  ( n3 ) & (n5 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ = n6 ;
assign __ILA_BSG_DOWNSTREAM_ch_acc_decode__[0] = __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ ;
assign n7 =  ( core_ready ) == ( bv_1_1_n0 )  ;
assign n8 =  ( wptr_t ) == ( rptr )  ;
assign n9 = ~ ( n8 )  ;
assign n10 =  ( n7 ) & (n9 )  ;
assign n11 = rptr[0:0] ;
assign n12 =  ( n11 ) == ( bv_1_0_n4 )  ;
assign n13 =  ( n10 ) & (n12 )  ;
assign n14 =  ( core_clk ) == ( bv_1_0_n4 )  ;
assign n15 =  ( n13 ) & (n14 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ = n15 ;
assign __ILA_BSG_DOWNSTREAM_ch_acc_decode__[1] = __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ ;
assign n16 =  ( core_ready ) == ( bv_1_1_n0 )  ;
assign n17 =  ( wptr_t ) == ( rptr )  ;
assign n18 = ~ ( n17 )  ;
assign n19 =  ( n16 ) & (n18 )  ;
assign n20 = rptr[0:0] ;
assign n21 =  ( n20 ) == ( bv_1_1_n0 )  ;
assign n22 =  ( n19 ) & (n21 )  ;
assign n23 =  ( core_clk ) == ( bv_1_0_n4 )  ;
assign n24 =  ( n22 ) & (n23 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ = n24 ;
assign __ILA_BSG_DOWNSTREAM_ch_acc_decode__[2] = __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ ;
assign n25 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign n26 =  ( core_clk ) == ( bv_1_0_n4 )  ;
assign n27 =  ( n25 ) & (n26 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_OUTPUT_FINAL__ = n27 ;
assign __ILA_BSG_DOWNSTREAM_ch_acc_decode__[3] = __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_OUTPUT_FINAL__ ;
assign n28 =  { ( core_data1 ) , ( core_data0 ) }  ;
assign bv_4_1_n29 = 4'h1 ;
assign n30 =  ( rptr ) + ( bv_4_1_n29 )  ;
assign n31 = n30[2:2] ;
assign n32 = ~ ( n6 )  ;
assign n33 =  ( 1'b1 ) & (n32 )  ;
assign n34 =  ( 1'b1 ) & (n6 )  ;
assign n35 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n36 = ~ ( n35 )  ;
assign n37 =  ( n34 ) & (n36 )  ;
assign n38 =  ( n34 ) & (n35 )  ;
assign n39 = wptr[2:0] ;
assign n40 =  { ( io_data_in ) , ( io_data ) }  ;
assign buffer_addr0 = n38 ? (n39) : (0) ;
assign buffer_data0 = n38 ? (n40) : ('d0) ;
assign buffer_wen0 = (n38) ? ( 1'b1 ) : (1'b0) ;
assign n41 =  ( rptr ) + ( bv_4_1_n29 )  ;
assign n42 =  ( rptr ) + ( bv_4_1_n29 )  ;
assign n43 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n44 =  ( wptr ) + ( bv_4_1_n29 )  ;
assign n45 =  ( n43 ) ? ( n44 ) : ( wptr ) ;
assign n46 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n47 =  ( n46 ) ? ( n44 ) : ( wptr ) ;
assign n48 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n49 = n44[3:3] ;
assign n50 = rptr[3:3] ;
assign n51 =  ( n49 ) == ( n50 )  ;
assign n52 = ~ ( n51 )  ;
assign n53 =  ( n48 ) & (n52 )  ;
assign n54 = n44[2:0] ;
assign n55 = rptr[2:0] ;
assign n56 =  ( n54 ) == ( n55 )  ;
assign n57 =  ( n53 ) & (n56 )  ;
assign n58 =  ( n57 ) ? ( bv_1_1_n0 ) : ( bv_1_0_n4 ) ;
assign n59 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n60 =  ( n59 ) ? ( bv_1_0_n4 ) : ( io_valid_in ) ;
assign n61 =  ( io_valid ) == ( bv_1_0_n4 )  ;
assign n62 =  ( n61 ) ? ( io_data_in ) : ( io_data ) ;
assign n63 = rptr[2:0] ;
assign buffer_addr_n64 = n63 ;
assign n66 = buffer_data_n65 ;
assign n67 = rptr[2:0] ;
assign buffer_addr_n68 = n67 ;
assign n70 = buffer_data_n69 ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_BSG_DOWNSTREAM_ch_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_OUTPUT_FINAL__ && __ILA_BSG_DOWNSTREAM_ch_grant__[3] ) begin
           core_data_out <= n28;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_OUTPUT_FINAL__ && __ILA_BSG_DOWNSTREAM_ch_grant__[3] ) begin
           core_valid_out <= bv_1_1_n0;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           io_token_out <= n31;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ && __ILA_BSG_DOWNSTREAM_ch_grant__[1] ) begin
           rptr <= n41;
       end else if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           rptr <= n42;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           wptr <= n45;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           wptr_t <= n47;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           full <= n58;
       end else if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ && __ILA_BSG_DOWNSTREAM_ch_grant__[1] ) begin
           full <= bv_1_0_n4;
       end else if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           full <= bv_1_0_n4;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           io_valid <= n60;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           io_data <= n62;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ && __ILA_BSG_DOWNSTREAM_ch_grant__[1] ) begin
           core_data0 <= n66;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           core_data1 <= n70;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           child_valid <= bv_1_1_n0;
       end else if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_OUTPUT_FINAL__ && __ILA_BSG_DOWNSTREAM_ch_grant__[3] ) begin
           child_valid <= bv_1_0_n4;
       end
   end
end
endmodule
