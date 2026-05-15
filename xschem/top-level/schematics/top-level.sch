v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1560 -270 1560 -260 {lab=OUT}
N 1560 -390 1560 -350 {lab=VIN}
N 1560 -100 1560 -80 {lab=VSS}
N 1560 -270 1640 -270 {lab=OUT}
N 1560 -290 1560 -270 {lab=OUT}
N 1640 -270 1740 -270 {lab=OUT}
N 1250 -320 1270 -320 {lab=#net1}
N 1320 -320 1380 -320 {lab=#net1}
N 1380 -320 1520 -320 {lab=#net1}
N 1490 -270 1560 -270 {lab=OUT}
N 1270 -320 1320 -320 {lab=#net1}
N 760 -320 950 -320 {lab=#net2}
N 810 -180 970 -180 {lab=#net2}
N 810 -320 810 -180 {lab=#net2}
N 1320 -270 1340 -270 {lab=#net1}
N 1320 -320 1320 -270 {lab=#net1}
N 1400 -270 1490 -270 {lab=OUT}
N 1030 -180 1450 -180 {lab=OUT}
N 1450 -270 1450 -180 {lab=OUT}
N 450 -340 460 -340 {lab=#net3}
N 760 -370 760 -340 {lab=VIN}
N 1250 -370 1250 -340 {lab=VIN}
N 350 -300 460 -300 {lab=#net4}
N 350 -280 950 -280 {lab=#net5}
N 950 -300 950 -280 {lab=#net5}
N 380 -340 450 -340 {lab=#net3}
N 380 -340 380 -260 {lab=#net3}
N 350 -260 380 -260 {lab=#net3}
N 130 -70 1560 -70 {lab=VSS}
N 1560 -80 1560 -70 {lab=VSS}
N 350 -240 350 -70 {lab=VSS}
N 1250 -390 1250 -370 {lab=VIN}
N 760 -390 1250 -390 {lab=VIN}
N 760 -390 760 -370 {lab=VIN}
N 140 -390 760 -390 {lab=VIN}
N 1250 -390 1560 -390 {lab=VIN}
N 1560 -260 1560 -200 {lab=OUT}
N 1560 -160 1560 -100 {lab=VSS}
N 1500 -180 1560 -180 {lab=#net6}
N 1500 -180 1500 -110 {lab=#net6}
N 430 -110 1500 -110 {lab=#net6}
N 430 -320 430 -110 {lab=#net6}
N 430 -320 460 -320 {lab=#net6}
N 760 -300 760 -70 {lab=VSS}
N 1250 -300 1250 -70 {lab=VSS}
N 380 -260 930 -260 {lab=#net3}
N 930 -340 930 -260 {lab=#net3}
N 930 -340 950 -340 {lab=#net3}
N 350 -360 350 -320 {lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1000 -180 1 0 {name=C2 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1370 -270 1 0 {name=C3 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 610 -320 0 0 {name=x3}
C {ipin.sym} 140 -390 2 1 {name=p37 sig_type=std_logic lab=VIN}
C {iopin.sym} 130 -70 0 1 {name=p40 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 1540 -320 0 0 {name=M2
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
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 1100 -320 0 0 {name=x4}
C {opin.sym} 1740 -270 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 200 -280 0 0 {name=x2}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/divider-feedback/schematics/divider-feedback.sym} 1710 -180 0 1 {name=x5}
C {iopin.sym} 350 -360 0 1 {name=p2 sig_type=std_logic lab=VDD}
