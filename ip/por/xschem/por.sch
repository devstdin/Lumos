v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 500 -670 700 -670 { lab=VDD}
N 70 -260 160 -260 {lab=IBIAS}
N 160 -260 160 -240 {lab=IBIAS}
N 160 -180 160 -130 {lab=VSS}
N 70 -130 160 -130 { lab=VSS}
N 200 -210 220 -210 {lab=IBIAS}
N 220 -260 220 -210 {lab=IBIAS}
N 160 -260 220 -260 {lab=IBIAS}
N 220 -210 280 -210 {lab=IBIAS}
N 320 -180 320 -130 {lab=VSS}
N 160 -130 320 -130 { lab=VSS}
N 320 -670 320 -630 {lab=VDD}
N 70 -670 320 -670 { lab=VDD}
N 320 -550 320 -500 {lab=#net1}
N 320 -550 380 -550 {lab=#net1}
N 320 -570 320 -550 {lab=#net1}
N 380 -600 380 -550 {lab=#net1}
N 360 -600 380 -600 {lab=#net1}
N 320 -420 380 -420 {lab=#net2}
N 320 -440 320 -420 {lab=#net2}
N 380 -470 380 -420 {lab=#net2}
N 360 -470 380 -470 {lab=#net2}
N 380 -470 460 -470 {lab=#net2}
N 380 -600 460 -600 {lab=#net1}
N 500 -670 500 -630 {lab=VDD}
N 320 -670 500 -670 { lab=VDD}
N 500 -570 500 -500 {lab=#net3}
N 500 -260 500 -240 {lab=#net4}
N 500 -180 500 -130 {lab=VSS}
N 540 -210 560 -210 {lab=#net4}
N 560 -260 560 -210 {lab=#net4}
N 500 -260 560 -260 {lab=#net4}
N 320 -130 500 -130 { lab=VSS}
N 700 -180 700 -130 {lab=VSS}
N 700 -670 700 -630 {lab=VDD}
N 700 -550 700 -500 {lab=#net5}
N 700 -550 760 -550 {lab=#net5}
N 700 -570 700 -550 {lab=#net5}
N 760 -600 760 -550 {lab=#net5}
N 740 -600 760 -600 {lab=#net5}
N 700 -420 760 -420 {lab=#net6}
N 700 -440 700 -420 {lab=#net6}
N 760 -470 760 -420 {lab=#net6}
N 740 -470 760 -470 {lab=#net6}
N 500 -130 700 -130 { lab=VSS}
N 560 -210 660 -210 {lab=#net4}
N 890 -670 890 -630 {lab=VDD}
N 890 -570 890 -500 {lab=#net7}
N 700 -670 890 -670 {lab=VDD}
N 760 -470 850 -470 {lab=#net6}
N 760 -600 850 -600 {lab=#net5}
N 890 -130 1140 -130 { lab=VSS}
N 1140 -520 1140 -490 {lab=#net8}
N 1140 -280 1140 -240 {lab=#net9}
N 1140 -180 1140 -130 {lab=VSS}
N 1250 -400 1400 -400 {lab=RESET}
N 1140 -400 1140 -370 {lab=RESET}
N 700 -420 700 -240 {lab=#net6}
N 500 -440 500 -260 {lab=#net4}
N 320 -420 320 -240 {lab=#net2}
N 1140 -430 1140 -400 {lab=RESET}
N 1140 -670 1140 -620 {lab=VDD}
N 1060 -590 1100 -590 {lab=vp}
N 1060 -340 1060 -210 {lab=vp}
N 1060 -210 1100 -210 {lab=vp}
N 1060 -340 1100 -340 {lab=vp}
N 1060 -460 1100 -460 {lab=vp}
N 1060 -590 1060 -460 {lab=vp}
N 890 -410 890 -380 {lab=vp}
N 1060 -410 1060 -340 {lab=vp}
N 1140 -520 1310 -520 {lab=#net8}
N 1140 -560 1140 -520 {lab=#net8}
N 1310 -520 1310 -490 {lab=#net8}
N 1250 -460 1270 -460 {lab=RESET}
N 1250 -460 1250 -400 {lab=RESET}
N 1240 -400 1250 -400 {lab=RESET}
N 1310 -430 1310 -420 {lab=VSS}
N 1240 -340 1270 -340 {lab=RESET}
N 1240 -400 1240 -340 {lab=RESET}
N 1140 -400 1240 -400 {lab=RESET}
N 1310 -380 1310 -370 {lab=VDD}
N 1140 -280 1310 -280 {lab=#net9}
N 1140 -310 1140 -280 {lab=#net9}
N 1310 -310 1310 -280 {lab=#net9}
N 890 -670 1140 -670 {lab=VDD}
N 890 -410 1060 -410 {lab=vp}
N 890 -440 890 -410 {lab=vp}
N 1060 -460 1060 -410 {lab=vp}
N 890 -320 890 -240 {lab=#net10}
N 890 -180 890 -130 {lab=VSS}
N 700 -130 890 -130 { lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 70 -130 2 0 {name=p1 lab=VSS
}
C {devices/iopin.sym} 70 -670 2 0 {name=p2 lab=VDD

}
C {devices/opin.sym} 1400 -400 0 0 {name=p4 lab=RESET}
C {devices/lab_pin.sym} 160 -210 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 320 -600 0 0 {name=l17 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 340 -600 0 1 {name=M8
l=0.8u
w=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {ammeter.sym} 890 -350 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/ipin.sym} 70 -260 2 1 {name=p5 lab=IBIAS}
C {devices/lab_pin.sym} 320 -470 0 0 {name=l3 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 340 -470 0 1 {name=M12
l=0.8u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 180 -210 0 1 {name=M1
l=0.8u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 300 -210 0 0 {name=M2
l=0.8u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 320 -210 0 1 {name=l5 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 480 -600 0 0 {name=M9
l=0.8u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 480 -470 0 0 {name=M13
l=0.8u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 500 -600 0 1 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -470 0 1 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -210 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 520 -210 0 1 {name=M3
l=0.8u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 700 -600 0 0 {name=l8 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 720 -600 0 1 {name=M10
l=0.8u
w=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 700 -470 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 720 -470 0 1 {name=M14
l=0.8u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 680 -210 0 0 {name=M4
l=0.8u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 700 -210 0 1 {name=l10 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 870 -600 0 0 {name=M11
l=0.8u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 870 -470 0 0 {name=M15
l=0.8u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 890 -600 0 1 {name=l11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 890 -470 0 1 {name=l12 sig_type=std_logic lab=VDD}
C {sg13g2_pr/cap_cmim.sym} 890 -210 2 0 {name=C1
model=cap_cmim
w=20e-6
l=20e-6
m=8
spiceprefix=X}
C {sg13g2_pr/sg13_hv_pmos.sym} 1120 -590 0 0 {name=M16
l=0.8u
w=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1120 -460 0 0 {name=M17
l=0.8u
w=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1140 -590 0 1 {name=l13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1140 -460 0 1 {name=l14 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_nmos.sym} 1120 -210 0 0 {name=M5
l=0.8u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1140 -210 0 1 {name=l15 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 1120 -340 0 0 {name=M6
l=0.8u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1140 -340 0 1 {name=l16 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 1290 -460 0 0 {name=M18
l=0.8u
w=0.5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1310 -460 0 1 {name=l18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1310 -420 0 1 {name=l19 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 1290 -340 0 0 {name=M7
l=0.8u
w=0.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1310 -380 0 1 {name=l20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1310 -340 0 1 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 890 -390 0 1 {name=l22 sig_type=std_logic lab=vp}
