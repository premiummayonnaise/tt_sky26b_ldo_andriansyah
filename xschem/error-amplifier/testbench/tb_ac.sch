v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 -650 140 -650 {lab=VP}
N 110 -630 140 -630 {lab=VN}
N 530 -630 550 -630 {lab=OUT}
N 500 -630 530 -630 {lab=OUT}
N 550 -570 550 -540 {lab=VSS}
N 440 -630 500 -630 {lab=OUT}
N 110 -470 140 -470 {lab=VCM}
N 110 -450 140 -450 {lab=VCM}
N 530 -450 550 -450 {lab=OUT2}
N 500 -450 530 -450 {lab=OUT2}
N 550 -390 550 -360 {lab=VSS}
N 440 -450 500 -450 {lab=OUT2}
N 110 -470 110 -450 {lab=VCM}
N 530 -290 550 -290 {lab=OUT3}
N 500 -290 530 -290 {lab=OUT3}
N 550 -230 550 -200 {lab=VSS}
N 440 -290 500 -290 {lab=OUT3}
N 500 -290 500 -220 {lab=OUT3}
N 110 -270 110 -220 {lab=#net1}
N 110 -220 110 -210 {lab=#net1}
N 110 -210 260 -210 {lab=#net1}
N 320 -210 500 -210 {lab=OUT3}
N 500 -220 500 -210 {lab=OUT3}
N 110 -290 110 -270 {lab=#net1}
N 110 -310 140 -310 {lab=#net1}
N 110 -310 110 -290 {lab=#net1}
C {vsource.sym} 750 -450 0 0 {name=V2 value="ac -1m dc 0.9" savecurrent=false}
C {vsource.sym} 750 -360 0 0 {name=V3 value="ac 1m dc 0.9" savecurrent=false}
C {lab_pin.sym} 750 -420 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 750 -330 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 750 -480 0 0 {name=p11 sig_type=std_logic lab=VN}
C {lab_pin.sym} 750 -390 0 0 {name=p12 sig_type=std_logic lab=VP}
C {devices/code_shown.sym} 1020 -900 0 0 {name=NGSPICE only_toplevel=true
value=".control
  .temp 27
  op
  ac dec 100 1 100MEG
  save all

  * --- Original Logic ---
  let vd = v(vp) - v(vn)
  let Av = db( v(OUT) / vd)
  let phase = 180*cph( v(OUT) )/pi

  * --- New Measurement Snippet ---
  * We use the 'Av' and 'phase' vectors created above
  meas ac f_0db when Av = 0
  meas ac phase_at_unity find phase when Av = 0
  
  * Note: p_total needs a definition to be plotted
  * Assuming p_total is VDD * Total Current:
  let p_total = v(vdd) * i(Vdd)

  * --- Original CMRR & PSRR calculation ---
  let Acm = db( v(OUT2)/vcm)
  let cmrr = Av - Acm
  let psrr = -20*log10(OUT3)

  * --- Output ---
  print f_0db phase_at_unity
  plot psrr
  plot av
  plot acm
  plot cmrr
  plot phase
  plot p_total
.endc

"}
C {vsource.sym} 900 -450 0 0 {name=V5 value=1.8 savecurrent=false}
C {vsource.sym} 900 -360 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 900 -420 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 900 -480 0 0 {name=p4 sig_type=std_logic lab=VDD1}
C {gnd.sym} 900 -330 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 900 -390 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 -630 0 0 {name=p1 sig_type=std_logic lab=VN}
C {lab_pin.sym} 110 -650 0 0 {name=p3 sig_type=std_logic lab=VP}
C {lab_pin.sym} 550 -630 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {capa-2.sym} 550 -600 0 0 {name=C2
m=1
value=1.5p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 440 -650 0 1 {name=p13 sig_type=std_logic lab=VDD1}
C {lab_pin.sym} 440 -610 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 750 -590 0 1 {name=p5 lab=IBIAS1}
C {lab_pin.sym} 750 -530 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {isource.sym} 750 -560 0 0 {name=I4 value="2.5u" savecurrent=false}
C {lab_pin.sym} 140 -610 0 0 {name=p15 lab=IBIAS1}
C {lab_pin.sym} 550 -540 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/code.sym} 1040 -170 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {lab_pin.sym} 110 -460 0 0 {name=p16 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 550 -450 0 1 {name=p18 sig_type=std_logic lab=OUT2}
C {capa-2.sym} 550 -420 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 440 -470 0 1 {name=p19 sig_type=std_logic lab=VDD2}
C {lab_pin.sym} 440 -430 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 -430 0 0 {name=p21 lab=IBIAS2}
C {lab_pin.sym} 550 -360 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {vsource.sym} 750 -250 0 0 {name=V1 value="ac 1m dc 0.9" savecurrent=false}
C {lab_pin.sym} 750 -220 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 750 -280 0 0 {name=p25 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 750 -700 0 1 {name=p10 lab=IBIAS2}
C {lab_pin.sym} 750 -640 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {isource.sym} 750 -670 0 0 {name=I1 value="2.5u" savecurrent=false}
C {vsource.sym} 900 -550 0 0 {name=V4 value=1.8 savecurrent=false}
C {lab_pin.sym} 900 -520 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 900 -580 0 0 {name=p28 sig_type=std_logic lab=VDD2}
C {lab_pin.sym} 140 -290 0 0 {name=p29 sig_type=std_logic lab=VPR}
C {lab_pin.sym} 550 -290 0 1 {name=p30 sig_type=std_logic lab=OUT3}
C {capa-2.sym} 550 -260 0 0 {name=C3
m=1
value=1.5p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 440 -310 0 1 {name=p31 sig_type=std_logic lab=VDDr}
C {lab_pin.sym} 440 -270 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -200 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {vsource.sym} 900 -250 0 0 {name=V6 value="DC 1.8 AC 1" savecurrent=false}
C {lab_pin.sym} 900 -220 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 900 -280 0 0 {name=p36 sig_type=std_logic lab=VDDr}
C {ind.sym} 290 -210 1 0 {name=L1
m=1
value=0.25
footprint=1206
device=inductor}
C {vsource.sym} 750 -150 0 0 {name=V8 value=" dc 0.9" savecurrent=false}
C {lab_pin.sym} 750 -120 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 750 -180 0 0 {name=p38 sig_type=std_logic lab=VPR}
C {lab_pin.sym} 750 -820 0 1 {name=p39 lab=IBIAS3}
C {lab_pin.sym} 750 -760 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {isource.sym} 750 -790 0 0 {name=I2 value="2.5u" savecurrent=false}
C {lab_pin.sym} 140 -270 0 0 {name=p33 lab=IBIAS3}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 290 -630 0 0 {name=x1}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 290 -450 0 0 {name=x2}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/error-amplifier/error-amplifier.sym} 290 -290 0 0 {name=x3}
