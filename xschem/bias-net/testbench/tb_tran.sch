v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -160 60 -150 {lab=VSS}
N 60 -230 60 -220 {lab=VDD}
N 60 -50 60 -40 {lab=GND}
N 60 -120 60 -110 {lab=VSS}
C {code_shown.sym} 460 -330 0 0 {name=s1 only_toplevel=false value="

* Power supply with startup ramp

.control
tran 10n 200u
run

plot i(Vmeas) i(Vmeas1)

.endc
"}
C {sky130_fd_pr/corner.sym} 150 -180 0 0 {name=CORNER only_toplevel=true corner=tt}
C {vsource.sym} 60 -190 0 0 {name=V1 value="PWL(
+ 0n   0
+ 1u   0
+ 20u  1.8
)" savecurrent=false}
C {lab_pin.sym} 60 -230 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 -150 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {vsource.sym} 60 -80 0 0 {name=V6 value=0 savecurrent=false}
C {lab_pin.sym} 60 -120 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 150 -330 0 0 {name=x1}
C {lab_pin.sym} 300 -370 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -290 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -310 0 1 {name=p3 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 360 -330 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -350 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {ammeter.sym} 330 -330 1 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 330 -350 1 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
