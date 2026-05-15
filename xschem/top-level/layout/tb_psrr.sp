* ============================================================
* TB: PSRR (AC small-signal, PEX LDO)
* AC perturbation rides on VIN; PSRR = -20*log10(|Vout/Vin|)
* ============================================================

.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.include ./ldo_pex.spice

V_VSS VSS 0   dc 0
V_VDD VDD VSS dc 1.8
V_VIN VIN VSS dc 1.98 AC 1            ; 1V AC perturbation on input

I_LOAD OUT VSS dc 4m

Xldo VDD VSS OUT VIN ldo_flat

XC_load_a OUT net_cesr1 sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
XC_load_b OUT net_cesr2 sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
R_esr1 net_cesr1 VSS 50m
R_esr2 net_cesr2 VSS 50m

.control
  ac dec 20 1 10G
  let psrr_db = -20*log10(abs(v(OUT)/v(VIN)))
  plot psrr_db
  meas ac psrr_dc      find psrr_db at=1
  meas ac psrr_100Hz   find psrr_db at=100
  meas ac psrr_1kHz    find psrr_db at=1k
  meas ac psrr_10kHz   find psrr_db at=10k
  meas ac psrr_100kHz  find psrr_db at=100k
  meas ac psrr_1MHz    find psrr_db at=1Meg
  echo PSRR  @ DC      = $&psrr_dc    dB
  echo PSRR  @ 100Hz   = $&psrr_100Hz dB
  echo PSRR  @ 1kHz    = $&psrr_1kHz  dB
  echo PSRR  @ 10kHz   = $&psrr_10kHz dB
  echo PSRR  @ 100kHz  = $&psrr_100kHz dB
  echo PSRR  @ 1MHz    = $&psrr_1MHz  dB
.endc

.GLOBAL GND
.end
