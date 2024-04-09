v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 860 -420 1660 -20 {flags=graph
y1=-0.0017
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.9397438e-08
x2=7.7604958e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdd
a
y
out

out_parax"
color="7 4 12 8 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
digital=0
rainbow=0
linewidth_mult=0.1}
B 2 860 -840 1660 -440 {flags=graph
y1=-2e-05
y2=0.0017
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.9397438e-08
x2=7.7604958e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vmeas)
\\"i(va)*10; i(va) 10 *\\"
i(vmeas1)"
color="10 4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
P 4 5 500 -550 720 -550 720 -360 500 -360 500 -550 {dash=3}
P 4 5 500 -270 720 -270 720 -80 500 -80 500 -270 {dash=3}
T {TT_MODELS is set to use
'tt_mm' (for Monte Carlo)
instead of just 'tt'.
The 'repeat 5' above
makes use of this.} 130 -120 0 0 0.3 0.3 {}
T {Model of Tiny Tapeout
analog pin parasitics
(expected worst case).} 500 -620 0 0 0.3 0.3 {}
N 520 -760 520 -740 {
lab=GND}
N 360 -460 360 -440 {
lab=VSS}
N 520 -840 520 -820 {
lab=VSS}
N 360 -760 360 -700 {
lab=GND}
N 360 -840 360 -820 {
lab=VDD}
N 60 -760 60 -740 {
lab=GND}
N 60 -840 60 -820 {
lab=A}
N 280 -500 300 -500 {
lab=A}
N 440 -500 460 -500 {
lab=Y}
N 460 -500 560 -500 {
lab=Y}
N 540 -500 540 -460 {
lab=Y}
N 540 -400 540 -380 {
lab=VSS}
N 640 -400 640 -380 {
lab=VSS}
N 620 -500 640 -500 {
lab=OUT}
N 640 -500 640 -460 {
lab=OUT}
N 640 -500 740 -500 {
lab=OUT}
N 360 -640 360 -620 {
lab=VDD}
N 360 -560 360 -540 {
lab=#net1}
N 360 -180 360 -160 {
lab=VSS}
N 280 -220 300 -220 {
lab=A}
N 440 -220 460 -220 {
lab=Y_parax}
N 460 -220 560 -220 {
lab=Y_parax}
N 540 -220 540 -180 {
lab=Y_parax}
N 540 -120 540 -100 {
lab=VSS}
N 640 -120 640 -100 {
lab=VSS}
N 620 -220 640 -220 {
lab=OUT_parax}
N 640 -220 640 -180 {
lab=OUT_parax}
N 640 -220 740 -220 {
lab=OUT_parax}
N 360 -360 360 -340 {
lab=VDD}
N 360 -280 360 -260 {
lab=#net2}
C {devices/code.sym} 10 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm

"
spice_ignore=false}
C {devices/launcher.sym} 630 -30 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {inverter.sym} 360 -500 0 0 {name=x1}
C {devices/vsource.sym} 520 -790 0 0 {name=Vvss value=0 savecurrent=false}
C {devices/gnd.sym} 520 -740 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 360 -640 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -440 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -840 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 360 -790 0 0 {name=Vvdd value="dc 1.8V   pwl(
+    0ns  0V
+    2ns  0V
+   25ns  1.8V
+  175ns  1.8V
+  198ns  0V   )" savecurrent=false}
C {devices/gnd.sym} 360 -700 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 360 -840 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 60 -790 0 0 {name=Va value="pulse(
+ 0V 1.8V 0ns
+ 0.5ns 0.5ns 20ns 40ns )" savecurrent=false}
C {devices/gnd.sym} 60 -740 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 60 -840 0 1 {name=p5 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 280 -500 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 460 -500 3 1 {name=p7 sig_type=std_logic lab=Y}
C {devices/simulator_commands_shown.sym} 20 -640 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.options savecurrents
.control
  repeat 5
    save all
    tran 10ps 200ns
    write tb_inverter.raw
    set appendwrite
    reset
  end
.endc
"}
C {devices/res.sym} 590 -500 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 540 -430 0 0 {name=C1
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 540 -380 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 640 -430 0 0 {name=C2
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 640 -380 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -500 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/ammeter.sym} 360 -590 0 0 {name=Vmeas}
C {inverter.sym} 360 -220 0 0 {name=x2
schematic=inverter_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/inverter.sim.spice])"
tclcommand="textwindow [file normalize ../mag/inverter.sim.spice]"
}
C {devices/lab_pin.sym} 360 -360 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -160 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -220 0 0 {name=p13 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 460 -220 3 1 {name=p14 sig_type=std_logic lab=Y_parax}
C {devices/res.sym} 590 -220 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 540 -150 0 0 {name=C3
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 540 -100 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 640 -150 0 0 {name=C4
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 640 -100 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -220 0 1 {name=p17 sig_type=std_logic lab=OUT_parax}
C {devices/ammeter.sym} 360 -310 0 0 {name=Vmeas1}
