v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 2160 -340 2160 -330 {lab=GND}
N 1260 -210 1260 -200 {lab=OUT2}
N 1260 -330 1260 -290 {lab=VIN2}
N 1260 -40 1260 -20 {lab=VSS}
N 1260 -210 1340 -210 {lab=OUT2}
N 1260 -230 1260 -210 {lab=OUT2}
N 1340 -210 1440 -210 {lab=OUT2}
N 950 -260 970 -260 {lab=#net1}
N 1020 -260 1080 -260 {lab=#net1}
N 1080 -260 1220 -260 {lab=#net1}
N 1190 -210 1260 -210 {lab=OUT2}
N 1260 -140 1260 -100 {lab=VFB2}
N 970 -260 1020 -260 {lab=#net1}
N 460 -260 650 -260 {lab=#net2}
N 510 -120 670 -120 {lab=#net2}
N 510 -260 510 -120 {lab=#net2}
N 1020 -210 1040 -210 {lab=#net1}
N 1020 -260 1020 -210 {lab=#net1}
N 1100 -210 1190 -210 {lab=OUT2}
N 730 -120 1150 -120 {lab=OUT2}
N 1150 -210 1150 -120 {lab=OUT2}
N 150 -280 160 -280 {lab=VREF2}
N 460 -310 460 -280 {lab=VIN2}
N 950 -310 950 -280 {lab=VIN2}
N 1260 -600 1260 -590 {lab=OUT1}
N 1260 -720 1260 -680 {lab=VIN1}
N 1260 -430 1260 -410 {lab=VSS}
N 1260 -600 1340 -600 {lab=OUT1}
N 1260 -620 1260 -600 {lab=OUT1}
N 1340 -600 1440 -600 {lab=OUT1}
N 950 -650 970 -650 {lab=#net3}
N 1020 -650 1080 -650 {lab=#net3}
N 1080 -650 1220 -650 {lab=#net3}
N 1190 -600 1260 -600 {lab=OUT1}
N 1260 -530 1260 -490 {lab=VFB1}
N 970 -650 1020 -650 {lab=#net3}
N 460 -650 650 -650 {lab=#net4}
N 510 -510 670 -510 {lab=#net4}
N 510 -650 510 -510 {lab=#net4}
N 1020 -600 1040 -600 {lab=#net3}
N 1020 -650 1020 -600 {lab=#net3}
N 1100 -600 1190 -600 {lab=OUT1}
N 730 -510 1150 -510 {lab=OUT1}
N 1150 -600 1150 -510 {lab=OUT1}
N 150 -670 160 -670 {lab=VREF1}
N 460 -700 460 -670 {lab=VIN1}
N 950 -700 950 -670 {lab=VIN1}
N 1830 -640 1890 -640 {lab=IBIAS2}
N 1830 -660 1890 -660 {lab=IBIAS1}
N 1840 -240 1900 -240 {lab=IBIAS4}
N 1840 -260 1900 -260 {lab=IBIAS3}
C {vsource.sym} 1810 -530 0 0 {name=V2 value=1.8 savecurrent=false}
C {lab_pin.sym} 1810 -500 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1810 -560 0 0 {name=p16 sig_type=std_logic lab=VIN1}
C {vsource.sym} 2160 -370 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 2160 -400 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {gnd.sym} 2160 -330 0 0 {name=l1 lab=GND}
C {code_shown.sym} 2130 -660 0 0 {name=s1 only_toplevel=false value="

.control

tran 50n 400u
plot OUT1
plot OUT2 VIN2


.endc


"}
C {lab_pin.sym} 150 -670 0 0 {name=p1 sig_type=std_logic lab=VREF1}
C {lab_pin.sym} 460 -700 0 0 {name=p3 sig_type=std_logic lab=VIN1}
C {isource.sym} 1420 -570 0 0 {name=I1 value="PULSE(5m 7m 20u 2u 2u 100u 200u)"}
C {vsource.sym} 1820 -120 0 0 {name=V5 value="PULSE(1.62 1.98 20u 5u 5u 100u 200u)" savecurrent=false}
C {lab_pin.sym} 1820 -90 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1820 -150 0 0 {name=p20 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} 650 -280 0 0 {name=p21 sig_type=std_logic lab=VREF2}
C {lab_pin.sym} 160 -240 0 0 {name=p22 sig_type=std_logic lab=IBIAS3}
C {lab_pin.sym} 650 -670 0 0 {name=p39 sig_type=std_logic lab=VREF1}
C {lab_pin.sym} 650 -240 0 0 {name=p45 sig_type=std_logic lab=IBIAS4}
C {sky130_fd_pr/corner.sym} 2200 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {isource.sym} 1420 -180 0 0 {name=I4 value="10m"}
C {lab_pin.sym} 1420 -150 0 0 {name=p6 sig_type=std_logic lab=VSS
value=2.4u}
C {lab_pin.sym} 1260 -120 0 1 {name=p27 sig_type=std_logic lab=VFB2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 700 -120 1 0 {name=C2 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1070 -210 1 0 {name=C3 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 310 -260 0 0 {name=x3}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1260 -170 0 0 {name=R1
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1260 -70 0 0 {name=R2
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 160 -260 0 0 {name=p28 sig_type=std_logic lab=VFB2}
C {lab_pin.sym} 150 -280 0 0 {name=p35 sig_type=std_logic lab=VREF2}
C {lab_pin.sym} 1240 -170 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {iopin.sym} 1260 -20 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 -240 0 1 {name=p36 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 1240 -260 0 0 {name=M2
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
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 800 -260 0 0 {name=x2}
C {lab_pin.sym} 950 -240 0 1 {name=p50 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 -70 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1440 -210 0 1 {name=p53 sig_type=std_logic lab=OUT2}
C {lab_pin.sym} 1420 -540 0 0 {name=p56 sig_type=std_logic lab=VSS
value=2.4u}
C {lab_pin.sym} 1260 -510 0 1 {name=p57 sig_type=std_logic lab=VFB1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 700 -510 1 0 {name=C1 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1070 -600 1 0 {name=C4 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 310 -650 0 0 {name=x5}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1260 -560 0 0 {name=R3
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1260 -460 0 0 {name=R4
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 160 -650 0 0 {name=p58 sig_type=std_logic lab=VFB1}
C {lab_pin.sym} 1240 -560 0 0 {name=p61 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 -630 0 0 {name=p62 sig_type=std_logic lab=IBIAS1}
C {iopin.sym} 1260 -410 0 0 {name=p63 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 -630 0 1 {name=p64 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 1240 -650 0 0 {name=M1
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
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 800 -650 0 0 {name=x6}
C {lab_pin.sym} 650 -630 0 0 {name=p65 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 950 -630 0 1 {name=p66 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 -460 0 0 {name=p68 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1440 -600 0 1 {name=p69 sig_type=std_logic lab=OUT1}
C {lab_pin.sym} 950 -700 0 0 {name=p70 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 1260 -720 0 0 {name=p60 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 460 -310 0 0 {name=p2 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} 950 -310 0 0 {name=p29 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} 1260 -330 0 0 {name=p42 sig_type=std_logic lab=VIN2}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 1680 -640 0 0 {name=x1}
C {lab_pin.sym} 1830 -680 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1830 -600 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1830 -620 0 1 {name=p7 sig_type=std_logic lab=VREF1}
C {lab_pin.sym} 1890 -640 0 1 {name=p23 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 1890 -660 0 1 {name=p24 sig_type=std_logic lab=IBIAS1}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 1690 -240 0 0 {name=x4}
C {lab_pin.sym} 1840 -280 0 1 {name=p25 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1840 -200 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1840 -220 0 1 {name=p33 sig_type=std_logic lab=VREF2}
C {lab_pin.sym} 1900 -240 0 1 {name=p46 sig_type=std_logic lab=IBIAS4}
C {lab_pin.sym} 1900 -260 0 1 {name=p47 sig_type=std_logic lab=IBIAS3}
C {vsource.sym} 2240 -370 0 0 {name=V8 value="dc 1.8" savecurrent=false}
C {lab_pin.sym} 2240 -340 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2240 -400 0 0 {name=p11 sig_type=std_logic lab=VDD}
