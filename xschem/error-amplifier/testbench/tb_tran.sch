v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 450 -220 470 -220 {lab=OUT}
N 420 -220 450 -220 {lab=OUT}
N 90 -240 120 -240 {lab=OUT}
N 440 -220 440 -160 {lab=OUT}
N 100 -160 440 -160 {lab=OUT}
N 90 -220 90 -160 {lab=OUT}
N 90 -160 100 -160 {lab=OUT}
N 90 -240 90 -220 {lab=OUT}
N 420 -350 480 -350 {lab=VDD}
N 420 -370 480 -370 {lab=IBIAS}
C {lab_pin.sym} 120 -220 0 0 {name=p3 sig_type=std_logic lab=VP}
C {lab_pin.sym} 470 -220 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 420 -240 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 -200 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -200 0 0 {name=p15 lab=IBIAS}
C {devices/code_shown.sym} 840 -340 0 0 {name=NGSPICE only_toplevel=true
value=".control
  .temp 27
  op
  tran 100n 20u
  plot OUT VP
.endc

"}
C {vsource.sym} 620 -360 0 0 {name=V5 value=1.8 savecurrent=false}
C {vsource.sym} 740 -140 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 620 -330 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -390 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 740 -110 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 740 -170 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {vsource.sym} 620 -260 0 0 {name=V1 value="PULSE(0 1.8 1u 1n 1n 5u 10u)" savecurrent=false}
C {lab_pin.sym} 620 -230 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -290 0 0 {name=p21 sig_type=std_logic lab=VP}
C {devices/code.sym} 850 -140 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 270 -220 0 0 {name=x1}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/bias-net/schematics/bias-network.sym} 270 -350 0 0 {name=x3}
C {lab_pin.sym} 420 -390 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 -310 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 420 -330 0 1 {name=p18 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 480 -350 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -370 0 1 {name=p20 sig_type=std_logic lab=IBIAS}
