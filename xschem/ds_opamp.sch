v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 420 -235 420 -160 { lab=VGND}
N 700 -235 700 -160 { lab=VGND}
N 540 -160 607.5 -160 { lab=VGND}
N 607.5 -160 820 -160 { lab=VGND}
N 500 -335 500 -265 { lab=#net1}
N 340 -265 420 -265 { lab=VGND}
N 340 -265 340 -160 { lab=VGND}
N 460 -160 540 -160 { lab=VGND}
N 700 -265 767.5 -265 { lab=VGND}
N 767.5 -265 767.5 -160 { lab=VGND}
N 700 -440 700 -295 { lab=#net2}
N 420 -560 420 -500 { lab=VDD}
N 420 -560 700 -560 { lab=VDD}
N 700 -560 700 -500 { lab=VDD}
N 417.5 -470 480 -470 { lab=VDD}
N 480 -560 480 -470 { lab=VDD}
N 637.5 -560 637.5 -470 { lab=VDD}
N 500 -337.5 500 -335 { lab=#net1}
N 637.5 -470 702.5 -470 { lab=VDD}
N 420 -440 420 -295 { lab=#net1}
N 420 -337.5 500 -337.5 { lab=#net1}
N 460 -265 660 -265 { lab=#net1}
N 970 -450 970 -430 { lab=VDD}
N 970 -390 970 -310 { lab=VGND}
N 1110 -390 1140 -390 { lab=Vout}
N 740 -470 770 -470 { lab=vin_p}
N 820 -160 1140 -160 { lab=VGND}
N 1140 -160 1230 -160 { lab=VGND}
N 1230 -260 1230 -160 { lab=VGND}
N 1140 -260 1230 -260 { lab=VGND}
N 920 -260 1100 -260 { lab=#net2}
N 920 -390 920 -260 { lab=#net2}
N 1140 -390 1140 -290 { lab=Vout}
N 1140 -440 1280 -440 { lab=Vout}
N 1140 -230 1140 -160 { lab=VGND}
N 970 -310 970 -160 {
lab=VGND}
N 970 -700 970 -450 {
lab=VDD}
N 220 -160 460 -160 {
lab=VGND}
N 180 -160 220 -160 {
lab=VGND}
N 1000 -390 1050 -390 {
lab=#net3}
N 500 -700 500 -560 {
lab=VDD}
N 1140 -440 1140 -390 {
lab=Vout}
N 1220 -700 1220 -600 {
lab=VDD}
N 1140 -600 1220 -600 {
lab=VDD}
N 180 -700 620 -700 {
lab=VDD}
N 620 -700 970 -700 {
lab=VDD}
N 970 -700 1220 -700 {
lab=VDD}
N 1140 -700 1140 -630 {
lab=VDD}
N 1140 -570 1140 -440 {
lab=Vout}
N 1030 -600 1100 -600 {
lab=VGND}
N 920 -390 940 -390 {
lab=#net2}
N 350 -470 380 -470 {
lab=vin_n}
N 860 -600 1030 -600 {
lab=VGND}
N 700 -390 920 -390 {
lab=#net2}
N 860 -600 860 -160 {
lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 400 -470 0 0 {name=M1
L=0.6
W=6
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 720 -470 0 1 {name=M2
L=0.6
W=6
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 440 -265 0 1 {name=M3
L=0.6
W=6
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 680 -265 0 0 {name=M4
L=0.6
W=6
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 970 -410 1 0 {name=M9
L=0.6
W=1
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1080 -390 3 0 {name=C1 model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1120 -260 0 0 {name=M6
L=0.6
W=6
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 350 -470 0 0 {name=p3 lab=vin_n}
C {devices/ipin.sym} 770 -470 0 1 {name=p4 lab=vin_p}
C {devices/opin.sym} 1280 -440 0 0 {name=p6 lab=Vout}
C {devices/iopin.sym} 180 -700 2 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 180 -160 2 0 {name=p5 lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 1120 -600 0 0 {name=M5
L=0.6
W=6
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
