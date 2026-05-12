v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 730 -220 730 -210 {lab=VSS}
N 730 -290 730 -280 {lab=VDD}
N 730 -110 730 -100 {lab=GND}
N 730 -180 730 -170 {lab=VSS}
C {code_shown.sym} 690 -460 0 0 {name=s1 only_toplevel=false value="

.control
	DC V1 0 1.8 0.001
	plot i(Vmeas) i(Vmeas1)
	plot VREF

.endc
"}
C {sky130_fd_pr/corner.sym} 820 -240 0 0 {name=CORNER only_toplevel=true corner=tt}
C {vsource.sym} 730 -250 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} 730 -290 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 730 -210 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {vsource.sym} 730 -140 0 0 {name=V6 value=0 savecurrent=false}
C {lab_pin.sym} 730 -180 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {gnd.sym} 730 -100 0 0 {name=l1 lab=GND}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 360 -350 0 0 {name=x1}
C {lab_pin.sym} 510 -390 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 510 -310 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 510 -330 0 1 {name=p3 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 510 -350 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 510 -370 0 1 {name=p5 sig_type=std_logic lab=VDD}
