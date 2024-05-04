v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -130 410 -90 { lab=GND}
N 410 -230 410 -190 { lab=vss}
N 510 -230 510 -190 { lab=vdd}
N 510 -130 510 -90 { lab=vss}
N 610 -320 610 -290 { lab=vin_signal}
N 1020 -150 1020 -110 { lab=vss}
N 1020 -240 1020 -210 { lab=#net1}
N 610 -230 610 -190 { lab=vsen}
N 610 -130 610 -90 { lab=vcm}
N 800 -510 860 -510 { lab=vin}
N 790 -510 790 -320 { lab=vin}
N 790 -510 800 -510 { lab=vin}
N 610 -320 670 -320 { lab=vin_signal}
N 840 -320 900 -320 { lab=vin}
N 1070 -510 1120 -510 { lab=vout}
N 840 -210 840 -170 { lab=vss}
N 840 -320 840 -270 { lab=vin}
N 1060 -240 1060 -220 { lab=vss}
N 1200 -300 1200 -270 { lab=vout}
N 1120 -300 1200 -300 { lab=vout}
N 1200 -210 1200 -160 { lab=vss}
N 920 -250 920 -210 { lab=vcm}
N 920 -150 920 -110 { lab=vss}
N 920 -280 920 -250 { lab=vcm}
N 920 -280 980 -280 { lab=vcm}
N 900 -320 980 -320 { lab=vin}
N 730 -320 840 -320 { lab=vin}
N 1120 -510 1200 -510 { lab=vout}
N 1200 -510 1200 -300 { lab=vout}
N 860 -510 1010 -510 { lab=vin}
N 1040 -380 1040 -350 { lab=vdd}
C {devices/vsource.sym} 410 -160 0 0 {name=V1 value=DC\{vss\}}
C {devices/vsource.sym} 510 -160 0 0 {name=V2 value=DC\{vdd\}}
C {devices/gnd.sym} 410 -90 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 610 -160 0 0 {name=V4 value="sin(0 \{vac\} 1Meg) dc 0 ac 1"}
C {devices/capa.sym} 610 -260 2 0 {name=C4
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 510 -230 1 0 {name=l15 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 410 -230 1 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 510 -90 3 0 {name=l18 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 610 -90 3 0 {name=l20 sig_type=std_logic lab=vcm}
C {devices/isource.sym} 1020 -180 0 0 {name=I0 value=DC\{iref\}}
C {devices/lab_pin.sym} 1020 -110 3 0 {name=l22 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 610 -210 3 0 {name=l24 sig_type=std_logic lab=vsen}
C {devices/res.sym} 700 -320 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1040 -510 1 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 840 -170 3 0 {name=l28 sig_type=std_logic lab=vss
}
C {devices/capa.sym} 840 -240 0 0 {name=C5
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/netlist_not_shown.sym} 460 -490 0 0 {name=SIMULATION only_toplevel=false 

value="


* Circuit Parameters
.param iref = 100u
.param vdd  = 1.8
.param vss  = 0.0
.param vcm  = 0.8
.param vac  = 10m
.options TEMP = 65.0

* Include Models
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr/latest/models/corners/sky130.lib TT

* OP Parameters & Singals to save
.save all
+ @M.X1.XM1.msky130_fd_pr__pfet_01v8[id] @M.X1.XM1.msky130_fd_pr__pfet_01v8[vth] @M.X1.XM1.msky130_fd_pr__pfet_01v8[vgs] @M.X1.XM1.msky130_fd_pr__pfet_01v8[vds] @M.X1.XM1.msky130_fd_pr__pfet_01v8[vdsat] @M.X1.XM1.msky130_fd_pr__pfet_01v8[gm] @M.X1.XM1.msky130_fd_pr__pfet_01v8[gds]
+ @M.X1.XM2.msky130_fd_pr__pfet_01v8[id] @M.X1.XM2.msky130_fd_pr__pfet_01v8[vth] @M.X1.XM2.msky130_fd_pr__pfet_01v8[vgs] @M.X1.XM2.msky130_fd_pr__pfet_01v8[vds] @M.X1.XM2.msky130_fd_pr__pfet_01v8[vdsat] @M.X1.XM2.msky130_fd_pr__pfet_01v8[gm] @M.X1.XM2.msky130_fd_pr__pfet_01v8[gds]
+ @M.X1.XM3.msky130_fd_pr__nfet_01v8[id] @M.X1.XM3.msky130_fd_pr__nfet_01v8[vth] @M.X1.XM3.msky130_fd_pr__nfet_01v8[vgs] @M.X1.XM3.msky130_fd_pr__nfet_01v8[vds] @M.X1.XM3.msky130_fd_pr__nfet_01v8[vdsat] @M.X1.XM3.msky130_fd_pr__nfet_01v8[gm] @M.X1.XM3.msky130_fd_pr__nfet_01v8[gds]
+ @M.X1.XM4.msky130_fd_pr__nfet_01v8[id] @M.X1.XM4.msky130_fd_pr__nfet_01v8[vth] @M.X1.XM4.msky130_fd_pr__nfet_01v8[vgs] @M.X1.XM4.msky130_fd_pr__nfet_01v8[vds] @M.X1.XM4.msky130_fd_pr__nfet_01v8[vdsat] @M.X1.XM4.msky130_fd_pr__nfet_01v8[gm] @M.X1.XM4.msky130_fd_pr__nfet_01v8[gds]
+ @M.X1.XM5.msky130_fd_pr__pfet_01v8[id] @M.X1.XM5.msky130_fd_pr__pfet_01v8[vth] @M.X1.XM5.msky130_fd_pr__pfet_01v8[vgs] @M.X1.XM5.msky130_fd_pr__pfet_01v8[vds] @M.X1.XM5.msky130_fd_pr__pfet_01v8[vdsat] @M.X1.XM5.msky130_fd_pr__pfet_01v8[gm] @M.X1.XM5.msky130_fd_pr__pfet_01v8[gds]
+ @M.X1.XM6.msky130_fd_pr__nfet_01v8[id] @M.X1.XM6.msky130_fd_pr__nfet_01v8[vth] @M.X1.XM6.msky130_fd_pr__nfet_01v8[vgs] @M.X1.XM6.msky130_fd_pr__nfet_01v8[vds] @M.X1.XM6.msky130_fd_pr__nfet_01v8[vdsat] @M.X1.XM6.msky130_fd_pr__nfet_01v8[gm] @M.X1.XM6.msky130_fd_pr__nfet_01v8[gds]
+ @M.X1.XM7.msky130_fd_pr__pfet_01v8[id] @M.X1.XM7.msky130_fd_pr__pfet_01v8[vth] @M.X1.XM7.msky130_fd_pr__pfet_01v8[vgs] @M.X1.XM7.msky130_fd_pr__pfet_01v8[vds] @M.X1.XM7.msky130_fd_pr__pfet_01v8[vdsat] @M.X1.XM7.msky130_fd_pr__pfet_01v8[gm] @M.X1.XM7.msky130_fd_pr__pfet_01v8[gds]
+ @M.X1.XM8.msky130_fd_pr__pfet_01v8[id] @M.X1.XM8.msky130_fd_pr__pfet_01v8[vth] @M.X1.XM8.msky130_fd_pr__pfet_01v8[vgs] @M.X1.XM8.msky130_fd_pr__pfet_01v8[vds] @M.X1.XM8.msky130_fd_pr__pfet_01v8[vdsat] @M.X1.XM8.msky130_fd_pr__pfet_01v8[gm] @M.X1.XM8.msky130_fd_pr__pfet_01v8[gds]
+ @M.X1.XM9.msky130_fd_pr__nfet_01v8[id] @M.X1.XM9.msky130_fd_pr__nfet_01v8[vth] @M.X1.XM9.msky130_fd_pr__nfet_01v8[vgs] @M.X1.XM9.msky130_fd_pr__nfet_01v8[vds] @M.X1.XM9.msky130_fd_pr__nfet_01v8[vdsat] @M.X1.XM9.msky130_fd_pr__nfet_01v8[gm] @M.X1.XM9.msky130_fd_pr__nfet_01v8[gds]

*Simulations
.control
  ac dec 100 1k 10G
  setplot ac1
  meas ac GBW when vdb(vout)=0
  meas ac DCG find vdb(vout) at=1k
  *meas ac PM find vp(vout) when vdb(vout)=0
  *print PM*180/PI
  *meas ac GM find vdb(vout) when vp(vout)=0
  plot vdb(vout) \{vp(vout)*180/PI\}
  *write ~/fulgor-opamp-sky130/xschem/opamp_julia/sim_results/opamp_closeloop_ac1.raw
  
  reset
  tran 0.01u 11u
  setplot tran1
  plot v(vsen) v(vout)
  *write ~/fulgor-opamp-sky130/xschem/opamp_julia/sim_results/opamp_closeloop_tran1.raw

  reset    
  noise v(vout) V4 dec 100 1k 10G 1
  setplot noise1
  plot inoise_spectrum onoise_spectrum
  *print inoise_spectrum
  *print onoise_spectrum
  setplot noise2
  *plot inoise_total onoise_total
  print inoise_total
  print onoise_total
  *write ~/fulgor-opamp-sky130/xschem/opamp_julia/sim_results/opamp_closeloop_noise.raw
  
  reset
  op
  setplot op1
  print vout  
  *write ~/fulgor-opamp-sky130/xschem/opamp_julia/sim_results/opamp_closeloop_op1.raw
  
.endc

.end
"}
C {j_opamp.sym} 1050 -300 0 0 {name=x1}
C {devices/lab_pin.sym} 1060 -220 3 0 {name=l1 sig_type=std_logic lab=vss}
C {devices/capa.sym} 1200 -240 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1200 -160 3 0 {name=l2 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1170 -300 0 0 {name=l3 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 920 -110 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 960 -280 0 0 {name=l4 sig_type=std_logic lab=vcm}
C {devices/vsource.sym} 920 -180 0 0 {name=V5 value=DC\{vcm\}}
C {devices/lab_wire.sym} 920 -320 0 0 {name=l6 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 650 -320 0 0 {name=l7 sig_type=std_logic lab=vin_signal}
C {devices/lab_pin.sym} 1040 -380 1 0 {name=l8 sig_type=std_logic lab=vdd}
