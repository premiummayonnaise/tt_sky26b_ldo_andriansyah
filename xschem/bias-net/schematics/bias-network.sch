v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -140 180 -100 {lab=VREF}
N 140 -140 180 -140 {lab=VREF}
N 140 -220 140 -190 {lab=VREF}
N 140 -280 290 -280 {lab=#net1}
N 290 -220 440 -220 {lab=#net2}
N 440 -280 600 -280 {lab=#net3}
N 600 -220 750 -220 {lab=#net4}
N 750 -330 750 -280 {lab=#net5}
N 600 -390 750 -390 {lab=#net6}
N 440 -330 600 -330 {lab=#net7}
N 290 -390 440 -390 {lab=#net8}
N 140 -330 290 -330 {lab=#net9}
N 140 -410 140 -390 {lab=#net10}
N 140 -70 140 -50 {lab=VSS}
N 140 -190 140 -130 {lab=VREF}
N 180 -100 290 -100 {lab=VREF}
N 250 -70 250 -50 {lab=VSS}
N 290 -100 400 -100 {lab=VREF}
N 360 -70 360 -50 {lab=VSS}
N 250 -140 250 -130 {lab=IBIAS1}
N 360 -140 360 -130 {lab=IBIAS2}
N 140 -470 290 -470 {lab=#net11}
N 290 -410 440 -410 {lab=#net12}
N 440 -470 600 -470 {lab=#net13}
N 600 -410 750 -410 {lab=#net14}
N 750 -520 750 -470 {lab=#net15}
N 600 -580 750 -580 {lab=#net16}
N 440 -520 600 -520 {lab=#net17}
N 290 -580 440 -580 {lab=#net18}
N 140 -520 290 -520 {lab=#net19}
N 140 -590 140 -580 {lab=VDD}
N 250 -180 250 -140 {lab=IBIAS1}
N 360 -180 360 -140 {lab=IBIAS2}
N 950 -580 970 -580 {lab=VSS}
N 950 -580 950 -520 {lab=VSS}
N 950 -520 970 -520 {lab=VSS}
N 950 -490 970 -490 {lab=VSS}
N 950 -490 950 -430 {lab=VSS}
N 950 -430 970 -430 {lab=VSS}
C {sky130_fd_pr/nfet3_01v8.sym} 160 -100 0 1 {name=M2
W=3
L=2
body=VSS
nf=4
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 140 -250 0 0 {name=R1
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 290 -250 0 0 {name=R2
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 440 -250 0 0 {name=R3
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 600 -250 0 0 {name=R4
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 750 -250 0 0 {name=R5
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 140 -360 0 0 {name=R6
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 290 -360 0 0 {name=R7
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 440 -360 0 0 {name=R8
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 600 -360 0 0 {name=R9
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 750 -360 0 0 {name=R10
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {iopin.sym} 140 -590 0 1 {name=p1 lab=VDD}
C {iopin.sym} 140 -50 0 1 {name=p2 lab=VSS}
C {lab_pin.sym} 120 -360 0 0 {name=p3 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 270 -360 0 0 {name=p4 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 420 -360 0 0 {name=p5 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 580 -360 0 0 {name=p6 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 730 -360 0 0 {name=p7 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 730 -250 0 0 {name=p8 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 580 -250 0 0 {name=p9 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 420 -250 0 0 {name=p10 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 270 -250 0 0 {name=p11 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 120 -250 0 0 {name=p12 sig_type=std_logic lab=VSS
L=6.9}
C {sky130_fd_pr/nfet3_01v8.sym} 270 -100 0 1 {name=M1
W=3
L=2
body=VSS
nf=4
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 250 -50 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet3_01v8.sym} 380 -100 0 1 {name=M3
W=3
L=2
body=VSS
nf=4
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 360 -50 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {opin.sym} 250 -180 0 0 {name=p17 sig_type=std_logic lab=IBIAS1}
C {opin.sym} 360 -180 0 0 {name=p18 sig_type=std_logic lab=IBIAS2}
C {opin.sym} 140 -180 0 1 {name=p21 sig_type=std_logic lab=VREF}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 140 -440 0 0 {name=R11
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 290 -440 0 0 {name=R12
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 440 -440 0 0 {name=R13
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 600 -440 0 0 {name=R14
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 750 -440 0 0 {name=R15
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 140 -550 0 0 {name=R16
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 290 -550 0 0 {name=R17
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 440 -550 0 0 {name=R18
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 600 -550 0 0 {name=R19
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 750 -550 0 0 {name=R20
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 120 -550 0 0 {name=p15 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 270 -550 0 0 {name=p16 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 420 -550 0 0 {name=p19 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 580 -550 0 0 {name=p20 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 730 -550 0 0 {name=p28 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 730 -440 0 0 {name=p29 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 580 -440 0 0 {name=p30 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 420 -440 0 0 {name=p31 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 270 -440 0 0 {name=p32 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 120 -440 0 0 {name=p34 sig_type=std_logic lab=VSS
L=6.9}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 970 -550 0 0 {name=R21
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 970 -460 0 0 {name=R22
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 950 -550 0 0 {name=p22 sig_type=std_logic lab=VSS
L=6.9}
C {lab_pin.sym} 950 -460 0 0 {name=p23 sig_type=std_logic lab=VSS
L=6.9}
