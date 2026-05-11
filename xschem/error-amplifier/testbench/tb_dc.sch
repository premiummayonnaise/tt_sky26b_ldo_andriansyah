v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -250 120 -250 {lab=VCM}
N 90 -230 120 -230 {lab=VCM}
N 450 -230 470 -230 {lab=OUT}
N 420 -230 450 -230 {lab=OUT}
N 470 -170 470 -140 {lab=VSS}
N 90 -250 90 -230 {lab=VCM}
N 90 -210 120 -210 {lab=IBIAS}
C {lab_pin.sym} 90 -240 0 0 {name=p3 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 470 -230 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {capa-2.sym} 470 -200 0 0 {name=C2
m=1
value=2.672p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 420 -250 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 -210 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 -210 0 0 {name=p15 lab=IBIAS}
C {lab_pin.sym} 470 -140 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 820 -380 0 0 {name=NGSPICE only_toplevel=true
value=".control
  .temp 27
  op
  dc V1 0 1.8 0.001
  plot OUT
  plot -i(V5)
.endc

"}
C {vsource.sym} 740 -270 0 0 {name=V5 value=1.8 savecurrent=false}
C {vsource.sym} 740 -150 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 740 -240 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 740 -300 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 740 -120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 740 -180 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -180 0 1 {name=p5 lab=IBIAS}
C {lab_pin.sym} 620 -120 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {isource.sym} 620 -150 0 0 {name=I4 value="2.5u" savecurrent=false}
C {vsource.sym} 620 -270 0 0 {name=V1 value="DC 2.5" savecurrent=false}
C {lab_pin.sym} 620 -240 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -300 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {devices/code.sym} 850 -150 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 270 -230 0 0 {name=x1}
