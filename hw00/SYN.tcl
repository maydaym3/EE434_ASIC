# Set up the libraries.
set link_library {./nangate.db}
set target_library {./nangate.db}

read_file -format verilog {AND6.v}

# Timing constraints
set_max_delay 0.3 -from {in_*} -to {out_*}

# Set max. fanout and max. capacitance.
set_max_fanout 8 [get_designs $design_name]

compile -exact_map

