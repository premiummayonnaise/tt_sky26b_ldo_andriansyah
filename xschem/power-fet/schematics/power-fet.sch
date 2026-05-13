v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 250 -260 250 -190 {lab=VIN}
N 250 -190 250 -160 {lab=VIN}
N 250 -130 250 -70 {lab=A}
N 150 -160 210 -160 {lab=#net1}
C {sky130_fd_pr/pfet_01v8.sym} 230 -160 0 0 {name=M1
W=31.25
L=0.2
nf=64
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 250 -260 0 0 {name=p1 lab=VIN}
C {iopin.sym} 150 -160 0 1 {name=p2 lab=B}
C {iopin.sym} 250 -70 0 1 {name=p3 lab=A}
