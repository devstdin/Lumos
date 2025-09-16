v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 570 -120 570 -100 {
lab=VSS}
N 570 -100 600 -100 {
lab=VSS}
N 190 -1510 190 -280 {lab=VSS}
N 250 -1510 250 -300 {lab=IOVDD}
N 310 -1510 310 -320 {lab=VSS}
N 370 -1510 370 -340 {lab=VDD}
N 850 -1590 850 -280 {lab=VSS}
N 910 -1590 910 -300 {lab=IOVDD}
N 970 -1590 970 -320 {lab=VSS}
N 1030 -1590 1030 -340 {lab=VDD}
N 450 -120 450 -100 {
lab=VSS}
N 450 -100 570 -100 {
lab=VSS}
N 1720 -1290 1760 -1290 {lab=#net1}
N 1820 -1290 1850 -1290 {lab=TRIOUT4_PAD}
N 1720 -1120 1760 -1120 {lab=#net2}
N 1820 -1120 1850 -1120 {lab=TRIOUT30_PAD}
N 1720 -960 1760 -960 {lab=#net3}
N 1820 -960 1850 -960 {lab=TRIOUT16_PAD}
N -350 -1320 -310 -1320 {lab=#net4}
N -250 -1320 -220 -1320 {lab=INOUT4_PAD}
N -350 -1150 -310 -1150 {lab=#net5}
N -250 -1150 -220 -1150 {lab=INOUT30_PAD}
N -350 -990 -310 -990 {lab=#net6}
N -250 -990 -220 -990 {lab=INOUT16_PAD}
N 300 -120 300 -100 {lab=VSS}
N 300 -100 450 -100 {lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author=""}
C {devices/vsource.sym} 570 -150 0 0 {name=VSUPP value="DC 1.2 AC 0"}
C {devices/lab_pin.sym} 570 -180 0 0 {name=p6 lab=VDD}
C {devices/vsource.sym} 625 -100 1 0 {name=V2 value=0
}
C {devices/lab_pin.sym} 655 -100 0 1 {name=p9 lab=0
}
C {devices/code.sym} 880 -200 0 0 {name=LIB_CORNER
only_toplevel=true
format="tcleval( @value )"
value="
.csparam TB_ID=$\{::TB_ID\}
.csparam MC_RUNS=$\{::MC_RUNS\}
.csparam EXIT_NGSPICE=$\{::EXIT_NGSPICE\}
.lib $\{::IHP_MODELS\}/sg13g2.lib $\{::CORNER\}
"}
C {devices/lab_pin.sym} 140 -120 0 0 {name=p12 lab=VSS}
C {devices/lab_pin.sym} 140 -180 0 0 {name=p13 lab=TEMPERATURE}
C {devices/vsource_arith.sym} 140 -150 0 0 {name=E1 VOL=temper}
C {devices/code.sym} 1030 -200 0 0 {name=NGSPICE
only_toplevel=true
*format="tcleval( @value )"
value="* this experimental option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=0

.control

* dummy block for goto
if (1)
if TB_ID = 0
	goto TRAN_FREQ
end
if TB_ID = 1
	goto TRAN_FREQ
end

****************************************
label TRAN_FREQ
save all
****************************************
if MC_RUNS = 0
	tran 10n 2000n
	plot ANALOG_PAD ANALOG_PADRES
	plot IN_PAD IN_P2C
	plot INOUT16_PAD INOUT16_C2P INOUT16_C2P_EN INOUT16_P2C
	plot INOUT30_PAD INOUT30_C2P INOUT30_C2P_EN INOUT30_P2C
	plot INOUT4_PAD INOUT4_C2P INOUT4_C2P_EN INOUT4_P2C
	plot OUT16_PAD OUT16_C2P
	plot OUT30_PAD OUT30_C2P
	plot OUT4_PAD OUT4_C2P
	plot TRIOUT16_PAD TRIOUT16_C2P TRIOUT16_C2P_EN
	plot TRIOUT30_PAD TRIOUT30_C2P TRIOUT30_C2P_EN
	plot TRIOUT4_PAD TRIOUT4_C2P TRIOUT4_C2P_EN
else
	goto done
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
C {IOPadAnalog.sym} 190 -420 0 0 {name=X1}
C {IOPadIOVdd.sym} 190 -550 0 0 {name=X2
}
C {IOPadIOVss.sym} 190 -670 0 0 {name=X3
}
C {IOPadIn.sym} 190 -760 0 0 {name=X4
}
C {IOPadOut16mA.sym} 850 -440 0 0 {name=X8
}
C {IOPadOut30mA.sym} 850 -610 0 0 {name=X9
}
C {IOPadOut4mA.sym} 850 -780 0 0 {name=X10
}
C {IOPadVdd.sym} 850 -1400 0 0 {name=X14
}
C {IOPadVss.sym} 850 -1540 0 0 {name=X15
}
C {devices/lab_pin.sym} 190 -280 0 1 {name=p1 lab=VSS}
C {devices/lab_pin.sym} 250 -300 0 1 {name=p2 lab=IOVDD}
C {devices/lab_pin.sym} 310 -320 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} 370 -340 0 1 {name=p11 lab=VDD}
C {devices/lab_pin.sym} 850 -280 0 1 {name=p15 lab=VSS}
C {devices/lab_pin.sym} 910 -300 0 1 {name=p16 lab=IOVDD}
C {devices/lab_pin.sym} 970 -320 0 1 {name=p17 lab=VSS}
C {devices/lab_pin.sym} 1030 -340 0 1 {name=p18 lab=VDD}
C {devices/vsource.sym} 450 -150 0 0 {name=VSUPP1 value="DC 3.3 AC 0"}
C {devices/lab_pin.sym} 300 -100 0 0 {name=p19 lab=VSS}
C {devices/lab_pin.sym} 450 -180 0 0 {name=p20 lab=IOVDD}
C {devices/lab_pin.sym} 460 -420 0 1 {name=p5 lab=ANALOG_PAD}
C {devices/lab_pin.sym} 460 -480 0 1 {name=p21 lab=ANALOG_PADRES}
C {devices/lab_pin.sym} 460 -800 0 1 {name=p22 lab=IN_P2C}
C {devices/lab_pin.sym} 100 -760 0 0 {name=p23 lab=IN_PAD}
C {devices/lab_pin.sym} 100 -930 0 0 {name=p24 lab=INOUT16_PAD}
C {devices/lab_pin.sym} 460 -910 0 1 {name=p25 lab=INOUT16_C2P_EN}
C {devices/lab_pin.sym} 460 -930 0 1 {name=p26 lab=INOUT16_C2P}
C {devices/lab_pin.sym} 460 -1020 0 1 {name=p27 lab=INOUT16_P2C}
C {devices/lab_pin.sym} 100 -1150 0 0 {name=p28 lab=INOUT30_PAD}
C {devices/lab_pin.sym} 460 -1240 0 1 {name=p29 lab=INOUT30_P2C}
C {devices/lab_pin.sym} 460 -1150 0 1 {name=p30 lab=INOUT30_C2P}
C {devices/lab_pin.sym} 460 -1130 0 1 {name=p31 lab=INOUT30_C2P_EN}
C {devices/lab_pin.sym} 100 -1370 0 0 {name=p32 lab=INOUT4_PAD}
C {devices/lab_pin.sym} 460 -1460 0 1 {name=p33 lab=INOUT4_P2C}
C {devices/lab_pin.sym} 460 -1370 0 1 {name=p34 lab=INOUT4_C2P}
C {devices/lab_pin.sym} 460 -1350 0 1 {name=p35 lab=INOUT4_C2P_EN}
C {devices/lab_pin.sym} 760 -440 0 0 {name=p36 lab=OUT16_PAD}
C {devices/lab_pin.sym} 760 -610 0 0 {name=p37 lab=OUT30_PAD}
C {devices/lab_pin.sym} 760 -780 0 0 {name=p38 lab=OUT4_PAD}
C {devices/lab_pin.sym} 760 -950 0 0 {name=p39 lab=TRIOUT16_PAD}
C {devices/lab_pin.sym} 760 -1120 0 0 {name=p40 lab=TRIOUT30_PAD}
C {devices/lab_pin.sym} 760 -1290 0 0 {name=p41 lab=TRIOUT4_PAD}
C {devices/lab_pin.sym} 1120 -440 0 1 {name=p42 lab=OUT16_C2P}
C {devices/lab_pin.sym} 1120 -610 0 1 {name=p43 lab=OUT30_C2P}
C {devices/lab_pin.sym} 1120 -780 0 1 {name=p44 lab=OUT4_C2P}
C {devices/lab_pin.sym} 1120 -950 0 1 {name=p45 lab=TRIOUT16_C2P}
C {devices/lab_pin.sym} 1120 -930 0 1 {name=p46 lab=TRIOUT16_C2P_EN}
C {devices/lab_pin.sym} 1120 -1120 0 1 {name=p47 lab=TRIOUT30_C2P}
C {devices/lab_pin.sym} 1120 -1100 0 1 {name=p48 lab=TRIOUT30_C2P_EN}
C {devices/lab_pin.sym} 1120 -1290 0 1 {name=p49 lab=TRIOUT4_C2P}
C {devices/lab_pin.sym} 1120 -1270 0 1 {name=p50 lab=TRIOUT4_C2P_EN}
C {devices/code.sym} 730 -200 0 0 {name=PADS
only_toplevel=true
format="tcleval( @value )"
value="
.include $\{::IHP_PADS\}
"}
C {IOPadInOut16mA.sym} 190 -930 0 0 {name=X5
}
C {IOPadInOut30mA.sym} 190 -1150 0 0 {name=X6
}
C {IOPadInOut4mA.sym} 190 -1370 0 0 {name=X7
}
C {IOPadTriOut16mA.sym} 850 -950 0 0 {name=X11
}
C {IOPadTriOut30mA.sym} 850 -1120 0 0 {name=X12
}
C {IOPadTriOut4mA.sym} 850 -1290 0 0 {name=X13
}
C {vsource.sym} -350 -450 0 0 {name=V1 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} -350 -420 0 1 {name=p3 lab=VSS}
C {devices/lab_pin.sym} -350 -480 0 1 {name=p4 lab=ANALOG_PAD}
C {vsource.sym} 1340 -1260 0 0 {name=V3 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} 1340 -1230 0 1 {name=p7 lab=VSS}
C {vsource.sym} 1520 -1260 0 0 {name=V4 value="PULSE(0 3.3 0 1n 1n 500n 1000n)" savecurrent=false}
C {devices/lab_pin.sym} 1520 -1230 0 1 {name=p14 lab=VSS}
C {devices/lab_pin.sym} 1340 -1290 0 1 {name=p8 lab=TRIOUT4_C2P}
C {devices/lab_pin.sym} 1520 -1290 0 1 {name=p51 lab=TRIOUT4_C2P_EN}
C {vsource.sym} 1720 -1260 0 0 {name=V5 value="PULSE(0 1.0 0 1n 1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} 1720 -1230 0 1 {name=p52 lab=VSS}
C {devices/lab_pin.sym} 1850 -1290 0 1 {name=p53 lab=TRIOUT4_PAD}
C {res.sym} 1790 -1290 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 1340 -1090 0 0 {name=V6 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} 1340 -1060 0 1 {name=p54 lab=VSS}
C {vsource.sym} 1520 -1090 0 0 {name=V7 value="PULSE(0 3.3 0 1n 1n 500n 1000n)" savecurrent=false}
C {devices/lab_pin.sym} 1520 -1060 0 1 {name=p55 lab=VSS}
C {vsource.sym} 1720 -1090 0 0 {name=V8 value="PULSE(0 1.0 0 1n 1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} 1720 -1060 0 1 {name=p58 lab=VSS}
C {res.sym} 1790 -1120 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1340 -1120 0 1 {name=p56 lab=TRIOUT30_C2P}
C {devices/lab_pin.sym} 1520 -1120 0 1 {name=p57 lab=TRIOUT30_C2P_EN}
C {devices/lab_pin.sym} 1850 -1120 0 1 {name=p59 lab=TRIOUT30_PAD}
C {vsource.sym} 1340 -930 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} 1340 -900 0 1 {name=p60 lab=VSS}
C {vsource.sym} 1520 -930 0 0 {name=V10 value="PULSE(0 3.3 0 1n 1n 500n 1000n)" savecurrent=false}
C {devices/lab_pin.sym} 1520 -900 0 1 {name=p61 lab=VSS}
C {vsource.sym} 1720 -930 0 0 {name=V11 value="PULSE(0 1.0 0 1n 1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} 1720 -900 0 1 {name=p62 lab=VSS}
C {res.sym} 1790 -960 3 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1340 -960 0 1 {name=p63 lab=TRIOUT16_C2P}
C {devices/lab_pin.sym} 1520 -960 0 1 {name=p64 lab=TRIOUT16_C2P_EN}
C {devices/lab_pin.sym} 1850 -960 0 1 {name=p65 lab=TRIOUT16_PAD}
C {vsource.sym} 1340 -750 0 0 {name=V12 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} 1340 -720 0 1 {name=p66 lab=VSS}
C {devices/lab_pin.sym} 1340 -780 0 1 {name=p67 lab=OUT4_C2P}
C {vsource.sym} 1340 -580 0 0 {name=V13 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} 1340 -550 0 1 {name=p68 lab=VSS}
C {devices/lab_pin.sym} 1340 -610 0 1 {name=p69 lab=OUT30_C2P}
C {vsource.sym} 1340 -410 0 0 {name=V14 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} 1340 -380 0 1 {name=p70 lab=VSS}
C {devices/lab_pin.sym} 1340 -440 0 1 {name=p71 lab=OUT16_C2P}
C {vsource.sym} -730 -1290 0 0 {name=V15 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} -730 -1260 0 1 {name=p72 lab=VSS}
C {vsource.sym} -550 -1290 0 0 {name=V16 value="PULSE(0 3.3 0 1n 1n 500n 1000n)" savecurrent=false}
C {devices/lab_pin.sym} -550 -1260 0 1 {name=p73 lab=VSS}
C {vsource.sym} -350 -1290 0 0 {name=V17 value="PULSE(0 1.0 0 1n 1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} -350 -1260 0 1 {name=p76 lab=VSS}
C {res.sym} -280 -1320 3 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -730 -1120 0 0 {name=V18 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} -730 -1090 0 1 {name=p78 lab=VSS}
C {vsource.sym} -550 -1120 0 0 {name=V19 value="PULSE(0 3.3 0 1n 1n 500n 1000n)" savecurrent=false}
C {devices/lab_pin.sym} -550 -1090 0 1 {name=p79 lab=VSS}
C {vsource.sym} -350 -1120 0 0 {name=V20 value="PULSE(0 1.0 0 1n 1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} -350 -1090 0 1 {name=p80 lab=VSS}
C {res.sym} -280 -1150 3 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -730 -960 0 0 {name=V21 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} -730 -930 0 1 {name=p84 lab=VSS}
C {vsource.sym} -550 -960 0 0 {name=V22 value="PULSE(0 3.3 0 1n 1n 500n 1000n)" savecurrent=false}
C {devices/lab_pin.sym} -550 -930 0 1 {name=p85 lab=VSS}
C {vsource.sym} -350 -960 0 0 {name=V23 value="PULSE(0 1.0 0 1n 1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} -350 -930 0 1 {name=p86 lab=VSS}
C {res.sym} -280 -990 3 0 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -730 -1320 0 1 {name=p74 lab=INOUT4_C2P}
C {devices/lab_pin.sym} -730 -1150 0 1 {name=p81 lab=INOUT30_C2P}
C {devices/lab_pin.sym} -730 -990 0 1 {name=p87 lab=INOUT16_C2P}
C {devices/lab_pin.sym} -220 -1320 0 1 {name=p75 lab=INOUT4_PAD}
C {devices/lab_pin.sym} -220 -1150 0 1 {name=p77 lab=INOUT30_PAD}
C {devices/lab_pin.sym} -220 -990 0 1 {name=p82 lab=INOUT16_PAD}
C {devices/lab_pin.sym} -550 -1320 0 1 {name=p83 lab=INOUT4_C2P_EN}
C {devices/lab_pin.sym} -550 -1150 0 1 {name=p88 lab=INOUT30_C2P_EN}
C {devices/lab_pin.sym} -550 -990 0 1 {name=p89 lab=INOUT16_C2P_EN}
C {vsource.sym} -350 -780 0 0 {name=V24 value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} -350 -750 0 1 {name=p90 lab=VSS}
C {devices/lab_pin.sym} -350 -810 0 1 {name=p91 lab=IN_PAD}
C {devices/vsource.sym} 300 -150 0 0 {name=VSUPP2 value="DC 3.3 AC 0"}
C {devices/lab_pin.sym} 300 -180 0 0 {name=p92 lab=sub! global=true}
