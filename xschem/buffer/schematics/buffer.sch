v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 300 -300 300 -270 {lab=VIN}
N 300 -240 300 -170 {lab=GATE}
N 300 -110 300 -70 {lab=VSS}
N 250 -140 260 -140 {lab=IN}
N 310 -200 340 -200 {lab=GATE}
N 300 -200 310 -200 {lab=GATE}
N 300 -330 300 -300 {lab=VIN}
N 250 -270 260 -270 {lab=IN}
C {sky130_fd_pr/pfet_01v8.sym} 280 -270 0 0 {name=M2
W=2
L=0.2
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
C {iopin.sym} 300 -70 0 1 {name=p3 lab=VSS}
C {iopin.sym} 300 -330 0 1 {name=p4 lab=VIN}
C {ipin.sym} 250 -140 0 0 {name=p5 lab=IN}
C {opin.sym} 340 -200 0 0 {name=p6 lab=GATE}
C {sky130_fd_pr/pfet_01v8.sym} 280 -140 0 0 {name=M1
W=2
L=0.2
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
C {lab_pin.sym} 300 -140 0 1 {name=p2 sig_type=std_logic lab=VIN}
C {ipin.sym} 250 -270 0 0 {name=p1 lab=VBIAS}
