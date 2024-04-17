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
x1=-1.7601843e-07
x2=4.9826409e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
a_int
a_int_parax
out_parax"
color="4 5 6 8"
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
x1=-1.7601843e-07
x2=4.9826409e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


rainbow=1





















color="8 11"
node="i(@b.x3.x3.brend[i])
i(@b.x1.xr1.brend[i])"}
N 400 -980 400 -960 {
lab=GND}
N 400 -960 400 -940 {
lab=GND}
N 660 -1080 700 -1080 {
lab=out}
N 40 -1520 80 -1520 {
lab=d0}
N 40 -1420 80 -1420 {
lab=d1}
N 40 -1320 80 -1320 {
lab=d2}
N 40 -1220 80 -1220 {
lab=d3}
N 340 -1520 380 -1520 {
lab=d4}
N 340 -1420 380 -1420 {
lab=d5}
N 340 -1320 380 -1320 {
lab=d6}
N 340 -1220 380 -1220 {
lab=d7}
N 400 -1120 400 -1080 {
lab=a_int}
N 400 -1080 420 -1080 {
lab=a_int}
N 400 -740 400 -720 {
lab=GND}
N 400 -720 400 -700 {
lab=GND}
N 660 -840 700 -840 {
lab=out_parax}
N 400 -880 400 -840 {
lab=a_int_parax}
N 400 -840 420 -840 {
lab=a_int_parax}
C {devices/code.sym} 640 -1510 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 850 -1500 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {r2r.sym} 250 -1010 0 0 {name=x1}
C {devices/gnd.sym} 400 -940 0 0 {name=l1 lab=GND}
C {tt06_analog_load.sym} 510 -1060 0 0 {name=x2}
C {devices/gnd.sym} 660 -1060 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 700 -1080 2 0 {name=p1 sig_type=std_logic lab=out}
C {devices/vsource.sym} 40 -1490 0 0 {name=V1 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 20ns 40ns)" savecurrent=false}
C {devices/lab_pin.sym} 80 -1520 2 0 {name=p2 sig_type=std_logic lab=d0}
C {devices/gnd.sym} 40 -1460 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 40 -1390 0 0 {name=V2 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 40ns 80ns)" savecurrent=false}
C {devices/lab_pin.sym} 80 -1420 2 0 {name=p3 sig_type=std_logic lab=d1}
C {devices/gnd.sym} 40 -1360 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 40 -1290 0 0 {name=V3 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 80ns 160ns)" savecurrent=false}
C {devices/lab_pin.sym} 80 -1320 2 0 {name=p4 sig_type=std_logic lab=d2}
C {devices/gnd.sym} 40 -1260 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 40 -1190 0 0 {name=V4 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 160ns 320ns)" savecurrent=false}
C {devices/lab_pin.sym} 80 -1220 2 0 {name=p5 sig_type=std_logic lab=d3}
C {devices/gnd.sym} 40 -1160 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 340 -1490 0 0 {name=V5 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 320ns 640ns)" savecurrent=false}
C {devices/lab_pin.sym} 380 -1520 2 0 {name=p6 sig_type=std_logic lab=d4}
C {devices/gnd.sym} 340 -1460 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 340 -1390 0 0 {name=V6 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 640ns 1280ns)" savecurrent=false}
C {devices/lab_pin.sym} 380 -1420 2 0 {name=p7 sig_type=std_logic lab=d5}
C {devices/gnd.sym} 340 -1360 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 340 -1290 0 0 {name=V7 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 1280ns 2560ns)" savecurrent=false}
C {devices/lab_pin.sym} 380 -1320 2 0 {name=p8 sig_type=std_logic lab=d6}
C {devices/gnd.sym} 340 -1260 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 340 -1190 0 0 {name=V8 value="pulse(0V 1.8V 0ns 0.5ns 0.5ns 2560ns 5120ns)" savecurrent=false}
C {devices/lab_pin.sym} 380 -1220 2 0 {name=p9 sig_type=std_logic lab=d7}
C {devices/gnd.sym} 340 -1160 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 100 -940 0 0 {name=p10 sig_type=std_logic lab=d0}
C {devices/lab_pin.sym} 100 -960 0 0 {name=p11 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 100 -980 0 0 {name=p12 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 100 -1000 0 0 {name=p13 sig_type=std_logic lab=d3}
C {devices/lab_pin.sym} 100 -1020 0 0 {name=p14 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} 100 -1040 0 0 {name=p15 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} 100 -1060 0 0 {name=p16 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} 100 -1080 0 0 {name=p17 sig_type=std_logic lab=d7}
C {devices/simulator_commands_shown.sym} 830 -1370 0 0 {name=COMMANDS
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
C {devices/lab_pin.sym} 400 -1120 2 0 {name=p18 sig_type=std_logic lab=a_int}
C {r2r.sym} 250 -770 0 0 {name=x3
schematic=r2r_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/r2r.sim.spice])"
tclcommand="textwindow          [file normalize ../mag/r2r.sim.spice]"
}
C {devices/gnd.sym} 400 -700 0 0 {name=l11 lab=GND}
C {tt06_analog_load.sym} 510 -820 0 0 {name=x4}
C {devices/gnd.sym} 660 -820 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 700 -840 2 0 {name=p19 sig_type=std_logic lab=out_parax}
C {devices/lab_pin.sym} 100 -700 0 0 {name=p20 sig_type=std_logic lab=d0}
C {devices/lab_pin.sym} 100 -720 0 0 {name=p21 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 100 -740 0 0 {name=p22 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 100 -760 0 0 {name=p23 sig_type=std_logic lab=d3}
C {devices/lab_pin.sym} 100 -780 0 0 {name=p24 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} 100 -800 0 0 {name=p25 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} 100 -820 0 0 {name=p26 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} 100 -840 0 0 {name=p27 sig_type=std_logic lab=d7}
C {devices/lab_pin.sym} 400 -880 2 0 {name=p28 sig_type=std_logic lab=a_int_parax}
