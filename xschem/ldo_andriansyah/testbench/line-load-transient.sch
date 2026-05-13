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
N 1260 -860 1260 -850 {lab=OUT1}
N 1260 -980 1260 -940 {lab=VIN1}
N 1260 -690 1260 -670 {lab=VSS}
N 1260 -860 1340 -860 {lab=OUT1}
N 1260 -880 1260 -860 {lab=OUT1}
N 1340 -860 1440 -860 {lab=OUT1}
N 950 -910 970 -910 {lab=#net3}
N 1020 -910 1080 -910 {lab=#net3}
N 1080 -910 1220 -910 {lab=#net3}
N 1190 -860 1260 -860 {lab=OUT1}
N 1260 -790 1260 -750 {lab=VFB1}
N 970 -910 1020 -910 {lab=#net3}
N 460 -910 650 -910 {lab=#net4}
N 510 -770 670 -770 {lab=#net4}
N 510 -910 510 -770 {lab=#net4}
N 1020 -860 1040 -860 {lab=#net3}
N 1020 -910 1020 -860 {lab=#net3}
N 1100 -860 1190 -860 {lab=OUT1}
N 730 -770 1150 -770 {lab=OUT1}
N 1150 -860 1150 -770 {lab=OUT1}
N 150 -930 160 -930 {lab=VREF1}
N 460 -960 460 -930 {lab=VIN1}
N 950 -960 950 -930 {lab=VIN1}
N 1830 -900 1890 -900 {lab=IBIAS2}
N 1830 -920 1890 -920 {lab=IBIAS1}
N 1840 -240 1900 -240 {lab=IBIAS4}
N 1840 -260 1900 -260 {lab=IBIAS3}
N 1370 -470 1370 -440 {lab=VSS}
N 1370 -660 1370 -640 {lab=#net5}
N 1370 -860 1370 -720 {lab=OUT1}
N 1370 -640 1370 -620 {lab=#net5}
N 1370 150 1370 180 {lab=VSS}
N 1370 -10 1370 10 {lab=#net6}
N 1370 -210 1370 -70 {lab=OUT2}
N 1370 70 1370 90 {lab=#net7}
N 1370 -560 1370 -530 {lab=#net8}
C {vsource.sym} 1810 -790 0 0 {name=V2 value=1.98 savecurrent=false}
C {lab_pin.sym} 1810 -760 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1810 -820 0 0 {name=p16 sig_type=std_logic lab=VIN1}
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
C {lab_pin.sym} 150 -930 0 0 {name=p1 sig_type=std_logic lab=VREF1}
C {lab_pin.sym} 460 -960 0 0 {name=p3 sig_type=std_logic lab=VIN1}
C {isource.sym} 1420 -830 0 0 {name=I1 value="PULSE(10u 4m 20u 2u 2u 100u 200u)"}
C {vsource.sym} 1820 -120 0 0 {name=V5 value="PULSE(1.62 1.98 20u 5u 5u 100u 200u)" savecurrent=false}
C {lab_pin.sym} 1820 -90 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1820 -150 0 0 {name=p20 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} 650 -280 0 0 {name=p21 sig_type=std_logic lab=VREF2}
C {lab_pin.sym} 160 -240 0 0 {name=p22 sig_type=std_logic lab=IBIAS3}
C {lab_pin.sym} 650 -930 0 0 {name=p39 sig_type=std_logic lab=VREF1}
C {lab_pin.sym} 650 -240 0 0 {name=p45 sig_type=std_logic lab=IBIAS4}
C {sky130_fd_pr/corner.sym} 2200 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {isource.sym} 1420 -180 0 0 {name=I4 value="4m"}
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
C {lab_pin.sym} 1420 -800 0 0 {name=p56 sig_type=std_logic lab=VSS
value=2.4u}
C {lab_pin.sym} 1260 -770 0 1 {name=p57 sig_type=std_logic lab=VFB1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 700 -770 1 0 {name=C1 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1070 -860 1 0 {name=C4 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 310 -910 0 0 {name=x5}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1260 -820 0 0 {name=R3
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1260 -720 0 0 {name=R4
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 160 -910 0 0 {name=p58 sig_type=std_logic lab=VFB1}
C {lab_pin.sym} 1240 -820 0 0 {name=p61 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 -890 0 0 {name=p62 sig_type=std_logic lab=IBIAS1}
C {iopin.sym} 1260 -670 0 0 {name=p63 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 -890 0 1 {name=p64 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 1240 -910 0 0 {name=M1
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
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 800 -910 0 0 {name=x6}
C {lab_pin.sym} 650 -890 0 0 {name=p65 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 950 -890 0 1 {name=p66 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 -720 0 0 {name=p68 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1440 -860 0 1 {name=p69 sig_type=std_logic lab=OUT1}
C {lab_pin.sym} 950 -960 0 0 {name=p70 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 1260 -980 0 0 {name=p60 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 460 -310 0 0 {name=p2 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} 950 -310 0 0 {name=p29 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} 1260 -330 0 0 {name=p42 sig_type=std_logic lab=VIN2}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 1680 -900 0 0 {name=x1}
C {lab_pin.sym} 1830 -940 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1830 -860 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1830 -880 0 1 {name=p7 sig_type=std_logic lab=VREF1}
C {lab_pin.sym} 1890 -900 0 1 {name=p23 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 1890 -920 0 1 {name=p24 sig_type=std_logic lab=IBIAS1}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 1690 -240 0 0 {name=x4}
C {lab_pin.sym} 1840 -280 0 1 {name=p25 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1840 -200 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1840 -220 0 1 {name=p33 sig_type=std_logic lab=VREF2}
C {lab_pin.sym} 1900 -240 0 1 {name=p46 sig_type=std_logic lab=IBIAS4}
C {lab_pin.sym} 1900 -260 0 1 {name=p47 sig_type=std_logic lab=IBIAS3}
C {vsource.sym} 2240 -370 0 0 {name=V8 value="dc 1.8" savecurrent=false}
C {lab_pin.sym} 2240 -340 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2240 -400 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {res.sym} 1370 -500 2 0 {name=R5
value=100
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1370 -440 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {capa-2.sym} 1370 -690 0 0 {name=C5
m=1
value=4
footprint=1206
device=polarized_capacitor}
C {res.sym} 1370 120 2 0 {name=R6
value=100
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1370 180 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {capa-2.sym} 1370 -40 0 0 {name=C6
m=1
value=4
footprint=1206
device=polarized_capacitor}
C {ind.sym} 1370 -590 0 0 {name=L2
m=1
value=1n
footprint=1206
device=inductor}
C {ind.sym} 1370 40 0 0 {name=L3
m=1
value=1n
footprint=1206
device=inductor}
