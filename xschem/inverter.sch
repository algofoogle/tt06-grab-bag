v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -230 300 -190 {
lab=Y}
N 300 -210 440 -210 {
lab=Y}
N 300 -260 380 -260 {
lab=VDD}
N 380 -290 380 -260 {
lab=VDD}
N 300 -290 380 -290 {
lab=VDD}
N 300 -160 380 -160 {
lab=VSS}
N 380 -160 380 -130 {
lab=VSS}
N 300 -130 380 -130 {
lab=VSS}
N 300 -320 300 -290 {
lab=VDD}
N 300 -130 300 -100 {
lab=VSS}
N 260 -260 260 -160 {
lab=A}
N 200 -210 260 -210 {
lab=A}
C {sky130_fd_pr/pfet_01v8.sym} 280 -260 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 280 -160 0 0 {name=M2
L=0.15
W=4
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
C {devices/iopin.sym} 80 -320 0 1 {name=p1 lab=VDD}
C {devices/iopin.sym} 80 -300 0 1 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 300 -320 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 300 -100 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 80 -260 0 0 {name=p5 lab=A}
C {devices/opin.sym} 80 -240 0 0 {name=p6 lab=Y}
C {devices/lab_pin.sym} 200 -210 0 0 {name=p7 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 440 -210 0 1 {name=p8 sig_type=std_logic lab=Y}
