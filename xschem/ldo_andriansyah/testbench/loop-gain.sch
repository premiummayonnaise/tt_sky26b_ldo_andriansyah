v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1070 -300 1110 -300 {lab=PROBE}
N 1000 -300 1070 -300 {lab=PROBE}
N 890 -300 890 -240 {lab=VFB}
N 890 -300 940 -300 {lab=VFB}
N 1110 -320 1110 -280 {lab=PROBE}
N 1110 -390 1110 -380 {lab=OUT}
N 1110 -510 1110 -470 {lab=VIN}
N 1110 -220 1110 -200 {lab=VSS}
N 1110 -390 1190 -390 {lab=OUT}
N 1110 -410 1110 -390 {lab=OUT}
N 1190 -390 1290 -390 {lab=OUT}
N 1270 -330 1270 -300 {lab=VSS}
N 850 -440 870 -440 {lab=#net1}
N 870 -440 930 -440 {lab=#net1}
N 1110 -300 1130 -300 {lab=PROBE}
N 930 -440 1070 -440 {lab=#net1}
N 930 -390 980 -390 {lab=#net1}
N 930 -440 930 -390 {lab=#net1}
N 1040 -390 1110 -390 {lab=OUT}
N 1210 -30 1210 0 {lab=VSS}
N 1210 -190 1210 -170 {lab=#net2}
N 1210 -390 1210 -250 {lab=OUT}
N 1210 -110 1210 -90 {lab=#net3}
C {res.sym} 970 -300 1 0 {name=R3
value=159k
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 890 -210 0 0 {name=C1
m=1
value=4.55
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 890 -180 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {opin.sym} 890 -300 0 1 {name=p19 sig_type=std_logic lab=VFB}
C {lab_pin.sym} 1130 -300 0 1 {name=p1 sig_type=std_logic lab=PROBE}
C {sky130_fd_pr/corner.sym} 70 -640 0 0 {name=CORNER only_toplevel=true corner=ss}
C {code_shown.sym} 1350 -680 0 0 {name=s1 only_toplevel=false value="

.temp 
.control
ac dec 20 1 100G

let gain_db = db(v(PROBE))
let phase_deg = ph(v(PROBE)) * 180/PI

meas ac ugf when gain_db=0 fall=1
meas ac phase_at_ugf find phase_deg at=ugf

* Wrap phase into (-360, 0] so PM math is consistent regardless of branch
let phase_wrapped = phase_at_ugf
if phase_wrapped > 180
  let phase_wrapped = phase_wrapped - 360
end
if phase_wrapped < -180
  let phase_wrapped = phase_wrapped + 360
end

let pm_actual = 180 + phase_wrapped

echo Unity Gain Frequency: $&ugf Hz
echo Raw phase at UGF:     $&phase_at_ugf Degrees
echo Unwrapped phase:      $&phase_wrapped Degrees
echo Calculated Phase Margin: $&pm_actual Degrees

plot gain_db phase_deg

.endc


"}
C {lab_pin.sym} 520 -300 0 0 {name=p28 sig_type=std_logic lab=IN}
C {lab_pin.sym} 580 -300 0 1 {name=p29 sig_type=std_logic lab=OUT}
C {sky130_fd_pr/cap_mim_m3_1.sym} 550 -300 1 0 {name=C2 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1010 -390 1 0 {name=C3 model=cap_mim_m3_1 W=6 L=6 MF=4 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1110 -350 0 0 {name=R6
L=69
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1110 -250 0 0 {name=R7
L=69
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 120 -440 0 0 {name=p15 sig_type=std_logic lab=VFB}
C {lab_pin.sym} 120 -460 0 0 {name=p3 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 420 -460 0 1 {name=p7 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1110 -510 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1090 -350 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -420 0 0 {name=p11 sig_type=std_logic lab=VEA}
C {lab_pin.sym} 1110 -200 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 420 -420 0 1 {name=p30 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_01v8.sym} 1090 -440 0 0 {name=M2
W=125
L=0.2
body=VIN
nf=128
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 1290 -390 0 1 {name=p31 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 420 -440 0 1 {name=p13 lab=IN}
C {isource.sym} 1270 -360 0 0 {name=I1 value=2m}
C {lab_pin.sym} 1270 -300 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 850 -460 0 1 {name=p16 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 550 -440 0 0 {name=p32 lab=IN}
C {lab_pin.sym} 550 -420 0 0 {name=p33 sig_type=std_logic lab=VE}
C {lab_pin.sym} 850 -420 0 1 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -460 0 0 {name=p35 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1090 -250 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 150 -230 0 1 {name=p4 sig_type=std_logic lab=VEA}
C {lab_pin.sym} 150 -170 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {vsource.sym} 380 -200 0 0 {name=V7 value=0 savecurrent=false}
C {gnd.sym} 380 -170 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 380 -230 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {vsource.sym} 380 -310 0 0 {name=V4 value="dc 1.98" savecurrent=false}
C {lab_pin.sym} 380 -280 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 -340 0 0 {name=p17 sig_type=std_logic lab=VIN}
C {vsource.sym} 270 -200 0 0 {name=V5 value="DC 0.6 AC 1" savecurrent=false}
C {lab_pin.sym} 270 -170 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 270 -230 0 0 {name=p36 sig_type=std_logic lab=VREF}
C {isource.sym} 150 -200 0 0 {name=I2 value=2.5u}
C {lab_pin.sym} 150 -340 0 1 {name=p39 sig_type=std_logic lab=VE}
C {lab_pin.sym} 150 -280 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {isource.sym} 150 -310 0 0 {name=I3 value=2.5u}
C {res.sym} 1210 -60 2 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1210 0 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 700 -440 0 0 {name=x1}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 270 -440 0 0 {name=x2}
C {capa-2.sym} 1210 -220 0 0 {name=C4
m=1
value=4
footprint=1206
device=polarized_capacitor}
C {ind.sym} 1210 -140 0 0 {name=L1
m=1
value=2n
footprint=1206
device=inductor}
