v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1560 -310 1560 -300 {lab=OUT}
N 1560 -430 1560 -390 {lab=VIN}
N 1560 -140 1560 -120 {lab=VSS}
N 1560 -310 1640 -310 {lab=OUT}
N 1560 -330 1560 -310 {lab=OUT}
N 1640 -310 1740 -310 {lab=OUT}
N 1250 -360 1270 -360 {lab=#net1}
N 1320 -360 1380 -360 {lab=#net1}
N 1380 -360 1520 -360 {lab=#net1}
N 1490 -310 1560 -310 {lab=OUT}
N 1270 -360 1320 -360 {lab=#net1}
N 760 -360 950 -360 {lab=#net2}
N 810 -220 970 -220 {lab=#net2}
N 810 -360 810 -220 {lab=#net2}
N 1320 -310 1340 -310 {lab=#net1}
N 1320 -360 1320 -310 {lab=#net1}
N 1400 -310 1490 -310 {lab=OUT}
N 1030 -220 1450 -220 {lab=OUT}
N 1450 -310 1450 -220 {lab=OUT}
N 450 -380 460 -380 {lab=#net3}
N 760 -410 760 -380 {lab=VIN}
N 1250 -410 1250 -380 {lab=VIN}
N 350 -340 460 -340 {lab=#net4}
N 350 -320 950 -320 {lab=#net5}
N 950 -340 950 -320 {lab=#net5}
N 380 -380 450 -380 {lab=#net3}
N 380 -380 380 -300 {lab=#net3}
N 350 -300 380 -300 {lab=#net3}
N 130 -110 1560 -110 {lab=VSS}
N 1560 -120 1560 -110 {lab=VSS}
N 350 -280 350 -110 {lab=VSS}
N 1250 -430 1250 -410 {lab=VIN}
N 760 -430 1250 -430 {lab=VIN}
N 760 -430 760 -410 {lab=VIN}
N 140 -430 760 -430 {lab=VIN}
N 1250 -430 1560 -430 {lab=VIN}
N 1560 -300 1560 -240 {lab=OUT}
N 1560 -200 1560 -140 {lab=VSS}
N 1500 -220 1560 -220 {lab=#net6}
N 1500 -220 1500 -150 {lab=#net6}
N 430 -150 1500 -150 {lab=#net6}
N 430 -360 430 -150 {lab=#net6}
N 430 -360 460 -360 {lab=#net6}
N 760 -340 760 -110 {lab=VSS}
N 1250 -340 1250 -110 {lab=VSS}
N 380 -300 930 -300 {lab=#net3}
N 930 -380 930 -300 {lab=#net3}
N 930 -380 950 -380 {lab=#net3}
N 350 -400 350 -360 {lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1000 -220 1 0 {name=C2 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1370 -310 1 0 {name=C3 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 610 -360 0 0 {name=x3}
C {ipin.sym} 140 -430 2 1 {name=p37 sig_type=std_logic lab=VIN}
C {iopin.sym} 130 -110 0 1 {name=p40 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 1540 -360 0 0 {name=M2
W=125
L=0.2
body=VIN
nf=128
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 1100 -360 0 0 {name=x4}
C {opin.sym} 1740 -310 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 200 -320 0 0 {name=x1}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/divider-feedback/schematics/divider-feedback.sym} 1710 -220 0 1 {name=x2}
C {iopin.sym} 350 -400 0 1 {name=p2 sig_type=std_logic lab=VDD}
