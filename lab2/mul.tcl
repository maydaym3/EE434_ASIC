# Set up the libraries.
set link_library {./nangate.db}
set target_library {./nangate.db}

set design_name cf_fp_mul_p_3_4

# Read in a verilog file.
read_file -format verilog {mul.v}

# Set the top-level module.
current_design $design_name

# Timing constraints
create_clock -period 0.9 -name my_clk [get_ports clock_c]

# Set max. fanout and max. capacitance.
set_max_fanout 8 [get_designs $design_name]
set_max_capacitance 0.1 [get_designs $design_name]

# compile
compile -exact_map

