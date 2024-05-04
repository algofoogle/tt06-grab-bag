v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -520 620 -520 {
lab=#net1}
N 580 -520 580 -460 {
lab=#net1}
N 500 -460 580 -460 {
lab=#net1}
N 500 -490 500 -460 {
lab=#net1}
N 500 -580 500 -550 {
lab=VCC}
N 500 -580 660 -580 {
lab=VCC}
N 660 -580 660 -550 {
lab=VCC}
N 500 -460 500 -420 {
lab=#net1}
N 500 -550 500 -520 {
lab=VCC}
N 660 -550 660 -520 {
lab=VCC}
N 660 -490 660 -420 {
lab=vout}
N 660 -460 720 -460 {
lab=vout}
N 720 -460 720 -390 {
lab=vout}
N 700 -390 720 -390 {
lab=vout}
N 500 -420 500 -390 {
lab=#net1}
N 660 -390 660 -360 {
lab=#net2}
N 500 -360 500 -320 {
lab=#net2}
N 500 -320 660 -320 {
lab=#net2}
N 660 -360 660 -320 {
lab=#net2}
N 720 -390 820 -390 {
lab=vout}
N 580 -320 580 -300 {
lab=#net2}
N 580 -270 580 -240 {
lab=VSS}
N 580 -240 580 -200 {
lab=VSS}
N 440 -270 540 -270 {
lab=#net3}
N 400 -240 400 -200 {
lab=VSS}
N 400 -200 580 -200 {
lab=VSS}
N 280 -200 400 -200 {
lab=VSS}
N 280 -390 460 -390 {
lab=vin}
N 400 -270 400 -240 {
lab=VSS}
N 400 -580 500 -580 {
lab=VCC}
N 280 -580 400 -580 {
lab=VCC}
N 400 -320 460 -320 {
lab=#net3}
N 460 -320 460 -270 {
lab=#net3}
N 400 -440 400 -300 {
lab=#net3}
N 420 -470 420 -350 {
lab=VSS}
N 300 -350 420 -350 {
lab=VSS}
N 300 -350 300 -200 {
lab=VSS}
N 400 -580 400 -500 {
lab=VCC}
C {sky130_fd_pr/pfet_01v8.sym} 640 -520 0 0 {name=M1
L=0.15
W=8
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
C {sky130_fd_pr/pfet_01v8.sym} 520 -520 0 1 {name=M3
L=0.15
W=8
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
C {sky130_fd_pr/pfet_01v8.sym} 480 -390 0 0 {name=M4
L=0.15
W=8
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
C {sky130_fd_pr/nfet_01v8.sym} 680 -390 0 1 {name=M5
L=0.15
W=8
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
C {sky130_fd_pr/nfet_01v8.sym} 560 -270 0 0 {name=M6
L=0.15
W=8
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
C {sky130_fd_pr/nfet_01v8.sym} 420 -270 0 1 {name=M7
L=0.15
W=8
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
C {devices/iopin.sym} 280 -580 0 1 {name=p1 lab=VCC}
C {devices/iopin.sym} 280 -200 0 1 {name=p2 lab=VSS}
C {devices/ipin.sym} 280 -390 0 0 {name=p3 lab=vin}
C {devices/opin.sym} 820 -390 0 0 {name=p4 lab=vout}
C {sky130_fd_pr/res_high_po_0p35.sym} 400 -470 0 1 {name=R1
L=7
model=res_high_po_0p35
spiceprefix=X
mult=1}
