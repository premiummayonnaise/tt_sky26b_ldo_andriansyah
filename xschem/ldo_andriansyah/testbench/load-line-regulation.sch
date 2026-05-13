v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1690 -320 1690 -310 {lab=OUT}
N 1690 -440 1690 -400 {lab=VIN}
N 1690 -150 1690 -130 {lab=VSS}
N 1690 -320 1770 -320 {lab=OUT}
N 1690 -340 1690 -320 {lab=OUT}
N 1770 -320 1870 -320 {lab=OUT}
N 1380 -370 1400 -370 {lab=#net1}
N 1450 -370 1510 -370 {lab=#net1}
N 1510 -370 1650 -370 {lab=#net1}
N 1620 -320 1690 -320 {lab=OUT}
N 1690 -250 1690 -210 {lab=VFB}
N 1400 -370 1450 -370 {lab=#net1}
N 890 -370 1080 -370 {lab=#net2}
N 940 -230 1100 -230 {lab=#net2}
N 940 -370 940 -230 {lab=#net2}
N 1450 -320 1470 -320 {lab=#net1}
N 1450 -370 1450 -320 {lab=#net1}
N 1530 -320 1620 -320 {lab=OUT}
N 1160 -230 1580 -230 {lab=OUT}
N 1580 -320 1580 -230 {lab=OUT}
N 580 -390 590 -390 {lab=VREF}
N 890 -420 890 -390 {lab=VIN}
N 1380 -420 1380 -390 {lab=VIN}
N 890 -530 950 -530 {lab=IBIAS2}
N 890 -550 950 -550 {lab=IBIAS1}
C {vsource.sym} 350 -490 0 0 {name=V7 value=0 savecurrent=false}
C {gnd.sym} 350 -460 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 350 -520 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {vsource.sym} 240 -490 0 0 {name=V1 value="dc 1.98" savecurrent=false}
C {lab_pin.sym} 240 -460 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 -520 0 0 {name=p25 sig_type=std_logic lab=VIN}
C {devices/code.sym} 90 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code_shown.sym} 270 -270 0 0 {name=s2 only_toplevel=false value="

.control
 DC V1 1.62 1.98 0.001
 plot OUT VIN

.endc


"}
C {isource.sym} 1850 -290 0 0 {name=I1 value="5m"}
C {lab_pin.sym} 1850 -260 0 0 {name=p12 sig_type=std_logic lab=VSS
value=2.4u}
C {lab_pin.sym} 1690 -230 0 1 {name=p17 sig_type=std_logic lab=VFB}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1130 -230 1 0 {name=C2 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1500 -320 1 0 {name=C3 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {error-amplifier.sym} 740 -370 0 0 {name=x3}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1690 -280 0 0 {name=R1
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1690 -180 0 0 {name=R2
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 590 -370 0 0 {name=p32 sig_type=std_logic lab=VFB}
C {lab_pin.sym} 580 -390 0 0 {name=p35 sig_type=std_logic lab=VREF}
C {ipin.sym} 1690 -440 0 1 {name=p37 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1670 -280 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 590 -350 0 0 {name=p39 sig_type=std_logic lab=IBIAS1}
C {iopin.sym} 1690 -130 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 890 -350 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 1670 -370 0 0 {name=M2
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
C {error-amplifier.sym} 1230 -370 0 0 {name=x4}
C {lab_pin.sym} 1080 -350 0 0 {name=p47 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 1380 -350 0 1 {name=p48 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1080 -390 0 0 {name=p49 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1670 -180 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1870 -320 0 1 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 1380 -420 0 1 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 890 -420 0 1 {name=p3 sig_type=std_logic lab=VIN}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 740 -530 0 0 {name=x1}
C {lab_pin.sym} 890 -570 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 890 -490 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 890 -510 0 1 {name=p20 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 950 -530 0 1 {name=p21 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 950 -550 0 1 {name=p22 sig_type=std_logic lab=IBIAS1}
C {vsource.sym} 240 -600 0 0 {name=V8 value="dc 1.8" savecurrent=false}
C {lab_pin.sym} 240 -570 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 -630 0 0 {name=p26 sig_type=std_logic lab=VDD}
