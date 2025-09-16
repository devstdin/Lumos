v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 450 -390 450 -370 {lab=lvsel}
N 450 -390 540 -390 {lab=lvsel}
N 730 -390 900 -390 {lab=hvsel}
N 730 -390 730 -350 {lab=hvsel}
N 670 -390 730 -390 {lab=hvsel}
N 450 -580 450 -560 {lab=lvpsw}
N 450 -580 540 -580 {lab=lvpsw}
N 670 -580 810 -580 {lab=hvpsw}
N 790 -680 810 -680 {lab=hvpsw}
N 810 -680 810 -580 {lab=hvpsw}
N 790 -700 900 -700 {lab=#net1}
N 900 -700 900 -520 {lab=#net1}
C {devices/title.sym} 160 -30 0 0 {name=l1 author=""}
C {devices/lab_pin.sym} 900 -360 0 0 {name=p2 lab=VSS}
C {devices/vsource.sym} 280 -150 0 0 {name=V1 value=3.3}
C {devices/lab_pin.sym} 280 -120 0 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 280 -180 0 0 {name=p6 lab=VDDH}
C {devices/ammeter.sym} 900 -490 0 0 {name=Visink}
C {devices/vsource.sym} 505 -110 1 0 {name=V2 value=0
}
C {devices/lab_pin.sym} 475 -110 0 0 {name=p9 lab=0
}
C {devices/lab_pin.sym} 535 -110 0 1 {name=p10 lab=VSS}
C {devices/code.sym} 940 -200 0 0 {name=LIB_CORNER
only_toplevel=true
value=tcleval("
.csparam TB_ID=$\{::TB_ID\}
.csparam MC_RUNS=$\{::MC_RUNS\}
.csparam EXIT_NGSPICE=$\{::EXIT_NGSPICE\}
.lib $\{::IHP_MODELS\}/sg13g2.lib $\{::CORNER\}
")}
C {devices/lab_pin.sym} 160 -120 0 0 {name=p12 lab=VSS}
C {devices/lab_pin.sym} 160 -180 0 0 {name=p13 lab=TEMPERATURE}
C {devices/vsource_arith.sym} 160 -150 0 0 {name=E1 VOL=temper}
C {devices/code.sym} 1070 -200 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
* option savecurrents
save all


* dummy block for goto
if (1)
if TB_ID = 0
	goto TRAN_SW
end
if TB_ID = 1
	goto TRAN_SW
end

****************************************
label TRAN_SW
****************************************
if MC_RUNS = 0
	tran 10n 17u
	plot visink#branch
	plot lvsel, hvsel
	plot lvpsw, hvpsw
else
	tran 10n 12u
	plot visink#branch
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
C {devices/lab_pin.sym} 650 -700 0 0 {name=p11 lab=VDDH}
C {devices/vsource.sym} 505 -170 1 0 {name=V4 value=0
}
C {devices/lab_pin.sym} 475 -170 0 0 {name=p3 lab=0
}
C {devices/lab_pin.sym} 535 -170 0 1 {name=p4 lab=sub! global=true}
C {fuse.sym} 940 -430 0 0 {name=X1}
C {devices/vsource.sym} 380 -150 0 0 {name=V5 value=1.5}
C {devices/lab_pin.sym} 380 -120 0 0 {name=p7 lab=VSS}
C {devices/lab_pin.sym} 380 -180 0 0 {name=p8 lab=VDDL}
C {levelup.sym} 600 -390 0 0 {name=X2}
C {devices/lab_pin.sym} 540 -370 0 0 {name=p15 lab=VSS}
C {devices/lab_pin.sym} 540 -410 0 0 {name=p16 lab=VDDL}
C {devices/lab_pin.sym} 670 -410 0 1 {name=p17 lab=VDDH}
C {devices/lab_pin.sym} 450 -390 0 0 {name=p18 lab=lvsel}
C {devices/vsource.sym} 450 -340 0 1 {name=V6 value="PWL(0 0 1u 0 1.1u 1.5 10u 1.5 10.1u 0 12u 0 12.1u 1.5 15u 1.5 15.1u 0)"}
C {devices/lab_pin.sym} 450 -310 0 0 {name=p19 lab=VSS}
C {devices/lab_pin.sym} 730 -350 0 1 {name=p20 lab=hvsel}
C {levelup.sym} 600 -580 0 0 {name=X4}
C {devices/lab_pin.sym} 540 -560 0 0 {name=p14 lab=VSS}
C {devices/lab_pin.sym} 540 -600 0 0 {name=p21 lab=VDDL}
C {devices/lab_pin.sym} 670 -600 0 1 {name=p22 lab=VDDH}
C {devices/lab_pin.sym} 450 -580 0 0 {name=p23 lab=lvpsw}
C {devices/vsource.sym} 450 -530 0 1 {name=V3 value="PWL(0 0 0.5u 0 0.6u 1.5 8u 1.5 8.1u 0)"}
C {devices/lab_pin.sym} 450 -500 0 0 {name=p24 lab=VSS}
C {devices/lab_pin.sym} 810 -580 0 1 {name=p25 lab=hvpsw}
C {powersw.sym} 710 -700 0 0 {name=X3}
C {devices/lab_pin.sym} 650 -680 0 0 {name=p26 lab=VSS}
