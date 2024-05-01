v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -235 540 -160 { lab=vss}
N 820 -235 820 -160 { lab=vss}
N 540 -160 607.5 -160 { lab=vss}
N 607.5 -160 820 -160 { lab=vss}
N 620 -335 620 -265 { lab=vbn}
N 460 -265 540 -265 { lab=vss}
N 460 -265 460 -160 { lab=vss}
N 460 -160 540 -160 { lab=vss}
N 820 -265 887.5 -265 { lab=vss}
N 887.5 -265 887.5 -160 { lab=vss}
N 820 -440 820 -295 { lab=voe1}
N 540 -560 540 -500 { lab=vp}
N 540 -560 820 -560 { lab=vp}
N 820 -560 820 -500 { lab=vp}
N 537.5 -470 600 -470 { lab=vp}
N 600 -560 600 -470 { lab=vp}
N 757.5 -560 757.5 -470 { lab=vp}
N 680 -610 680 -560 { lab=vp}
N 1140 -672.5 1140 -670 { lab=vdd}
N 1140 -700 1140 -672.5 { lab=vdd}
N 680 -700 1140 -700 { lab=vdd}
N 680 -700 680 -670 { lab=vdd}
N 1137.5 -640 1217.5 -640 { lab=vdd}
N 1217.5 -700 1217.5 -640 { lab=vdd}
N 1140 -700 1217.5 -700 { lab=vdd}
N 300 -700 300 -670 { lab=vdd}
N 300 -700 680 -700 { lab=vdd}
N 300 -560 402.5 -560 { lab=iref}
N 402.5 -640 402.5 -560 { lab=iref}
N 1017.5 -640 1100 -640 { lab=iref}
N 220 -640 302.5 -640 { lab=vdd}
N 220 -700 220 -640 { lab=vdd}
N 220 -700 300 -700 { lab=vdd}
N 680 -640 760 -640 { lab=vdd}
N 760 -700 760 -640 { lab=vdd}
N 620 -337.5 620 -335 { lab=vbn}
N 757.5 -470 822.5 -470 { lab=vp}
N 540 -440 540 -295 { lab=vbn}
N 540 -337.5 620 -337.5 { lab=vbn}
N 340 -640 402.5 -640 { lab=iref}
N 525 -640 640 -640 { lab=iref}
N 402.5 -640 525 -640 { lab=iref}
N 580 -265 780 -265 { lab=vbn}
N 300 -610 300 -560 { lab=iref}
N 430 -470 500 -470 { lab=vin_n}
N 1000 -390 1050 -390 { lab=#net1}
N 970 -450 970 -430 { lab=vdd}
N 970 -390 970 -310 { lab=vss}
N 820 -390 940 -390 { lab=voe1}
N 1110 -390 1140 -390 { lab=vout}
N 200 -700 220 -700 { lab=vdd}
N 200 -160 460 -160 { lab=vss}
N 860 -470 920 -470 { lab=vin_p}
N 200 -560 300 -560 { lab=iref}
N 820 -160 1140 -160 { lab=vss}
N 1140 -160 1230 -160 { lab=vss}
N 1230 -260 1230 -160 { lab=vss}
N 1140 -260 1230 -260 { lab=vss}
N 920 -260 1100 -260 { lab=voe1}
N 920 -390 920 -260 { lab=voe1}
N 1140 -390 1140 -290 { lab=vout}
N 1140 -610 1140 -390 { lab=vout}
N 1140 -440 1280 -440 { lab=vout}
N 1140 -230 1140 -160 { lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 520 -470 0 0 {name=M1
L=0.15
W=3
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 840 -470 0 1 {name=M2
L=0.15
W=3
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 560 -265 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 800 -265 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 660 -640 0 0 {name=M5
L=0.75
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1120 -640 0 0 {name=M7
L=0.6
W=16
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 320 -640 0 1 {name=M8
L=0.75
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 522.5 -700 0 0 {name=l2 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} 525 -640 0 0 {name=l3 sig_type=std_logic lab=iref

}
C {devices/lab_wire.sym} 655 -560 0 0 {name=l4 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 1017.5 -640 0 0 {name=l5 sig_type=std_logic lab=iref}
C {devices/lab_wire.sym} 692.5 -160 0 0 {name=l7 sig_type=std_logic lab=vss
}
C {devices/lab_wire.sym} 1227.5 -440 0 0 {name=l8 sig_type=std_logic lab=vout
}
C {devices/lab_wire.sym} 700 -265 0 0 {name=l6 sig_type=std_logic lab=vbn}
C {sky130_fd_pr/nfet_01v8.sym} 970 -410 1 0 {name=M9
L=0.6
W=10
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 970 -450 2 0 {name=l9 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 970 -310 2 0 {name=l10 sig_type=std_logic lab=vss
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1080 -390 3 0 {name=C1 model=cap_mim_m3_1 W=28 L=20 MF=1 spiceprefix=X}
C {devices/iopin.sym} 200 -700 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 200 -160 2 0 {name=p2 lab=vss}
C {devices/ipin.sym} 430 -470 0 0 {name=p3 lab=vin_n}
C {devices/ipin.sym} 920 -470 2 0 {name=p4 lab=vin_p}
C {devices/ipin.sym} 200 -560 0 0 {name=p5 lab=iref}
C {sky130_fd_pr/nfet_01v8.sym} 1120 -260 0 0 {name=M6
L=0.6
W=10
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 880 -390 0 0 {name=l11 sig_type=std_logic lab=voe1}
C {devices/opin.sym} 1280 -440 0 0 {name=p6 lab=vout}
