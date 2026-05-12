v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1730 -250 1730 -240 {lab=OUT}
N 1730 -370 1730 -330 {lab=VIN}
N 1730 -250 1810 -250 {lab=OUT}
N 1730 -270 1730 -250 {lab=OUT}
N 1810 -250 1910 -250 {lab=OUT}
N 1420 -300 1440 -300 {lab=#net1}
N 1490 -300 1550 -300 {lab=#net1}
N 1550 -300 1690 -300 {lab=#net1}
N 1660 -250 1730 -250 {lab=OUT}
N 1730 540 1730 580 {lab=VFB}
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
N 930 -510 990 -510 {lab=IBIAS2}
N 930 -530 990 -530 {lab=IBIAS1}
N 1730 460 1730 480 {lab=#net3}
N 1730 380 1730 400 {lab=#net4}
N 1730 300 1730 320 {lab=#net5}
N 1730 220 1730 240 {lab=#net6}
N 1730 140 1730 160 {lab=#net7}
N 1730 60 1730 80 {lab=#net8}
N 1730 -20 1730 0 {lab=#net9}
N 1730 -100 1730 -80 {lab=#net10}
N 1730 -180 1730 -160 {lab=#net11}
N 1710 -210 1710 510 {lab=VSS}
N 1730 1280 1730 1300 {lab=#net12}
N 1730 1200 1730 1220 {lab=#net13}
N 1730 1120 1730 1140 {lab=#net14}
N 1730 1040 1730 1060 {lab=#net15}
N 1730 960 1730 980 {lab=#net16}
N 1730 880 1730 900 {lab=#net17}
N 1730 800 1730 820 {lab=#net18}
N 1730 720 1730 740 {lab=#net19}
N 1730 640 1730 660 {lab=#net20}
N 1710 610 1710 1330 {lab=VSS}
N 1730 1360 1730 1390 {lab=VSS}
C {vsource.sym} 390 -420 0 0 {name=V7 value=0 savecurrent=false}
C {gnd.sym} 390 -390 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 390 -450 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {vsource.sym} 280 -420 0 0 {name=V1 value="dc 1.98 ac 1" savecurrent=false}
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
C {vsource.sym} 390 -530 0 0 {name=V3 value=0.9 savecurrent=false}
C {lab_pin.sym} 390 -500 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -560 0 0 {name=p11 sig_type=std_logic lab=VBIAS}
C {code_shown.sym} 310 -200 0 0 {name=s2 only_toplevel=false value="

.control
 ac dec 20 1 10G
 plot -20*log10(OUT/VIN)


.endc


"}
C {isource.sym} 1890 -220 0 0 {name=I1 value="5m"}
C {lab_pin.sym} 1890 -190 0 0 {name=p12 sig_type=std_logic lab=VSS
value=2.4u}
C {lab_pin.sym} 1730 560 0 1 {name=p17 sig_type=std_logic lab=VFB}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1170 -160 1 0 {name=C2 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1540 -250 1 0 {name=C3 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 780 -300 0 0 {name=x3}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 510 0 0 {name=R1
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 630 -300 0 0 {name=p32 sig_type=std_logic lab=VFB}
C {lab_pin.sym} 620 -320 0 0 {name=p35 sig_type=std_logic lab=VREF}
C {ipin.sym} 1730 -370 0 1 {name=p37 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 630 -280 0 0 {name=p39 sig_type=std_logic lab=IBIAS1}
C {iopin.sym} 1730 1390 0 0 {name=p40 sig_type=std_logic lab=VSS}
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
C {lab_pin.sym} 1120 -320 0 0 {name=p49 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1910 -250 0 1 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 1420 -350 0 1 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 930 -350 0 1 {name=p3 sig_type=std_logic lab=VIN}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 780 -510 0 0 {name=x1}
C {lab_pin.sym} 930 -550 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 930 -470 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 930 -490 0 1 {name=p6 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 990 -510 0 1 {name=p19 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 990 -530 0 1 {name=p20 sig_type=std_logic lab=IBIAS1}
C {vsource.sym} 280 -530 0 0 {name=V4 value="dc 1.8" savecurrent=false}
C {lab_pin.sym} 280 -500 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 -560 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 430 0 0 {name=R3
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 350 0 0 {name=R4
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 270 0 0 {name=R5
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 1710 190 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 190 0 0 {name=R6
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 110 0 0 {name=R7
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 30 0 0 {name=R8
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 -50 0 0 {name=R9
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 -130 0 0 {name=R10
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 -210 0 0 {name=R11
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 1330 0 0 {name=R2
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 1250 0 0 {name=R12
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 1170 0 0 {name=R13
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 1090 0 0 {name=R14
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 1710 1010 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 1010 0 0 {name=R15
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 930 0 0 {name=R16
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 850 0 0 {name=R17
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 770 0 0 {name=R18
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 690 0 0 {name=R19
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1730 610 0 0 {name=R20
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
