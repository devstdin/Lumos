* TRAN_FUSE
***********
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
alter @vtb1[pwl] = [ 0 1 ]

option temp=$te

save AVDD, DVDD, IODVDD, IOAVDD, fprog, FTOP, RST, TEMPERATURE, x1.fsel7, x1.fsel6, x1.fsel5, x1.fsel4, x1.fsel3, x1.fsel2, x1.fsel1, x1.fsel0 

option RELTOL=0.00001
*option ABSTOL=1e-12
option RSHUNT=100e6
*option TRTOL=1
*option METHOD=Gear

tran 100n 40u

if MC_RUNS = 0
	if EXIT_NGSPICE = 0
		plot Vidvdd#branch, Viiodvdd#branch, Viavdd#branch, Viioavdd#branch
		plot v.x1.Vivddesd#branch, v.x1.Vivssesd#branch
		plot v.x1.vivthref#branch, v.x1.viosc#branch, v.x1.vildo#branch, v.x1.vibmbg#branch, v.x1.vifuse#branch, v.x1.visource#branch
		plot AVDD, DVDD
		plot Vifprog#branch
		plot fprog, FTOP
		plot x1.fsel7, x1.fsel6, x1.fsel5, x1.fsel4, x1.fsel3, x1.fsel2, x1.fsel1, x1.fsel0
		plot RST
	end
end

meas tran m_temp find v(TEMPERATURE) at=1u

let max_i[run] = maximum(Vifprog#branch)
let max_vtop[run] = maximum(FTOP)
let temp[run] = m_temp

if MC_RUNS = 0
	write tran.raw all
	set appendwrite
end

