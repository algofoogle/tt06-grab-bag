v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 800 -420 1600 -20 {flags=graph
y1=-0.0017
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
y
vdd
out"
color="4 12 7 8"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 800 -840 1600 -440 {flags=graph
y1=-3.7e-05
y2=0.0017
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
N 360 -60 360 -40 {
lab=GND}
N 360 -220 360 -200 {
lab=VSS}
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
N 460 -260 560 -260 {
lab=Y}
N 540 -260 540 -220 {
lab=Y}
N 540 -160 540 -140 {
lab=VSS}
N 640 -160 640 -140 {
lab=VSS}
N 620 -260 640 -260 {
lab=OUT}
N 640 -260 640 -220 {
lab=OUT}
N 640 -260 740 -260 {
lab=OUT}
N 360 -400 360 -380 {
lab=VDD}
N 360 -320 360 -300 {
lab=#net1}
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
C {devices/lab_pin.sym} 360 -400 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -200 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -140 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 360 -550 0 0 {name=Vvdd value="dc 1.8V   pwl(
+    0ns  0V
+    2ns  0V
+   25ns  1.8V
+  175ns  1.8V
+  198ns  0V   )" savecurrent=false}
C {devices/gnd.sym} 360 -460 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 360 -600 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 60 -550 0 0 {name=Va value="pulse(
+ 0V 1.8V 0ns
+ 0.5ns 0.5ns 20ns 40ns )" savecurrent=false}
C {devices/gnd.sym} 60 -500 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 60 -600 0 1 {name=p5 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 280 -260 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 460 -260 3 1 {name=p7 sig_type=std_logic lab=Y}
C {devices/simulator_commands_shown.sym} 20 -290 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.options savecurrents
.control
  save all
  tran 10ps 200ns
  write tb_inverter.raw
.endc
"}
C {devices/res.sym} 590 -260 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 540 -190 0 0 {name=C1
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 540 -140 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 640 -190 0 0 {name=C2
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 640 -140 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -260 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/ammeter.sym} 360 -350 0 0 {name=Vmeas}
