v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {/foss/designs/2026/tt_sky26b_ldo_andriansyah/xschem/buffer/schematics/buffer.sym} 320 -150 0 0 {name=x1}
C {vsource.sym} 70 -330 0 0 {name=V2 value="ac 1m dc 0.9" savecurrent=false}
C {lab_pin.sym} 70 -300 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 70 -360 0 0 {name=p11 sig_type=std_logic lab=VN}
C {vsource.sym} 220 -440 0 0 {name=V5 value=1.8 savecurrent=false}
C {vsource.sym} 70 -230 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 220 -410 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 220 -470 0 0 {name=p4 sig_type=std_logic lab=VDD1}
C {gnd.sym} 70 -200 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 70 -260 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 70 -470 0 1 {name=p5 lab=IBIAS1}
C {lab_pin.sym} 70 -410 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {isource.sym} 70 -440 0 0 {name=I4 value="2.5u" savecurrent=false}
C {lab_pin.sym} 480 -270 0 0 {name=p1 sig_type=std_logic lab=VDD1}
C {lab_pin.sym} 480 -250 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 -230 0 0 {name=p6 lab=IBIAS1}
C {lab_pin.sym} 460 -320 0 0 {name=p9 sig_type=std_logic lab=VN}
C {lab_pin.sym} 560 -320 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 670 -510 0 0 {name=NGSPICE only_toplevel=true
value=".control
 
  ac dec 100 1 100MEG
  save all

  * --- Original Logic ---
  let vd = v(vn)
  let Av = db( v(OUT) / vd)
  let phase = 180*cph( v(OUT) )/pi

  * --- Output ---
  print f_0db phase_at_unity
  plot OUT
  plot psrr
  plot av
  plot acm
  plot cmrr
  plot phase
  plot p_total
.endc

"}
C {devices/code.sym} 380 -600 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
