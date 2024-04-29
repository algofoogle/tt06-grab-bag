v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1490 -880 3030 -180 {flags=graph
y1=-0.29870434
y2=2.0946938
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3623848e-06
x2=8.0213756e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
a_int
a_int_parax
out_parax
b_int
c_int"
color="4 5 6 8 10 12"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1490 -1610 3030 -910 {flags=graph
y1=-0.00011966569
y2=0.0001195407
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3623848e-06
x2=8.0213756e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


rainbow=1





















color="8 11 7 7 7 7"
node="i(@b.x3.x3.brend[i])
i(@b.x1.xr1.brend[i])
i(@r1[i])
i(@r2[i])
i(@r3[i])
i(@r4[i])"}
N 80 -900 80 -880 {
lab=GND}
N 80 -880 80 -860 {
lab=GND}
N 1060 -1000 1100 -1000 {
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
N 80 -1040 80 -1000 {
lab=a_int}
N 400 -660 400 -640 {
lab=GND}
N 400 -640 400 -620 {
lab=GND}
N 780 -760 820 -760 {
lab=out_parax}
N 400 -800 400 -760 {
lab=a_int_parax}
N 400 -760 420 -760 {
lab=a_int_parax}
N 420 -760 540 -760 {
lab=a_int_parax}
N 780 -740 780 -700 {
lab=GND}
N 730 -460 730 -430 {
lab=GND}
N 730 -560 730 -520 {
lab=VCC}
N 440 -1080 440 -1030 {
lab=VCC}
N 440 -970 440 -940 {
lab=#net1}
N 440 -880 440 -860 {
lab=GND}
N 440 -1000 540 -1000 {
lab=#net1}
N 540 -1000 540 -970 {
lab=#net1}
N 440 -970 540 -970 {
lab=#net1}
N 440 -940 620 -940 {
lab=#net1}
N 620 -1000 620 -940 {
lab=#net1}
N 620 -1000 820 -1000 {
lab=#net1}
N 80 -1000 140 -1000 {
lab=a_int}
N 140 -1000 140 -920 {
lab=a_int}
N 140 -920 220 -920 {
lab=a_int}
N 220 -1020 220 -980 {
lab=b_int}
N 220 -1120 220 -1080 {
lab=VCC}
N 220 -1000 400 -1000 {
lab=b_int}
N 1180 -880 1180 -860 {
lab=GND}
N 1100 -1000 1180 -1000 {
lab=out}
N 1180 -1000 1180 -940 {
lab=out}
N 310 -1040 310 -1000 {
lab=b_int}
C {devices/code.sym} 640 -1510 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 840 -1500 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {r2r.sym} -70 -930 0 0 {name=x1}
C {devices/gnd.sym} 80 -860 0 0 {name=l1 lab=GND}
C {tt06_analog_load.sym} 910 -980 0 0 {name=x2}
C {devices/gnd.sym} 1060 -980 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1100 -1000 2 0 {name=p1 sig_type=std_logic lab=out}
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
C {devices/lab_pin.sym} -220 -860 0 0 {name=p10 sig_type=std_logic lab=d0}
C {devices/lab_pin.sym} -220 -880 0 0 {name=p11 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} -220 -900 0 0 {name=p12 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} -220 -920 0 0 {name=p13 sig_type=std_logic lab=d3}
C {devices/lab_pin.sym} -220 -940 0 0 {name=p14 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} -220 -960 0 0 {name=p15 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} -220 -980 0 0 {name=p16 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} -220 -1000 0 0 {name=p17 sig_type=std_logic lab=d7}
C {devices/simulator_commands_shown.sym} 830 -1370 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* .options filetype=ascii
.options savecurrents
.control
  save all
  tran 2n 5.5u uic
  write tb_r2r.raw
  quit
.endc
.end
"}
C {devices/lab_pin.sym} 80 -1040 2 0 {name=p18 sig_type=std_logic lab=a_int}
C {r2r.sym} 250 -690 0 0 {name=x3
schematic=r2r_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/r2r.sim.spice])"
tclcommand="textwindow          [file normalize ../mag/r2r.sim.spice]"
}
C {devices/gnd.sym} 400 -620 0 0 {name=l11 lab=GND}
C {tt06_analog_load.sym} 630 -740 0 0 {name=x4}
C {devices/lab_pin.sym} 820 -760 2 0 {name=p19 sig_type=std_logic lab=out_parax}
C {devices/lab_pin.sym} 100 -620 0 0 {name=p20 sig_type=std_logic lab=d0}
C {devices/lab_pin.sym} 100 -640 0 0 {name=p21 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 100 -660 0 0 {name=p22 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 100 -680 0 0 {name=p23 sig_type=std_logic lab=d3}
C {devices/lab_pin.sym} 100 -700 0 0 {name=p24 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} 100 -720 0 0 {name=p25 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} 100 -740 0 0 {name=p26 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} 100 -760 0 0 {name=p27 sig_type=std_logic lab=d7}
C {devices/lab_pin.sym} 400 -800 2 0 {name=p28 sig_type=std_logic lab=a_int_parax}
C {devices/gnd.sym} 780 -700 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 730 -490 0 0 {name=V10 value=1.8 savecurrent=false}
C {devices/gnd.sym} 730 -430 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 730 -560 0 0 {name=p30 sig_type=std_logic lab=VCC}
C {devices/res.sym} 440 -910 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 420 -1000 0 0 {name=M1
L=0.15
W=40
nf=8 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 440 -1080 0 0 {name=p29 sig_type=std_logic lab=VCC}
C {devices/gnd.sym} 440 -860 0 0 {name=l12 lab=GND}
C {devices/res.sym} 220 -950 0 0 {name=R2
value=150k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 220 -1050 0 0 {name=R3
value=200k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 220 -1120 0 0 {name=p31 sig_type=std_logic lab=VCC}
C {devices/res.sym} 1180 -910 0 0 {name=R4
value=200k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1180 -860 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 310 -1040 2 0 {name=p32 sig_type=std_logic lab=b_int}
