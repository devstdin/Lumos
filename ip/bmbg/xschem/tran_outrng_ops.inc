* TRAN_OUTRNG
*************
* x(-10) gain configuration negative input slope
alter vsupp dc = 1.65
alter vsupp ac = 0
alter vsupn dc = 1.65
alter vsupn ac = 0
alter vinnac ac = 0
alter vinndc dc = 0
alter vinpac ac = 0
alter vinpdc dc = 0
alter rinn resistance = 10
alter rcm resistance = 100e12
alter rfb resistance = 100
alter @vinndc[pwl] = [ 0 0 2u -1.65 ]

save all @n.x1.xmmir3.nsg13_hv_pmos[vds] @n.x1.xmmir3.nsg13_hv_pmos[vdss] @n.x1.xmo.nsg13_hv_nmos[vds] @n.x1.xmo.nsg13_hv_nmos[vdss]
tran 1n 2u

reset

* x(-10) gain configuration positive input slope
alter vsupp dc = 1.65
alter vsupp ac = 0
alter vsupn dc = 1.65
alter vsupn ac = 0
alter vinnac ac = 0
alter vinndc dc = 0
alter vinpac ac = 0
alter vinpdc dc = 0
alter rinn resistance = 10
alter rcm resistance = 100e12
alter rfb resistance = 100
alter @vinndc[pwl] = [ 0 0 2u 1.65 ]

save all @n.x1.xmmir3.nsg13_hv_pmos[vds] @n.x1.xmmir3.nsg13_hv_pmos[vdss] @n.x1.xmo.nsg13_hv_nmos[vds] @n.x1.xmo.nsg13_hv_nmos[vdss]
tran 1n 2u

let mir3_sat = tran1.@n.x1.xmmir3.nsg13_hv_pmos[vds] - tran1.@n.x1.xmmir3.nsg13_hv_pmos[vdss]
if MC_RUNS = 0
	plot mir3_sat tran1.opout
end

let mo_sat = tran2.@n.x1.xmo.nsg13_hv_nmos[vds] - tran2.@n.x1.xmo.nsg13_hv_nmos[vdss]
if MC_RUNS = 0
	plot mo_sat tran2.opout
end

meas tran m_neg_out_comp find tran2.opout when mo_sat=0 fall=1
meas tran m_pos_out_comp find tran1.opout when mir3_sat=0 fall=1

let neg_out_comp[run] = m_neg_out_comp
let pos_out_comp[run] = m_pos_out_comp
