v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -600 380 -600 {
lab=rin}
N 380 -600 380 -560 {
lab=rin}
N 380 -500 380 -460 {
lab=rout}
C {devices/ipin.sym} 180 -380 0 0 {name=p2 lab=rin}
C {devices/opin.sym} 180 -360 0 0 {name=p3 lab=rout}
C {sky130_fd_pr/res_high_po_0p69.sym} 380 -530 0 0 {name=R1
L=4.16
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {devices/iopin.sym} 180 -320 0 1 {name=p4 lab=VSUBS}
C {devices/lab_pin.sym} 360 -600 0 0 {name=p5 sig_type=std_logic lab=rin
}
C {devices/lab_pin.sym} 360 -530 0 0 {name=p1 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 380 -460 0 1 {name=p6 sig_type=std_logic lab=rout}
