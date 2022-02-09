create_clock -period 2.600 -name clk -waveform {0.000 1.300} [get_ports -filter { NAME =~  "*" && DIRECTION == "IN" } -of_objects [get_nets -hierarchical -filter { NAME =~  "*clk*" }]]
