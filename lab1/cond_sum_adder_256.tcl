# Set up the libraries.
set link_library {./nangate.db}
set target_library {./nangate.db}

set design_name VCondSumAdder_256

# Read in a verilog file.
read_file -format verilog {cond_sum_adder_256.v}

# Set the top-level module.
current_design $design_name

# Timing constraints
set_max_delay 0.8 -from {in_*} -to {out_*}

# Set max. fanout and max. capacitance.
set_max_fanout 8 [get_designs $design_name]
set_max_capacitance 0.1 [get_designs $design_name]

# compile
compile -exact_map

