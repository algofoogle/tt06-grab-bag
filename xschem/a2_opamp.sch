v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 400 -560 480 -560 {
lab=#net1}
N 360 -640 360 -590 {
lab=vcc}
N 520 -640 520 -590 {
lab=vcc}
N 280 -560 360 -560 {
lab=vcc}
N 280 -640 280 -560 {
lab=vcc}
N 520 -560 600 -560 {
lab=vcc}
N 600 -640 600 -560 {
lab=vcc}
N 360 -530 360 -500 {
lab=#net1}
N 360 -500 420 -500 {
lab=#net1}
N 420 -560 420 -500 {
lab=#net1}
N 360 -500 360 -340 {
lab=#net1}
N 600 -440 600 -410 {
lab=#net2}
N 600 -440 760 -440 {
lab=#net2}
N 760 -440 760 -410 {
lab=#net2}
N 460 -560 460 -500 {
lab=#net1}
N 460 -500 830 -500 {
lab=#net1}
N 520 -530 520 -480 {
lab=#net2}
N 520 -480 680 -480 {
lab=#net2}
N 680 -480 680 -440 {
lab=#net2}
N 600 -380 760 -380 {
lab=#net2}
N 680 -440 680 -380 {
lab=#net2}
N 540 -380 560 -380 {
lab=vin}
N 640 -250 720 -250 {
lab=#net3}
N 600 -350 600 -280 {
lab=#net3}
N 600 -300 660 -300 {
lab=#net3}
N 660 -300 660 -250 {
lab=#net3}
N 760 -350 760 -280 {
lab=#net4}
N 520 -250 600 -250 {
lab=vgnd}
N 520 -250 520 -180 {
lab=vgnd}
N 520 -180 600 -180 {
lab=vgnd}
N 600 -220 600 -180 {
lab=vgnd}
N 600 -180 760 -180 {
lab=vgnd}
N 760 -220 760 -180 {
lab=vgnd}
N 760 -220 760 -180 {
lab=vgnd}
N 760 -180 840 -180 {
lab=vgnd}
N 840 -250 840 -180 {
lab=vgnd}
N 760 -250 840 -250 {
lab=vgnd}
N 100 -180 520 -180 {
lab=vgnd}
N 840 -180 1000 -180 {
lab=vgnd}
N 1000 -270 1000 -180 {
lab=vgnd}
N 760 -300 960 -300 {
lab=#net4}
N 830 -500 960 -500 {
lab=#net1}
N 1000 -470 1000 -330 {
lab=vout}
N 1000 -300 1080 -300 {
lab=vgnd}
N 1080 -300 1080 -180 {
lab=vgnd}
N 1000 -180 1080 -180 {
lab=vgnd}
N 1000 -640 1000 -530 {
lab=vcc}
N 1000 -500 1080 -500 {
lab=vcc}
N 1080 -640 1080 -500 {
lab=vcc}
N 800 -380 1000 -380 {
lab=vout}
N 1000 -380 1180 -380 {
lab=vout}
N 100 -640 1080 -640 {
lab=vcc}
N 100 -380 540 -380 {
lab=vin}
N 240 -210 240 -180 {
lab=vgnd}
N 280 -240 320 -240 {
lab=#net5}
N 360 -210 360 -180 {
lab=vgnd}
N 160 -240 240 -240 {
lab=vgnd}
N 160 -240 160 -180 {
lab=vgnd}
N 360 -240 440 -240 {
lab=vgnd}
N 440 -240 440 -180 {
lab=vgnd}
N 360 -340 360 -270 {
lab=#net1}
N 240 -640 240 -470 {
lab=vcc}
N 160 -440 220 -440 {
lab=vgnd}
N 160 -440 160 -240 {
lab=vgnd}
N 240 -410 240 -270 {
lab=#net5}
N 240 -300 300 -300 {
lab=#net5}
N 300 -300 300 -240 {
lab=#net5}
C {sky130_fd_pr/pfet_01v8.sym} 380 -560 0 1 {name=M1
L=0.6
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 500 -560 0 0 {name=M2
L=0.6
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 580 -380 0 0 {name=M3
L=0.6
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 780 -380 0 1 {name=M4
L=0.6
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 620 -250 0 1 {name=M5
L=0.6
W=10
nf=1 
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
C {sky130_fd_pr/nfet_01v8.sym} 740 -250 0 0 {name=M6
L=0.6
W=10
nf=1 
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
C {sky130_fd_pr/nfet_01v8.sym} 980 -300 0 0 {name=M7
L=0.6
W=20
nf=1 
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
C {sky130_fd_pr/pfet_01v8.sym} 980 -500 0 0 {name=M8
L=0.6
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 100 -380 0 0 {name=p1 lab=vin}
C {devices/iopin.sym} 100 -640 0 1 {name=p2 lab=vcc}
C {devices/iopin.sym} 100 -180 0 1 {name=p3 lab=vgnd}
C {devices/opin.sym} 1180 -380 0 0 {name=p4 lab=vout}
C {sky130_fd_pr/nfet_01v8.sym} 260 -240 0 1 {name=M9
L=0.6
W=10
nf=1 
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
C {sky130_fd_pr/nfet_01v8.sym} 340 -240 0 0 {name=M10
L=0.6
W=10
nf=1 
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
C {sky130_fd_pr/res_high_po_0p35.sym} 240 -440 0 0 {name=R1
L=0.35
model=res_high_po_0p35
spiceprefix=X
mult=1}
