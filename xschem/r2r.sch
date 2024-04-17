v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {2R's} 210 -810 0 0 0.4 0.4 {}
T {R's} 420 -810 0 0 0.4 0.4 {}
N 120 -140 220 -140 {
lab=d0}
N 140 -40 160 -40 {
lab=VSUBS}
N 120 -220 220 -220 {
lab=d1}
N 120 -300 220 -300 {
lab=d2}
N 120 -380 220 -380 {
lab=d3}
N 120 -460 220 -460 {
lab=d4}
N 120 -540 220 -540 {
lab=d5}
N 120 -620 220 -620 {
lab=d6}
N 120 -700 220 -700 {
lab=d7}
N 220 -200 440 -200 {
lab=#net1}
N 220 -280 440 -280 {
lab=#net2}
N 220 -360 440 -360 {
lab=#net3}
N 220 -440 440 -440 {
lab=#net4}
N 220 -520 440 -520 {
lab=#net5}
N 220 -600 440 -600 {
lab=#net6}
N 220 -680 440 -680 {
lab=#net7}
N 220 -760 440 -760 {
lab=aout}
N 440 -760 440 -740 {
lab=aout}
N 440 -760 640 -760 {
lab=aout}
N 440 -680 440 -660 {
lab=#net7}
N 440 -600 440 -580 {
lab=#net6}
N 440 -520 440 -500 {
lab=#net5}
N 440 -440 440 -420 {
lab=#net4}
N 440 -360 440 -340 {
lab=#net3}
N 440 -280 440 -260 {
lab=#net2}
N 440 -200 440 -180 {
lab=#net1}
N 440 -120 440 -80 {
lab=GND}
C {devices/ipin.sym} 120 -140 0 0 {name=p1 lab=d0}
C {devices/ipin.sym} 120 -220 0 0 {name=p2 lab=d1}
C {devices/ipin.sym} 120 -300 0 0 {name=p3 lab=d2}
C {devices/ipin.sym} 120 -380 0 0 {name=p4 lab=d3}
C {devices/ipin.sym} 120 -460 0 0 {name=p5 lab=d4}
C {devices/ipin.sym} 120 -540 0 0 {name=p6 lab=d5}
C {devices/ipin.sym} 120 -620 0 0 {name=p7 lab=d6}
C {devices/ipin.sym} 120 -700 0 0 {name=p8 lab=d7}
C {devices/lab_pin.sym} 160 -40 2 0 {name=p10 sig_type=std_logic lab=VSUBS}
C {devices/iopin.sym} 440 -80 2 0 {name=p11 lab=GND}
C {devices/iopin.sym} 140 -40 2 0 {name=p9 lab=VSUBS}
C {devices/lab_pin.sym} 200 -170 0 0 {name=p12 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 200 -250 0 0 {name=p13 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 200 -330 0 0 {name=p14 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 200 -410 0 0 {name=p15 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 200 -490 0 0 {name=p16 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 200 -570 0 0 {name=p17 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 200 -650 0 0 {name=p18 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 200 -730 0 0 {name=p19 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 420 -150 0 0 {name=p20 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 420 -230 0 0 {name=p21 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 420 -310 0 0 {name=p22 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 420 -390 0 0 {name=p23 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 420 -470 0 0 {name=p24 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 420 -550 0 0 {name=p25 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 420 -630 0 0 {name=p26 sig_type=std_logic lab=VSUBS}
C {devices/lab_pin.sym} 420 -710 0 0 {name=p27 sig_type=std_logic lab=VSUBS}
C {devices/opin.sym} 640 -760 0 0 {name=p28 lab=aout}
C {sky130_fd_pr/res_high_po_0p69.sym} 220 -170 0 0 {name=R1
L=39.9
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 220 -250 0 0 {name=R2
L=39.9
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 220 -330 0 0 {name=R3
L=39.9
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 220 -410 0 0 {name=R4
L=39.9
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 220 -490 0 0 {name=R5
L=39.9
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 220 -570 0 0 {name=R6
L=39.9
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 220 -650 0 0 {name=R7
L=39.9
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 220 -730 0 0 {name=R8
L=39.9
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 440 -150 0 0 {name=R9
L=19.55
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 440 -230 0 0 {name=R10
L=19.55
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 440 -310 0 0 {name=R11
L=19.55
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 440 -390 0 0 {name=R12
L=19.55
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 440 -470 0 0 {name=R13
L=19.55
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 440 -550 0 0 {name=R14
L=19.55
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 440 -630 0 0 {name=R15
L=19.55
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 440 -710 0 0 {name=R16
L=19.55
model=res_high_po_0p69
spiceprefix=X
mult=1}
