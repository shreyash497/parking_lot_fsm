## =========================
## CLOCK (100 MHz)
## =========================
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk -waveform {0 5} [get_ports clk]


## =========================
## PUSH BUTTONS
## =========================
## btnU ? Entry
set_property PACKAGE_PIN W19 [get_ports btnU]
set_property IOSTANDARD LVCMOS33 [get_ports btnU]

## btnD ? Exit
set_property PACKAGE_PIN T17 [get_ports btnD]
set_property IOSTANDARD LVCMOS33 [get_ports btnD]

## btnC ? Reset
set_property PACKAGE_PIN U18 [get_ports btnC]
set_property IOSTANDARD LVCMOS33 [get_ports btnC]


## =========================
## 7-SEGMENT DISPLAY (COMMON ANODE)
## =========================

## Segment pins (a-g)
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]   # a
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]   # b
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]   # c
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]   # d
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]   # e
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]   # f
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]   # g

set_property IOSTANDARD LVCMOS33 [get_ports seg[*]]


## Digit enable (ANODES)
set_property PACKAGE_PIN U2 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports an[*]]