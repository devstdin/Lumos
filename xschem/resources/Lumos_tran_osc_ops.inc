* TRAN_OSC
**********
* Supply
alter @viodvdd[pwl] = [ 0 0 $t_supup_d 2.5]
alter @vioavdd[pwl] = [ 0 0 $t_supup_a 3.3]
alter @vdvdd[pwl] = [ 0 0 $t_supup_d 1.5]
alter @vavdd[pwl] = [ 0 0 $t_supup_a 3.3]

* Reset
let rst_delay_0 = max($t_supup_d, $t_supup_a) + 1us
let rst_delay_1 = max($t_supup_d, $t_supup_a) + 1.5us
alter @vdigres[pwl] = [ 0 1.5 $&rst_delay_0 1.5 $&rst_delay_1 0 ]

* Select digital testbench to start
alter @vtb0[pwl] = [ 0 1 ]
alter @vtb1[pwl] = [ 0 0 ]

option temp=$te

save AVDD, DVDD, IODVDD, IOAVDD, VOUT, RST, TEMPERATURE, OSC

option RELTOL=0.00001
*option ABSTOL=1e-12
option RSHUNT=100e6
*option TRTOL=1
*option METHOD=Gear

*tran 5n 110u
tran 5n 40u

if MC_RUNS = 0
	if EXIT_NGSPICE = 0
		plot Vidvdd#branch, Viiodvdd#branch, Viavdd#branch, Viioavdd#branch
		plot v.x1.x1.Vivddesd#branch, v.x1.x1.Vivssesd#branch
		plot v.x1.x1.vivthref#branch, v.x1.x1.viosc#branch, v.x1.x1.vildo#branch, v.x1.x1.vibmbg#branch, v.x1.x1.vifuse#branch, v.x1.x1.visource#branch
		plot AVDD, DVDD
		plot VOUT
		plot OSC
		plot RST
	end
end

meas tran m_high_v find v(DVDD) at=1u
meas tran m_temp find v(TEMPERATURE) at=1u
let vddz = \{m_high_v/2\}
meas tran m_first_high trig v(OSC_OUT) val=vddz td=5u rise=1 targ v(OSC_OUT) val=vddz td=5u fall=1
meas tran m_first_per trig v(OSC_OUT) val=vddz td=5u rise=1 targ v(OSC_OUT) val=vddz td=5u rise=2

let temp[run] = m_temp
let first_high[run] = m_first_high
let first_period[run] = m_first_per
let first_dutycycle_percent[run] = \{100/m_first_per*m_first_high\}

if MC_RUNS = 0
	write tran.raw all
	set appendwrite
end

