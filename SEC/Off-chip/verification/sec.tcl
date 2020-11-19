analyze -sva  \
    off-chip-specification.v \
    off-chip-ila.v \
    upstream_ila.v \
    downstream_ila.v \
    sec-wrapper.v


elaborate -top sec
clock clk
reset -expression {rst} {:global_formal_reset} -non_resettable_regs {0};

assert {ila_data == spec_data}