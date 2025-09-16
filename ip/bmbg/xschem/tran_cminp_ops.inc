* TRAN_CMINP
************
* Unity gain configuration negative slope
alter vsupp dc = 1.65
alter vsupp ac = 0
alter vsupn dc = 1.65
alter vsupn ac = 0
alter vinnac ac = 0
alter vinndc dc = 0
alter vinpac ac = 0
alter vinpdc dc = 0
alter rinn resistance = 100e12
alter rcm resistance = 0
alter rfb resistance = 100e12
alter @vinpdc[pwl] = [ 0 0 2u -1.65 ]

save all @n.x1.xmmirr.nsg13_hv_nmos[vds] @n.x1.xmmirr.nsg13_hv_nmos[vdss] @n.x1.xmmirl.nsg13_hv_nmos[vds] @n.x1.xmmirl.nsg13_hv_nmos[vdss] @n.x1.xmmir2.nsg13_hv_pmos[vdss] @n.x1.xmmir2.nsg13_hv_pmos[vds] @n.x1.xmdl.nsg13_hv_pmos[vdss] @n.x1.xmdl.nsg13_hv_pmos[vds] @n.x1.xmdr.nsg13_hv_pmos[vdss] @n.x1.xmdr.nsg13_hv_pmos[vds]

tran 1n 2u

let mmir2_sat = @n.x1.xmmir2.nsg13_hv_pmos[vds] - @n.x1.xmmir2.nsg13_hv_pmos[vdss]
let mmirl_sat = @n.x1.xmmirl.nsg13_hv_nmos[vds] - @n.x1.xmmirl.nsg13_hv_nmos[vdss]
let mmirr_sat = @n.x1.xmmirr.nsg13_hv_nmos[vds] - @n.x1.xmmirr.nsg13_hv_nmos[vdss]
let mdr_sat = @n.x1.xmdr.nsg13_hv_pmos[vds] - @n.x1.xmdr.nsg13_hv_pmos[vdss]
let mdl_sat = @n.x1.xmdl.nsg13_hv_pmos[vds] - @n.x1.xmdl.nsg13_hv_pmos[vdss]
if MC_RUNS = 0
	plot mmir2_sat mdr_sat mdl_sat mmirl_sat mmirr_sat
	write tran_cminp.raw mmir2_sat mdr_sat mdl_sat mmirl_sat mmirr_sat
	set appendwrite
end

reset

* Unity gain configuration positive slope
alter vsupp dc = 1.65
alter vsupp ac = 0
alter vsupn dc = 1.65
alter vsupn ac = 0
alter vinnac ac = 0
alter vinndc dc = 0
alter vinpac ac = 0
alter vinpdc dc = 0
alter rinn resistance = 100e12
alter rcm resistance = 0
alter rfb resistance = 100e12
alter @vinpdc[pwl] = [ 0 0 2u 1.65 ]

save all @n.x1.xmmirr.nsg13_hv_nmos[vds] @n.x1.xmmirr.nsg13_hv_nmos[vdss] @n.x1.xmmirl.nsg13_hv_nmos[vds] @n.x1.xmmirl.nsg13_hv_nmos[vdss] @n.x1.xmmir2.nsg13_hv_pmos[vdss] @n.x1.xmmir2.nsg13_hv_pmos[vds] @n.x1.xmdl.nsg13_hv_pmos[vdss] @n.x1.xmdl.nsg13_hv_pmos[vds] @n.x1.xmdr.nsg13_hv_pmos[vdss] @n.x1.xmdr.nsg13_hv_pmos[vds]	

tran 1n 2u

let mmir2_sat = @n.x1.xmmir2.nsg13_hv_pmos[vds] - @n.x1.xmmir2.nsg13_hv_pmos[vdss]
let mmirl_sat = @n.x1.xmmirl.nsg13_hv_nmos[vds] - @n.x1.xmmirl.nsg13_hv_nmos[vdss]
let mmirr_sat = @n.x1.xmmirr.nsg13_hv_nmos[vds] - @n.x1.xmmirr.nsg13_hv_nmos[vdss]
let mdr_sat = @n.x1.xmdr.nsg13_hv_pmos[vds] - @n.x1.xmdr.nsg13_hv_pmos[vdss]
let mdl_sat = @n.x1.xmdl.nsg13_hv_pmos[vds] - @n.x1.xmdl.nsg13_hv_pmos[vdss]
if MC_RUNS = 0
	plot mmir2_sat mdr_sat mdl_sat mmirl_sat mmirr_sat
	write tran_cminp.raw mmir2_sat mdr_sat mdl_sat mmirl_sat mmirr_sat
end

meas tran m_pos_cm_bound find tran2.vinp when mmir2_sat=0 fall=1

let pos_cm_bound[run] = m_pos_cm_bound
let neg_cm_bound[run] = abs(9e999-9e999)

