* TRAN_STARTUP
**************
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
alter @vtb0[pwl] = [ 0 0 ]
alter @vtb1[pwl] = [ 0 0 ]

option temp=$te

save AVDD, DVDD, IODVDD, IOAVDD, VOUT, RST, TEMPERATURE

option RELTOL=0.00001
*option ABSTOL=1e-12
option RSHUNT=100e6
*option TRTOL=1
*option METHOD=Gear

tran 100n 160u
*tran 100n 1010u

if MC_RUNS = 0
	if EXIT_NGSPICE = 0
		plot Vidvdd#branch, Viiodvdd#branch, Viavdd#branch, Viioavdd#branch
		plot v.x1.x1.Vivddesd#branch, v.x1.x1.Vivssesd#branch
		plot v.x1.x1.vivthref#branch, v.x1.x1.viosc#branch, v.x1.x1.vildo#branch, v.x1.x1.vibmbg#branch, v.x1.x1.vifuse#branch, v.x1.x1.visource#branch
		plot AVDD, DVDD
		plot VOUT
		plot RST
	end
end

meas tran m_temp find v(TEMPERATURE) at=1u
meas tran m_ldo_out find VOUT at=159u

let max_i_a[run] = maximum(Viavdd#branch)
let max_i_d[run] = maximum(Vidvdd#branch)
let max_i_io_a[run] = maximum(Viioavdd#branch)
let max_i_io_d[run] = maximum(Viiodvdd#branch)
let ldo_out_over[run] = maximum(VOUT)-m_ldo_out
let ldo_out_end[run] = m_ldo_out
let temp[run] = m_temp
let t_supup_a[run] = $t_supup_a
let t_supup_d[run] = $t_supup_d

if MC_RUNS = 0
	write tran.raw all
	set appendwrite
end

