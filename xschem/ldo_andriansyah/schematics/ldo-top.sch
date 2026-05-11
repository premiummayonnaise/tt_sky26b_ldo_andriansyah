v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1230 -230 1230 -220 {lab=OUT}
N 1230 -350 1230 -310 {lab=VIN}
N 1230 -60 1230 -40 {lab=VSS}
N 1230 -230 1310 -230 {lab=OUT}
N 1230 -250 1230 -230 {lab=OUT}
N 1310 -230 1410 -230 {lab=OUT}
N 920 -280 940 -280 {lab=#net1}
N 990 -280 1050 -280 {lab=#net1}
N 1050 -280 1190 -280 {lab=#net1}
N 1160 -230 1230 -230 {lab=OUT}
N 1230 -160 1230 -120 {lab=VFB}
N 940 -280 990 -280 {lab=#net1}
N 430 -280 620 -280 {lab=#net2}
N 480 -140 640 -140 {lab=#net2}
N 480 -280 480 -140 {lab=#net2}
N 990 -230 1010 -230 {lab=#net1}
N 990 -280 990 -230 {lab=#net1}
N 1070 -230 1160 -230 {lab=OUT}
N 700 -140 1120 -140 {lab=OUT}
N 1120 -230 1120 -140 {lab=OUT}
N 120 -300 130 -300 {lab=VREF}
N 430 -330 430 -300 {lab=VIN}
N 920 -330 920 -300 {lab=VIN}
C {lab_pin.sym} 1230 -140 0 1 {name=p17 sig_type=std_logic lab=VFB}
C {sky130_fd_pr/cap_mim_m3_1.sym} 670 -140 1 0 {name=C2 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1040 -230 1 0 {name=C3 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 280 -280 0 0 {name=x3}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1230 -190 0 0 {name=R1
L=69
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1230 -90 0 0 {name=R2
L=69
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 130 -280 0 0 {name=p32 sig_type=std_logic lab=VFB}
C {ipin.sym} 120 -300 0 0 {name=p35 sig_type=std_logic lab=VREF}
C {ipin.sym} 1230 -350 0 1 {name=p37 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1210 -190 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {ipin.sym} 130 -260 0 0 {name=p39 sig_type=std_logic lab=IBIAS__2.5uA}
C {iopin.sym} 1230 -40 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 430 -260 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 1210 -280 0 0 {name=M2
W=500
L=0.2
body=VIN
nf=128
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
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 770 -280 0 0 {name=x4}
C {ipin.sym} 620 -260 0 0 {name=p47 sig_type=std_logic lab=IBIAS_2.5uA}
C {lab_pin.sym} 920 -260 0 1 {name=p48 sig_type=std_logic lab=VSS}
C {ipin.sym} 620 -300 0 0 {name=p49 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 1210 -90 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {opin.sym} 1410 -230 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 920 -330 0 1 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 430 -330 0 1 {name=p3 sig_type=std_logic lab=VIN}
