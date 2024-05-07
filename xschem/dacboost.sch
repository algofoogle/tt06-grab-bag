v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 660 -310 760 -310 {
lab=aout}
N 580 -420 580 -360 {
lab=VCC}
N 690 -450 690 -310 {
lab=aout}
N 480 -450 690 -450 {
lab=aout}
N 420 -370 420 -240 {
lab=#net1}
N 420 -450 420 -430 {
lab=aout}
N 420 -450 480 -450 {
lab=aout}
N 320 -290 520 -290 {
lab=#net2}
N 260 -290 320 -290 {
lab=#net2}
N 560 -90 560 -70 {
lab=VSS}
N 560 -250 560 -150 {
lab=#net3}
N 560 -120 640 -120 {
lab=VSS}
N 640 -120 640 -70 {
lab=VSS}
N 560 -70 640 -70 {
lab=VSS}
N 500 -120 520 -120 {
lab=VCC}
N 500 -390 580 -390 {
lab=VCC}
N 420 -330 520 -330 {
lab=#net1}
N 500 -390 500 -120 {
lab=VCC}
N 560 -70 560 -40 {
lab=VSS}
N 600 -250 640 -250 {
lab=VSS}
N 640 -250 640 -120 {
lab=VSS}
N 420 -70 560 -70 {
lab=VSS}
N 420 -180 420 -70 {
lab=VSS}
N 320 -70 420 -70 {
lab=VSS}
N 160 -400 160 -380 {
lab=VCC}
N 160 -320 160 -290 {
lab=ain}
N 180 -350 180 -70 {
lab=VSS}
N 180 -70 320 -70 {
lab=VSS}
N 230 -270 230 -70 {
lab=VSS}
N 110 -290 160 -290 {
lab=ain}
N 160 -290 200 -290 {
lab=ain}
N 300 -290 300 -180 {
lab=#net2}
N 300 -120 300 -70 {
lab=VSS}
N 280 -150 280 -70 {
lab=VSS}
N 440 -210 440 -70 {
lab=VSS}
N 440 -400 440 -210 {}
C {devices/lab_pin.sym} 580 -420 0 0 {name=p46 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 160 -400 0 0 {name=p47 sig_type=std_logic lab=VCC}
C {j_opamp.sym} 590 -310 0 0 {name=x7}
C {sky130_fd_pr/nfet_01v8.sym} 540 -120 0 0 {name=M1
L=0.69
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
C {devices/lab_pin.sym} 560 -40 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 110 -290 0 0 {name=p4 lab=ain}
C {devices/opin.sym} 760 -310 0 0 {name=p5 lab=aout}
C {devices/iopin.sym} 80 -220 0 1 {name=p6 lab=VCC}
C {devices/iopin.sym} 80 -200 0 1 {name=p2 lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 160 -350 0 1 {name=R1
L=44.8
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 230 -290 1 1 {name=R2
L=226.125
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 300 -150 2 1 {name=R3
L=362.2
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 420 -210 2 0 {name=R4
L=271.52
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 420 -400 0 1 {name=R5
L=44.8
model=res_high_po_0p35
spiceprefix=X
mult=1}
