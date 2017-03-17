# Mapping clk
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

#Mapping LEDs
set_property PACKAGE_PIN U16 [get_ports {ledout[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledout[0]}]

set_property PACKAGE_PIN E19 [get_ports {ledout[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledout[1]}]

set_property PACKAGE_PIN U19 [get_ports {ledout[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledout[2]}]

set_property PACKAGE_PIN V19 [get_ports {ledout[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledout[3]}]

set_property PACKAGE_PIN W18 [get_ports {ledout[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledout[4]}]

set_property PACKAGE_PIN U15 [get_ports {ledout[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledout[5]}]

set_property PACKAGE_PIN U14 [get_ports {ledout[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledout[6]}]

set_property PACKAGE_PIN V14 [get_ports {ledout[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledout[7]}]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {ledout_OBUF[0]} {ledout_OBUF[1]} {ledout_OBUF[2]} {ledout_OBUF[3]} {ledout_OBUF[4]} {ledout_OBUF[5]} {ledout_OBUF[6]} {ledout_OBUF[7]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
