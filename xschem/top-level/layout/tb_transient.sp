* ============================================================
* TB: Line + Load transient (PEX LDO)
* - Two parallel DUTs: one stresses load step, one stresses line step
* - Matches your original line-load-transient.sch intent
* ============================================================

.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.include ./ldo_pex.spice

V_VSS  VSS 0   dc 0
V_VDD  VDD VSS dc 1.8

* ---------- DUT #1: LOAD-STEP TB (Vin static, Iload pulses) ----------
V_VIN1 VIN1 VSS dc 1.98
I_LD1  OUT1 VSS PULSE(1m 4m 20u 2u 2u 100u 200u)
Xldo1  VDD VSS OUT1 VIN1 ldo_flat

* Cload + ESR + bond-wire L on OUT1 (kept from your original TB)
XC1a OUT1 nz1a sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
XC1b OUT1 nz1b sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
R_esr1a nz1a nl1 50m
R_esr1b nz1b nl1 50m
L_bond1 nl1 VSS 1n
* note: L+R+C in series to ground forms the realistic load network

* ---------- DUT #2: LINE-STEP TB (Vin pulses, Iload static) ----------
V_VIN2 VIN2 VSS PULSE(1.62 1.98 20u 5u 5u 100u 200u)
I_LD2  OUT2 VSS dc 4m
Xldo2  VDD VSS OUT2 VIN2 ldo_flat

XC2a OUT2 nz2a sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
XC2b OUT2 nz2b sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
R_esr2a nz2a nl2 50m
R_esr2b nz2b nl2 50m
L_bond2 nl2 VSS 1n

.control
  tran 50n 400u
  plot v(OUT1)                ; load-step response
  plot v(OUT2) v(VIN2)        ; line-step response
  meas tran vout1_max max v(OUT1) from=20u to=400u
  meas tran vout1_min min v(OUT1) from=20u to=400u
  meas tran vout2_max max v(OUT2) from=20u to=400u
  meas tran vout2_min min v(OUT2) from=20u to=400u
  let dvout_load_mV = (vout1_max - vout1_min)*1000
  let dvout_line_mV = (vout2_max - vout2_min)*1000
  echo Load-step DV_OUT [mV] = $&dvout_load_mV
  echo Line-step DV_OUT [mV] = $&dvout_line_mV
.endc

.GLOBAL GND
.end
