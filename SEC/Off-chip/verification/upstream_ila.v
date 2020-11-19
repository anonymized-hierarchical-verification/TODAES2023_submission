module BSG_UPSTREAM(
__ILA_BSG_UPSTREAM_grant__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_acc_decode__,
__ILA_BSG_UPSTREAM_decode_of_DATA_IN__,
__ILA_BSG_UPSTREAM_decode_of_Output0_n__,
__ILA_BSG_UPSTREAM_decode_of_Output0_p__,
__ILA_BSG_UPSTREAM_decode_of_Output1_n__,
__ILA_BSG_UPSTREAM_decode_of_Output1_p__,
__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__,
__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__,
__ILA_BSG_UPSTREAM_valid__,
io_valid_out,
data_cycle_0,
data_cycle_1,
child_valid,
sent_cnt,
finish_cnt,
io_data_out_ch0,
io_data_out_ch1,
data_temp,
commit,
counter
);
input      [6:0] __ILA_BSG_UPSTREAM_grant__;
input            clk;
input            core_clk;
input      [7:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output      [6:0] __ILA_BSG_UPSTREAM_acc_decode__;
output            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
output            __ILA_BSG_UPSTREAM_decode_of_Output0_n__;
output            __ILA_BSG_UPSTREAM_decode_of_Output0_p__;
output            __ILA_BSG_UPSTREAM_decode_of_Output1_n__;
output            __ILA_BSG_UPSTREAM_decode_of_Output1_p__;
output            __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__;
output            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
output            __ILA_BSG_UPSTREAM_valid__;
output reg            io_valid_out;
output reg      [3:0] data_cycle_0;
output reg      [3:0] data_cycle_1;
output reg            child_valid;
output reg      [3:0] sent_cnt;
output reg      [3:0] finish_cnt;
output reg            io_data_out_ch0;
output reg            io_data_out_ch1;
output reg     [63:0] data_temp;
output reg            commit;
output reg            counter;
wire      [6:0] __ILA_BSG_UPSTREAM_acc_decode__;
wire            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
wire            __ILA_BSG_UPSTREAM_decode_of_Output0_n__;
wire            __ILA_BSG_UPSTREAM_decode_of_Output0_p__;
wire            __ILA_BSG_UPSTREAM_decode_of_Output1_n__;
wire            __ILA_BSG_UPSTREAM_decode_of_Output1_p__;
wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__;
wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
wire      [6:0] __ILA_BSG_UPSTREAM_grant__;
wire            __ILA_BSG_UPSTREAM_valid__;
wire            bv_1_0_n2;
wire            bv_1_1_n0;
wire      [3:0] bv_4_1_n54;
wire      [3:0] bv_4_4_n57;
wire      [3:0] bv_4_8_n22;
wire            clk;
wire            core_clk;
wire      [7:0] core_data_in;
wire            core_valid_in;
wire            io_token;
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
wire            n20;
wire      [3:0] n21;
wire            n23;
wire            n24;
wire            n25;
wire            n26;
wire            n27;
wire            n28;
wire            n29;
wire            n3;
wire            n30;
wire            n31;
wire            n32;
wire            n33;
wire            n34;
wire            n35;
wire            n36;
wire      [3:0] n37;
wire            n38;
wire            n39;
wire            n4;
wire            n40;
wire            n41;
wire            n42;
wire            n43;
wire            n44;
wire            n45;
wire            n46;
wire            n47;
wire            n48;
wire            n49;
wire            n5;
wire      [3:0] n50;
wire      [3:0] n51;
wire      [3:0] n52;
wire      [3:0] n53;
wire      [3:0] n55;
wire      [3:0] n56;
wire      [3:0] n58;
wire      [3:0] n59;
wire            n6;
wire            n60;
wire            n61;
wire            n62;
wire            n63;
wire            n64;
wire            n65;
wire            n66;
wire            n67;
wire            n7;
wire            n8;
wire            n9;
wire            rst;
assign __ILA_BSG_UPSTREAM_valid__ = 1'b1 ;
assign bv_1_1_n0 = 1'h1 ;
assign n1 =  ( io_token ) == ( bv_1_1_n0 )  ;
assign bv_1_0_n2 = 1'h0 ;
assign n3 =  ( core_clk ) == ( bv_1_0_n2 )  ;
assign n4 =  ( n1 ) & (n3 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ = n4 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[0] = __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ ;
assign n5 =  ( io_token ) == ( bv_1_1_n0 )  ;
assign n6 =  ( core_valid_in ) == ( bv_1_1_n0 )  ;
assign n7 =  ( core_clk ) == ( bv_1_0_n2 )  ;
assign n8 =  ( n6 ) & (n7 )  ;
assign n9 =  ( child_valid ) == ( bv_1_0_n2 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign n11 =  ( n5 ) & (n10 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ = n11 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[1] = __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ ;
assign n12 =  ( io_token ) == ( bv_1_0_n2 )  ;
assign n13 =  ( core_valid_in ) == ( bv_1_1_n0 )  ;
assign n14 =  ( core_clk ) == ( bv_1_0_n2 )  ;
assign n15 =  ( n13 ) & (n14 )  ;
assign n16 =  ( child_valid ) == ( bv_1_0_n2 )  ;
assign n17 =  ( n15 ) & (n16 )  ;
assign n18 =  ( n12 ) & (n17 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ = n18 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[2] = __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ ;
assign n19 = sent_cnt[0:0] ;
assign n20 =  ( n19 ) == ( bv_1_0_n2 )  ;
assign n21 =  ( sent_cnt ) - ( finish_cnt )  ;
assign bv_4_8_n22 = 4'h8 ;
assign n23 =  ( n21 ) < ( bv_4_8_n22 )  ;
assign n24 =  ( n20 ) & (n23 )  ;
assign n25 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign n26 =  ( n24 ) & (n25 )  ;
assign n27 =  ( counter ) == ( bv_1_0_n2 )  ;
assign n28 =  ( n26 ) & (n27 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_Output0_p__ = n28 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[3] = __ILA_BSG_UPSTREAM_decode_of_Output0_p__ ;
assign n29 = sent_cnt[0:0] ;
assign n30 =  ( n29 ) == ( bv_1_1_n0 )  ;
assign n31 =  ( commit ) == ( bv_1_1_n0 )  ;
assign n32 =  ( n30 ) & (n31 )  ;
assign n33 =  ( counter ) == ( bv_1_1_n0 )  ;
assign n34 =  ( n32 ) & (n33 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_Output0_n__ = n34 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[4] = __ILA_BSG_UPSTREAM_decode_of_Output0_n__ ;
assign n35 = sent_cnt[0:0] ;
assign n36 =  ( n35 ) == ( bv_1_1_n0 )  ;
assign n37 =  ( sent_cnt ) - ( finish_cnt )  ;
assign n38 =  ( n37 ) < ( bv_4_8_n22 )  ;
assign n39 =  ( n36 ) & (n38 )  ;
assign n40 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign n41 =  ( n39 ) & (n40 )  ;
assign n42 =  ( counter ) == ( bv_1_0_n2 )  ;
assign n43 =  ( n41 ) & (n42 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_Output1_p__ = n43 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[5] = __ILA_BSG_UPSTREAM_decode_of_Output1_p__ ;
assign n44 = sent_cnt[0:0] ;
assign n45 =  ( n44 ) == ( bv_1_0_n2 )  ;
assign n46 =  ( commit ) == ( bv_1_1_n0 )  ;
assign n47 =  ( n45 ) & (n46 )  ;
assign n48 =  ( counter ) == ( bv_1_1_n0 )  ;
assign n49 =  ( n47 ) & (n48 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_Output1_n__ = n49 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[6] = __ILA_BSG_UPSTREAM_decode_of_Output1_n__ ;
assign n50 = core_data_in[3:0] ;
assign n51 = core_data_in[3:0] ;
assign n52 = core_data_in[7:4] ;
assign n53 = core_data_in[7:4] ;
assign bv_4_1_n54 = 4'h1 ;
assign n55 =  ( sent_cnt ) + ( bv_4_1_n54 )  ;
assign n56 =  ( sent_cnt ) + ( bv_4_1_n54 )  ;
assign bv_4_4_n57 = 4'h4 ;
assign n58 =  ( finish_cnt ) + ( bv_4_4_n57 )  ;
assign n59 =  ( finish_cnt ) + ( bv_4_4_n57 )  ;
assign n60 = data_cycle_0[0:0] ;
assign n61 = data_temp[1:1] ;
assign n62 = data_cycle_1[0:0] ;
assign n63 = data_temp[1:1] ;
assign n64 = data_cycle_0[2:2] ;
assign n65 = data_temp[3:3] ;
assign n66 = data_cycle_1[2:2] ;
assign n67 = data_temp[3:3] ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_BSG_UPSTREAM_valid__) begin
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           io_valid_out <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_grant__[4] ) begin
           io_valid_out <= bv_1_0_n2;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           io_valid_out <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           io_valid_out <= bv_1_0_n2;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           data_cycle_0 <= n50;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ && __ILA_BSG_UPSTREAM_grant__[2] ) begin
           data_cycle_0 <= n51;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           data_cycle_1 <= n52;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ && __ILA_BSG_UPSTREAM_grant__[2] ) begin
           data_cycle_1 <= n53;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           child_valid <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ && __ILA_BSG_UPSTREAM_grant__[2] ) begin
           child_valid <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           child_valid <= bv_1_0_n2;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           sent_cnt <= n55;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           sent_cnt <= n56;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ && __ILA_BSG_UPSTREAM_grant__[0] ) begin
           finish_cnt <= n58;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           finish_cnt <= n59;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           io_data_out_ch0 <= n60;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_grant__[4] ) begin
           io_data_out_ch0 <= n61;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           io_data_out_ch0 <= n62;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           io_data_out_ch0 <= n63;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           io_data_out_ch1 <= n64;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_grant__[4] ) begin
           io_data_out_ch1 <= n65;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           io_data_out_ch1 <= n66;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           io_data_out_ch1 <= n67;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           data_temp <= data_cycle_0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           data_temp <= data_cycle_1;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           commit <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           commit <= bv_1_1_n0;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           counter <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_grant__[4] ) begin
           counter <= bv_1_0_n2;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           counter <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           counter <= bv_1_0_n2;
       end
   end
end
endmodule
