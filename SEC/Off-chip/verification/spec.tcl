analyze -sva  \
    off-chip-specification.v

elaborate -top spec
clock clk
reset rst
