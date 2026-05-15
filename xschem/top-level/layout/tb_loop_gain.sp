* ============================================================
* TB: Loop gain (PEX LDO) -- STB-style voltage injection at OUT
*
* IMPORTANT -- READ THIS:
* Your original loop-gain.sch used Middlebrook-style breaking of
* the loop at VFB and re-injecting through ideal R/C (the 159k+4.55F
* "AC short" trick) plus a separate EA + ideal pass FET.
* That approach REQUIRES access to internal nodes (VFB, EA out, gate).
*
* In your flat PEX (ldo_flat with pins VDD/VSS/OUT/VIN), all those
* nodes are buried -- you cannot probe them.
*
* The only post-layout-valid method is to break the loop at an
* EXPOSED node (OUT) with a series AC voltage source. We measure
* the return ratio T = -V(b)/V(a) where the AC source sits between
* nodes a and b. This is the Tian/Middlebrook 1-source approximation;
* it is exact when looking at OUT because the load impedance is well
* defined and we don't need a current-source companion sweep.
*
* If you want full Tian (V+I sources, two sweeps), say so and I'll
* write that too -- it's the same TB with one extra current-injection
* run and a combined post-process.
*
* If you need PROPER Middlebrook loop-gain at VFB, you MUST re-extract
* hierarchically so VFB is a hierarchical net (xldo.VFB).
* ============================================================

.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice ss
.include ./ldo_pex.spice

V_VSS VSS 0   dc 0
V_VDD VDD VSS dc 1.8
V_VIN VIN VSS dc 1.98

I_LOAD OUTLOAD VSS dc 2m

* --- DUT, with the loop broken at OUT ---
* LDO drives node "a"; load + Cload + feedback path sense "b".
* AC source V_inj injects between them; DC short, AC stimulus.
Xldo VDD VSS a VIN ldo_flat

V_inj a b dc 0 AC 1

* Load + Cload + ESR on node "b" (the sensed/feedback side)
R_load_dummy b OUTLOAD 0          ; tie load current to b
XC_load_a b nz1 sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
XC_load_b b nz2 sky130_fd_pr__cap_mim_m3_1 W=6 L=6 MF=4 m=4
R_esr1 nz1 VSS 50m
R_esr2 nz2 VSS 50m

* NOTE: For this injection to be valid, the loop's small-signal
* impedance looking into "a" (LDO output) must be << impedance
* looking into "b" (load+Cload). At LDO outputs that's almost
* always true (Rout_ldo ~ a few ohms or less, Cload sets a much
* higher impedance at low f). At UGF check that this still holds.

.control
  ac dec 20 1 100G
  * Return ratio T(s) ~ -V(b)/V(a). Loop gain = T.
  let T       = -v(b)/v(a)
  let gain_db = db(T)
  let phase_deg = ph(T) * 180/PI

  meas ac ugf when gain_db=0 fall=1
  meas ac phase_at_ugf find phase_deg at=ugf

  let phase_wrapped = phase_at_ugf
  if phase_wrapped > 180
    let phase_wrapped = phase_wrapped - 360
  end
  if phase_wrapped < -180
    let phase_wrapped = phase_wrapped + 360
  end
  let pm_actual = 180 + phase_wrapped

  echo Unity Gain Frequency:    $&ugf Hz
  echo Raw phase at UGF:        $&phase_at_ugf Degrees
  echo Unwrapped phase:         $&phase_wrapped Degrees
  echo Calculated Phase Margin: $&pm_actual Degrees

  plot gain_db phase_deg
.endc

.GLOBAL GND
.end
