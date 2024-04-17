v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1130 -880 2670 -180 {flags=graph
y1=-0.29870434
y2=2.0946938
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.954048e-07
x2=1.091943e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
a_int"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1120 -1610 2660 -910 {flags=graph
y1=-0.00011966569
y2=0.0001195407
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.954048e-07
x2=1.091943e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


rainbow=1



















}
N 400 -320 400 -300 {
lab=GND}
N 400 -300 400 -280 {
lab=GND}
N 660 -420 700 -420 {
lab=out}
N 40 -860 80 -860 {
lab=d0}
N 40 -760 80 -760 {
lab=d1}
N 40 -660 80 -660 {
lab=d2}
N 40 -560 80 -560 {
lab=d3}
N 340 -860 380 -860 {
lab=d4}
N 340 -760 380 -760 {
lab=d5}
N 340 -660 380 -660 {
lab=d6}
N 340 -560 380 -560 {
lab=d7}
N 400 -460 400 -420 {
lab=a_int}
N 400 -420 420 -420 {
lab=a_int}
C {devices/code.sym} 640 -850 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 850 -840 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {r2r.sym} 250 -350 0 0 {name=x1}
C {devices/gnd.sym} 400 -280 0 0 {name=l1 lab=GND}
C {tt06_analog_load.sym} 510 -400 0 0 {name=x2}
C {devices/gnd.sym} 660 -400 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 700 -420 2 0 {name=p1 sig_type=std_logic lab=out}
C {devices/vsource.sym} 40 -830 0 0 {name=V1 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 20ns 40ns)" savecurrent=false}
C {devices/lab_pin.sym} 80 -860 2 0 {name=p2 sig_type=std_logic lab=d0}
C {devices/gnd.sym} 40 -800 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 40 -730 0 0 {name=V2 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 40ns 80ns)" savecurrent=false}
C {devices/lab_pin.sym} 80 -760 2 0 {name=p3 sig_type=std_logic lab=d1}
C {devices/gnd.sym} 40 -700 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 40 -630 0 0 {name=V3 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 80ns 160ns)" savecurrent=false}
C {devices/lab_pin.sym} 80 -660 2 0 {name=p4 sig_type=std_logic lab=d2}
C {devices/gnd.sym} 40 -600 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 40 -530 0 0 {name=V4 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 160ns 320ns)" savecurrent=false}
C {devices/lab_pin.sym} 80 -560 2 0 {name=p5 sig_type=std_logic lab=d3}
C {devices/gnd.sym} 40 -500 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 340 -830 0 0 {name=V5 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 320ns 640ns)" savecurrent=false}
C {devices/lab_pin.sym} 380 -860 2 0 {name=p6 sig_type=std_logic lab=d4}
C {devices/gnd.sym} 340 -800 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 340 -730 0 0 {name=V6 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 640ns 1280ns)" savecurrent=false}
C {devices/lab_pin.sym} 380 -760 2 0 {name=p7 sig_type=std_logic lab=d5}
C {devices/gnd.sym} 340 -700 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 340 -630 0 0 {name=V7 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 1280ns 2560ns)" savecurrent=false}
C {devices/lab_pin.sym} 380 -660 2 0 {name=p8 sig_type=std_logic lab=d6}
C {devices/gnd.sym} 340 -600 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 340 -530 0 0 {name=V8 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 2560ns 5120ns)" savecurrent=false}
C {devices/lab_pin.sym} 380 -560 2 0 {name=p9 sig_type=std_logic lab=d7}
C {devices/gnd.sym} 340 -500 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 100 -280 0 0 {name=p10 sig_type=std_logic lab=d0}
C {devices/lab_pin.sym} 100 -300 0 0 {name=p11 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 100 -320 0 0 {name=p12 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 100 -340 0 0 {name=p13 sig_type=std_logic lab=d3}
C {devices/lab_pin.sym} 100 -360 0 0 {name=p14 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} 100 -380 0 0 {name=p15 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} 100 -400 0 0 {name=p16 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} 100 -420 0 0 {name=p17 sig_type=std_logic lab=d7}
C {devices/simulator_commands_shown.sym} 830 -710 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* .options filetype=ascii
.options savecurrents
.control
  save all
  tran 0.1n 5.25u uic
  write tb_r2r.raw
.endc
.end
"}
C {devices/lab_pin.sym} 400 -460 2 0 {name=p18 sig_type=std_logic lab=a_int}
