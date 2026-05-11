v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 620 -550 620 -480 {lab=#net1}
N 450 -550 450 -480 {lab=#net2}
N 490 -580 580 -580 {lab=#net2}
N 450 -610 620 -610 {lab=VDD}
N 490 -360 580 -360 {lab=#net1}
N 530 -580 530 -530 {lab=#net2}
N 450 -530 530 -530 {lab=#net2}
N 530 -400 530 -360 {lab=#net1}
N 530 -500 530 -490 {lab=#net1}
N 530 -500 620 -500 {lab=#net1}
N 620 -330 620 -260 {lab=VSS}
N 450 -120 450 -110 {lab=#net3}
N 450 -190 450 -180 {lab=#net4}
N 450 -260 450 -250 {lab=#net5}
N 430 -290 430 -80 {lab=VSS}
N 370 -610 450 -610 {lab=VDD}
N 450 -330 450 -320 {lab=#net6}
N 580 -360 700 -360 {lab=#net1}
N 740 -330 740 -260 {lab=VSS}
N 620 -260 620 -50 {lab=VSS}
N 740 -260 740 -50 {lab=VSS}
N 250 -610 370 -610 {lab=VDD}
N 350 -360 350 -320 {lab=#net1}
N 350 -360 490 -360 {lab=#net1}
N 160 -610 250 -610 {lab=VDD}
N 260 -130 310 -130 {lab=#net7}
N 220 -190 220 -160 {lab=#net7}
N 220 -170 290 -170 {lab=#net7}
N 290 -170 290 -140 {lab=#net7}
N 290 -140 290 -130 {lab=#net7}
N 220 -100 220 -50 {lab=VSS}
N 350 -100 350 -50 {lab=VSS}
N 220 -600 220 -550 {lab=VDD}
N 220 -610 220 -600 {lab=VDD}
N 620 -420 620 -390 {lab=#net8}
N 450 -420 450 -390 {lab=#net9}
N 530 -490 530 -400 {lab=#net1}
N 220 -550 220 -520 {lab=VDD}
N 620 -610 740 -610 {lab=VDD}
N 580 -580 700 -580 {lab=#net2}
N 350 -320 350 -260 {lab=#net1}
N 350 -200 350 -160 {lab=#net10}
N 220 -280 220 -250 {lab=#net11}
N 220 -360 220 -340 {lab=#net12}
N 220 -440 220 -420 {lab=#net13}
N 220 -520 220 -500 {lab=VDD}
N 260 -350 260 -310 {lab=#net12}
N 220 -350 260 -350 {lab=#net12}
N 260 -430 260 -390 {lab=#net13}
N 220 -430 260 -430 {lab=#net13}
N 260 -510 260 -470 {lab=VDD}
N 220 -510 260 -510 {lab=VDD}
C {iopin.sym} 620 -50 0 0 {name=p1 lab=VSS}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 450 -290 0 0 {name=R1
L=1.41
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 450 -220 0 0 {name=R2
L=1.41
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 450 -150 0 0 {name=R3
L=1.41
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 450 -80 0 0 {name=R4
L=1.41
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {lab_pin.sym} 430 -190 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 -50 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {iopin.sym} 160 -610 0 1 {name=p4 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 600 -360 0 0 {name=M3
W=1
L=0.4
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 470 -360 0 1 {name=M4
W=1
L=0.4
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 740 -50 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet3_01v8.sym} 720 -360 0 0 {name=M5
W=5
L=0.4
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 740 -490 0 1 {name=p7 sig_type=std_logic lab=VEA}
C {lab_pin.sym} 740 -450 0 1 {name=p8 sig_type=std_logic lab=VBUFFER}
C {ammeter.sym} 740 -520 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 740 -420 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet3_01v8.sym} 240 -130 0 1 {name=M7
W=4
L=0.4
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 330 -130 0 0 {name=M8
W=4
L=0.4
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 220 -50 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 350 -50 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 220 -220 0 1 {name=R5
L=2.82
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {lab_pin.sym} 240 -220 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {code_shown.sym} 1040 -380 0 0 {name=s1 only_toplevel=false value="
.control
tran 0.1u 500u uic
plot i(Vmeas) i(Vmeas1)
plot i(Vmeas2) i(Vmeas3)
plot i(Vmeas4)

.endc
"}
C {vsource.sym} 1470 -310 0 0 {name=V5 value="PULSE(0 1.8 1u 10u 1u 100u 1)" savecurrent=false}
C {vsource.sym} 1620 -310 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 1470 -280 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1470 -340 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {gnd.sym} 1620 -280 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 1620 -340 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {vsource.sym} 1470 -200 0 0 {name=V1 value="dc 0.9" savecurrent=false}
C {lab_pin.sym} 1470 -170 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1470 -230 0 0 {name=p25 sig_type=std_logic lab=VEA}
C {vsource.sym} 1470 -410 0 0 {name=V4 value=1.8 savecurrent=false}
C {lab_pin.sym} 1470 -380 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1470 -440 0 0 {name=p28 sig_type=std_logic lab=VBUFFER}
C {devices/code.sym} 1010 -160 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {ammeter.sym} 450 -450 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 620 -450 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/pfet3_01v8.sym} 600 -580 0 0 {name=M1
W=1
L=0.4
body=VDD
nf=1
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
C {sky130_fd_pr/pfet3_01v8.sym} 470 -580 0 1 {name=M2
W=1
L=0.4
body=VDD
nf=1
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
C {sky130_fd_pr/pfet3_01v8.sym} 720 -580 0 0 {name=M12
W=15
L=0.4
body=VDD
nf=1
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
C {ammeter.sym} 350 -230 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet3_01v8.sym} 240 -310 0 1 {name=M6
W=4
L=0.4
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 240 -390 0 1 {name=M9
W=4
L=0.4
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 240 -470 0 1 {name=M10
W=4
L=0.4
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
