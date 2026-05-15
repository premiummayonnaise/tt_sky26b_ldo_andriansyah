* ============================================================
* TB: DC load regulation (Iload sweep, PEX LDO)
* ============================================================

.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.include ./ldo_pex.spice

V_VDD VDD 0 dc 1.8
V_VIN VIN 0 dc 1.98
V_VSS VSS 0 dc 0

I_LOAD OUT VSS dc 4m

Xldo VDD VSS OUT VIN ldo_flat

XC_load_a OUT net_cesr1 sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
XC_load_b OUT net_cesr2 sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
R_esr1 net_cesr1 VSS 50m
R_esr2 net_cesr2 VSS 50m

.control
  dc I_LOAD 10u 4m 10u
  plot v(OUT)
  meas dc vout_min find v(OUT) at=4m
  meas dc vout_max find v(OUT) at=10u
  let load_reg_mV = (vout_max - vout_min)*1000
  echo Load regulation DV_OUT [mV] over 10uA..4mA = $&load_reg_mV
.endc

.GLOBAL GND
.end
