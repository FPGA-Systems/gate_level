


set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -hierarchical *]



set_property PACKAGE_PIN H5 [get_ports y1]
set_property PACKAGE_PIN J5 [get_ports y2]
set_property PACKAGE_PIN T9 [get_ports y3]
set_property PACKAGE_PIN T10 [get_ports y4]
set_property PACKAGE_PIN C10 [get_ports x2]
set_property PACKAGE_PIN A8 [get_ports en]
set_property IOSTANDARD LVCMOS33 [get_ports y1]
set_property IOSTANDARD LVCMOS33 [get_ports y2]
set_property IOSTANDARD LVCMOS33 [get_ports y3]
set_property IOSTANDARD LVCMOS33 [get_ports y4]
set_property IOSTANDARD LVCMOS33 [get_ports en]

set_property PACKAGE_PIN C11 [get_ports x1]
set_property IOSTANDARD LVCMOS33 [get_ports x1]
set_property IOSTANDARD LVCMOS33 [get_ports x2]

set_property PACKAGE_PIN E3 [get_ports isys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports isys_clk]
connect_debug_port u_ila_0/probe1 [get_nets [list onq]]
connect_debug_port u_ila_0/probe2 [get_nets [list oq]]

set_property PACKAGE_PIN G6 [get_ports q0]
set_property PACKAGE_PIN J3 [get_ports q2]
set_property PACKAGE_PIN G3 [get_ports q1]
set_property PACKAGE_PIN K1 [get_ports q3]
set_property IOSTANDARD LVCMOS33 [get_ports q0]
set_property IOSTANDARD LVCMOS33 [get_ports q1]
set_property IOSTANDARD LVCMOS33 [get_ports q2]
set_property IOSTANDARD LVCMOS33 [get_ports q3]
