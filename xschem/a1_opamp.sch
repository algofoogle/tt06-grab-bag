v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 440 -440 520 -440 {
lab=#net1}
N 460 -440 460 -380 {
lab=#net1}
N 400 -380 460 -380 {
lab=#net1}
N 400 -410 400 -380 {
lab=#net1}
N 320 -440 400 -440 {
lab=vcc}
N 400 -500 400 -470 {
lab=vcc}
N 320 -500 400 -500 {
lab=vcc}
N 320 -500 320 -440 {
lab=vcc}
N 400 -500 560 -500 {
lab=vcc}
N 560 -500 560 -470 {
lab=vcc}
N 560 -440 640 -440 {
lab=vcc}
N 640 -500 640 -440 {
lab=vcc}
N 560 -500 640 -500 {
lab=vcc}
N 400 -380 400 -330 {
lab=#net1}
N 560 -410 560 -330 {
lab=vout}
N 320 -300 360 -300 {
lab=vin_p}
N 600 -300 640 -300 {
lab=vin_n}
N 400 -270 400 -240 {
lab=#net2}
N 400 -240 560 -240 {
lab=#net2}
N 560 -270 560 -240 {
lab=#net2}
N 400 -300 560 -300 {
lab=#net2}
N 400 -240 400 -210 {
lab=#net2}
N 400 -120 480 -120 {
lab=vgnd}
N 400 -150 400 -120 {
lab=vgnd}
N 400 -180 480 -180 {
lab=vgnd}
N 220 -200 220 -180 {
lab=#net3}
N 220 -180 360 -180 {
lab=#net3}
N 220 -120 400 -120 {
lab=vgnd}
N 260 -500 320 -500 {
lab=vcc}
N 200 -230 200 -150 {
lab=vgnd}
N 200 -150 200 -120 {
lab=vgnd}
N 200 -120 220 -120 {
lab=vgnd}
N 560 -360 700 -360 {
lab=vout}
N 220 -500 260 -500 {
lab=vcc}
N 220 -500 220 -260 {
lab=vcc}
N 140 -500 220 -500 {
lab=vcc}
N 140 -120 200 -120 {
lab=vgnd}
N 480 -180 480 -120 {
lab=vgnd}
N 480 -300 480 -240 {
lab=#net2}
C {sky130_fd_pr/pfet_01v8.sym} 540 -440 0 0 {name=M1
L=0.15
W=6
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
C {sky130_fd_pr/pfet_01v8.sym} 420 -440 0 1 {name=M2
L=0.15
W=6
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
C {sky130_fd_pr/nfet_01v8.sym} 380 -300 0 0 {name=M3
L=0.15
W=6
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
C {sky130_fd_pr/nfet_01v8.sym} 580 -300 0 1 {name=M4
L=0.15
W=6
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
C {sky130_fd_pr/nfet_01v8.sym} 380 -180 0 0 {name=M5
L=0.6
W=60
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
C {sky130_fd_pr/res_high_po_0p35.sym} 220 -230 0 0 {name=R1
L=3
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 220 -150 0 0 {name=R2
L=10
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/ipin.sym} 320 -300 0 0 {name=p1 lab=vin_p}
C {devices/ipin.sym} 640 -300 0 1 {name=p2 lab=vin_n}
C {devices/opin.sym} 700 -360 0 0 {name=p3 lab=vout}
C {devices/iopin.sym} 140 -500 0 1 {name=p4 lab=vcc}
C {devices/iopin.sym} 140 -120 0 1 {name=p5 lab=vgnd}
