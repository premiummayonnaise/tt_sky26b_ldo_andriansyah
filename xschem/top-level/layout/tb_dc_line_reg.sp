* ============================================================
* TB: DC line regulation (Vin sweep, PEX LDO)
* Replaces hierarchical TB; ldo_flat is the full extracted LDO
* Ports: VDD VSS OUT VIN
* ============================================================

.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.include ./ldo_pex.spice          ; <-- path to your ldo_flat .subckt PEX

* --- Supplies ---
V_VDD VDD  0   dc 1.8             ; bias rail (BGR/bias-net supply)
V_VIN VIN  0   dc 1.98            ; LDO input, swept below
V_VSS VSS  0   dc 0

* --- Load ---
I_LOAD OUT VSS dc 4m

* --- DUT: flat PEX LDO ---
Xldo  VDD VSS OUT VIN  ldo_flat

* --- External output cap (kept; this is Cload, not compensation) ---
* If your PEX already contains the on-die Cload, delete this.
XC_load_a OUT net_cesr1 sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
XC_load_b OUT net_cesr2 sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
R_esr1 net_cesr1 VSS 50m
R_esr2 net_cesr2 VSS 50m

.control
  dc V_VIN 1.62 1.98 0.001
  plot v(OUT) v(VIN)
  meas dc vout_at_1p98 find v(OUT) at=1.98
  meas dc vout_at_1p62 find v(OUT) at=1.62
  let line_reg_mV = (vout_at_1p98 - vout_at_1p62)*1000
  echo Line regulation DV_OUT [mV] over 1.62V..1.98V = $&line_reg_mV
.endc

.GLOBAL GND
.end
