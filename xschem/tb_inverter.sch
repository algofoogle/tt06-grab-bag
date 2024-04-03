v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 520 -490 1320 -90 {flags=graph
y1=-0.31
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
y
vdd"
color="4 12 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N 360 -60 360 -40 {
lab=GND}
N 360 -220 360 -200 {
lab=VSS}
N 360 -320 360 -300 {
lab=VDD}
N 360 -140 360 -120 {
lab=VSS}
N 360 -520 360 -460 {
lab=GND}
N 360 -600 360 -580 {
lab=VDD}
N 60 -520 60 -500 {
lab=GND}
N 60 -600 60 -580 {
lab=A}
N 280 -260 300 -260 {
lab=A}
N 440 -260 460 -260 {
lab=Y}
C {devices/code.sym} 10 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 630 -30 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {inverter.sym} 360 -260 0 0 {name=x1}
C {devices/vsource.sym} 360 -90 0 0 {name=Vvss value=0 savecurrent=false}
C {devices/gnd.sym} 360 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 360 -320 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -200 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -140 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 360 -550 0 0 {name=Vvdd value="dc 1.8V   pwl(
+    0ns 0V
+    2ns 0V
+   25ns 1.8V
+   75ns 1.8V
+   98ns 0V   )" savecurrent=false}
C {devices/gnd.sym} 360 -460 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 360 -600 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 60 -550 0 0 {name=Va value="pulse(0V 1.8V 0ns 0.2ns 0.2ns 10ns 20ns)" savecurrent=false}
C {devices/gnd.sym} 60 -500 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 60 -600 0 1 {name=p5 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 280 -260 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 460 -260 0 1 {name=p7 sig_type=std_logic lab=Y}
C {devices/simulator_commands_shown.sym} 20 -290 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
  tran 10ps 100ns
  write tb_inverter.raw
.endc
"}
