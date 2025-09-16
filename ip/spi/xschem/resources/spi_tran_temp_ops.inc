* TRAN_TEMP
***********
option temp=$te
save VDD, reset, a_cs, a_sclk, a_din, a_dout, a_dout_en, TEMPERATURE, c0_0, c0_1, c0_2, c0_3, c0_4, c0_5, c0_6, c0_7, c1_0, c1_1, c1_2, c1_3, c1_4, c1_5, c1_6, c1_7, c2_0, c2_1, c2_2, c2_3, c2_4, c2_5, c2_6, c2_7

echo cosim-param: #v(temperature)=$te #
set echo_var=1.5
echo cosim-param: #avdd=$echo_var #

option RELTOL=0.00001
*option ABSTOL=1e-12
option RSHUNT=100e6
option TRTOL=1

tran 40n 130u
*tran 20n 5600u

if MC_RUNS = 0
	if EXIT_NGSPICE = 0
		plot VDD reset 
		plot c0_0 c0_1 c0_2 c0_3 c0_4 c0_5 c0_6 c0_7
		plot c1_0 c1_1 c1_2 c1_3 c1_4 c1_5 c1_6 c1_7
		plot c2_0 c2_1 c2_2 c2_3 c2_4 c2_5 c2_6 c2_7
		plot a_cs a_sclk a_din a_dout a_dout_en
		*write sar8_tran_temp_gaw.raw vin vref reset x1.c0 x1.c1 x1.c2 x1.c3 x1.c4 x1.c5 x1.c6 x1.c7 a_cnv_busy a_sdo a_cs a_sclk x1.x2.vp x1.x2.cmp_out x1.x2.vsh a_cs
	end
end

meas tran m_vdd find v(VDD) at=1u
meas tran m_temp find v(TEMPERATURE) at=1u

let vdd[run] = m_vdd
let temp[run] = m_temp

if MC_RUNS = 0
	write sar8_tran_temp.raw vin vref TEMPERATURE
	set appendwrite
end
