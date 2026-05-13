v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -480 350 -480 {lab=VIN}
N 180 -450 310 -450 {lab=IBIAS_5uA}
N 260 -410 430 -410 {lab=#net1}
N 350 -420 350 -410 {lab=#net1}
N 260 -350 260 -300 {lab=#net2}
N 430 -350 430 -300 {lab=OUT}
N 260 -240 430 -240 {lab=VSS}
N 260 -270 260 -240 {lab=VSS}
N 430 -270 430 -240 {lab=VSS}
N 300 -270 390 -270 {lab=#net2}
N 260 -320 350 -320 {lab=#net2}
N 350 -320 350 -270 {lab=#net2}
N 140 -240 260 -240 {lab=VSS}
N 140 -420 140 -350 {lab=IBIAS_5uA}
N 140 -400 190 -400 {lab=IBIAS_5uA}
N 190 -400 200 -400 {lab=IBIAS_5uA}
N 200 -450 200 -400 {lab=IBIAS_5uA}
N 140 -480 140 -450 {lab=VIN}
N 350 -480 350 -450 {lab=VIN}
N 260 -380 430 -380 {lab=VIN}
N 430 -320 450 -320 {lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} 280 -270 0 1 {name=M1
W=4.2
L=0.6
nf=4 
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
C {sky130_fd_pr/nfet_01v8.sym} 410 -270 0 0 {name=M2
W=4.2
L=0.6
nf=4 
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -380 0 0 {name=M3
W=28
L=0.6
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} 450 -380 0 1 {name=M4
W=28
L=0.6
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} 330 -450 0 0 {name=M5
W=6.6
L=0.6
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} 160 -450 0 1 {name=M6
W=6.6
L=0.6
nf=4
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
C {lab_wire.sym} 350 -380 0 0 {name=p1 sig_type=std_logic lab=VIN
nf=4}
C {ipin.sym} 140 -350 0 0 {name=p2 lab=IBIAS_5uA}
C {ipin.sym} 220 -380 0 0 {name=p3 lab=VN}
C {ipin.sym} 470 -380 0 1 {name=p4 lab=VP
nf=4}
C {iopin.sym} 140 -480 0 1 {name=p5 lab=VIN
nf=4}
C {iopin.sym} 140 -240 0 1 {name=p6 lab=VSS}
C {opin.sym} 450 -320 0 0 {name=p7 lab=OUT}
