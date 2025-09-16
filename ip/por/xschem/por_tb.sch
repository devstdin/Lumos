v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 360 -300 420 -300 {lab=VPOR}
N 420 -300 420 -280 {lab=VPOR}
N 420 -300 450 -300 {lab=VPOR}
N 420 -220 420 -200 {lab=VSS}
N 80 -300 200 -300 {lab=#net1}
N 80 -470 80 -460 {lab=VDD}
N 80 -400 80 -380 {lab=#net2}
N 80 -320 80 -300 {lab=#net1}
N 200 -400 200 -380 {lab=VDD}
C {devices/title.sym} 160 -30 0 0 {name=l1 author=""}
C {devices/lab_pin.sym} 200 -270 0 0 {name=p2 lab=VSS}
C {devices/vsource.sym} 280 -130 0 0 {name=V1 value=3.3}
C {devices/lab_pin.sym} 280 -100 0 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 280 -160 0 0 {name=p6 lab=VDD}
C {devices/vsource.sym} 395 -90 1 0 {name=V2 value=0
}
C {devices/lab_pin.sym} 365 -90 0 0 {name=p9 lab=0
}
C {devices/lab_pin.sym} 425 -90 0 1 {name=p10 lab=VSS}
C {devices/code.sym} 820 -200 0 0 {name=LIB_CORNER
only_toplevel=true
value=tcleval("
.csparam TB_ID=$\{::TB_ID\}
.csparam MC_RUNS=$\{::MC_RUNS\}
.csparam EXIT_NGSPICE=$\{::EXIT_NGSPICE\}
.lib $\{::IHP_MODELS\}/sg13g2.lib $\{::CORNER\}
")}
C {devices/lab_pin.sym} 160 -100 0 0 {name=p12 lab=VSS}
C {devices/lab_pin.sym} 160 -160 0 0 {name=p13 lab=TEMPERATURE}
C {devices/vsource_arith.sym} 160 -130 0 0 {name=E1 VOL=temper}
C {devices/code.sym} 970 -200 0 0 {name=NGSPICE
only_toplevel=true
value="* this experimental option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=0

.control
* option savecurrents
*save all

define aunif(nom, avar) (nom + avar * sunif(0))

* dummy block for goto
if (1)
if TB_ID = 0
	goto TRAN_STARTUP
end
if TB_ID = 1
	goto TRAN_STARTUP
end

****************************************
label TRAN_STARTUP
****************************************
if MC_RUNS = 0
	let veclen=3
	let startup_t = vector(veclen)
	let run=0
	foreach v_sweep 1.8 2.5 3.3
	*foreach v_sweep 3.3
		save VPOR, VSWEEP
		alter vdummy=$v_sweep
		alter @v1[pwl] = [ 0 0 0.1u 0 1u $v_sweep]
		alter @I0[pwl] = [ 0 0 0.1u 0 0.5u 6u]
  		tran 100n 15m
		*plot v.x1.vmeas1#branch
		*plot vbias#branch
		*plot vsup#branch
  		plot VPOR
		*plot VDD
		*plot x1.vp
		meas tran m_up when VPOR=1 fall=1
		let startup_t[run] = m_up
		write tran.raw all
		let run = run + 1
		set appendwrite
		reset
	end
	print startup_t > tran.csv
else
	let startup_t = vector(MC_RUNS)
	let run=0
	dowhile run < MC_RUNS
		echo MC-RUN: $&run
		let v_sweep = aunif(2.55, 0.75)
		alter vdummy = $&v_sweep
		alter @v1[pwl] = [ 0 0 0.1u 0 1u $&v_sweep ]
		alter @I0[pwl] = [ 0 0 0.1u 0 0.5u 6u]
		save VPOR
		tran 100n 15m
		*plot VPOR
		meas tran m_up when VPOR=1 fall=1
		let startup_t[run] = m_up
 		reset
		let run = run + 1
	end
	print startup_t > tran.csv
end
goto done

****************************************
label done
****************************************
if EXIT_NGSPICE > 0.0
	exit
end
end
.endc
" }
C {por.sym} 280 -350 0 0 {name=X1}
C {devices/lab_pin.sym} 200 -400 0 1 {name=p15 lab=VDD}
C {devices/capa.sym} 420 -250 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 420 -200 0 0 {name=p1 lab=VSS}
C {isource.sym} 80 -430 0 0 {name=I0 value=6u}
C {devices/lab_pin.sym} 80 -470 0 0 {name=p4 lab=VDD}
C {devices/lab_pin.sym} 450 -300 0 1 {name=p3 lab=VPOR}
C {ammeter.sym} 80 -350 0 0 {name=Vbias savecurrent=true spice_ignore=0}
C {ammeter.sym} 200 -350 0 0 {name=Vsup savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 610 -130 0 0 {name=Vdummy value=3.3}
C {devices/lab_pin.sym} 610 -100 0 0 {name=p7 lab=VSS}
C {devices/lab_pin.sym} 610 -160 0 0 {name=p8 lab=VSWEEP}
