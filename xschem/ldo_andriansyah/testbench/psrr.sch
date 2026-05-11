v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1730 -250 1730 -240 {lab=OUT}
N 1730 -370 1730 -330 {lab=VIN}
N 1730 -80 1730 -60 {lab=VSS}
N 1730 -250 1810 -250 {lab=OUT}
N 1730 -270 1730 -250 {lab=OUT}
N 1810 -250 1910 -250 {lab=OUT}
N 1420 -300 1440 -300 {lab=#net1}
N 1490 -300 1550 -300 {lab=#net1}
N 1550 -300 1690 -300 {lab=#net1}
N 1660 -250 1730 -250 {lab=OUT}
N 1730 -180 1730 -140 {lab=VFB}
N 1440 -300 1490 -300 {lab=#net1}
N 930 -300 1120 -300 {lab=#net2}
N 980 -160 1140 -160 {lab=#net2}
N 980 -300 980 -160 {lab=#net2}
N 1490 -250 1510 -250 {lab=#net1}
N 1490 -300 1490 -250 {lab=#net1}
N 1570 -250 1660 -250 {lab=OUT}
N 1200 -160 1620 -160 {lab=OUT}
N 1620 -250 1620 -160 {lab=OUT}
N 620 -320 630 -320 {lab=VREF}
N 930 -350 930 -320 {lab=VIN}
N 1420 -350 1420 -320 {lab=VIN}
C {lab_pin.sym} 280 -340 0 1 {name=p7 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 280 -280 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {vsource.sym} 390 -420 0 0 {name=V7 value=0 savecurrent=false}
C {gnd.sym} 390 -390 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 390 -450 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {vsource.sym} 280 -420 0 0 {name=V1 value="dc 1.9 ac 1" savecurrent=false}
C {lab_pin.sym} 280 -390 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 -450 0 0 {name=p25 sig_type=std_logic lab=VIN}
C {devices/code.sym} 130 -180 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {vsource.sym} 390 -310 0 0 {name=V2 value=0.6 savecurrent=false}
C {lab_pin.sym} 390 -280 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -340 0 1 {name=p34 sig_type=std_logic lab=VREF}
C {isource.sym} 280 -310 0 0 {name=I0 value=2.5u}
C {vsource.sym} 390 -530 0 0 {name=V3 value=0.9 savecurrent=false}
C {lab_pin.sym} 390 -500 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -560 0 0 {name=p11 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 270 -560 0 0 {name=p5 sig_type=std_logic lab=IBIAS1}
C {lab_pin.sym} 270 -500 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {isource.sym} 270 -530 0 0 {name=I2 value=2.5u}
C {code_shown.sym} 310 -200 0 0 {name=s2 only_toplevel=false value="

.control
 ac dec 20 1 10G
 plot -20*log10(OUT/VIN)


.endc


"}
C {isource.sym} 1890 -220 0 0 {name=I1 value="5m"}
C {lab_pin.sym} 1890 -190 0 0 {name=p12 sig_type=std_logic lab=VSS
value=2.4u}
C {lab_pin.sym} 1730 -160 0 1 {name=p17 sig_type=std_logic lab=VFB}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1170 -160 1 0 {name=C2 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1540 -250 1 0 {name=C3 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 780 -300 0 0 {name=x3}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 -210 0 0 {name=R1
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 -110 0 0 {name=R2
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 630 -300 0 0 {name=p32 sig_type=std_logic lab=VFB}
C {lab_pin.sym} 620 -320 0 0 {name=p35 sig_type=std_logic lab=VREF}
C {ipin.sym} 1730 -370 0 1 {name=p37 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1710 -210 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 630 -280 0 0 {name=p39 sig_type=std_logic lab=IBIAS1}
C {iopin.sym} 1730 -60 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 930 -280 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 1710 -300 0 0 {name=M2
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
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 1270 -300 0 0 {name=x4}
C {lab_pin.sym} 1120 -280 0 0 {name=p47 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 1420 -280 0 1 {name=p48 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 -320 0 0 {name=p49 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 1710 -110 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1910 -250 0 1 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 1420 -350 0 1 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 930 -350 0 1 {name=p3 sig_type=std_logic lab=VIN}
