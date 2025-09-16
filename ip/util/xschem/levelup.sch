v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -180 320 -160 {lab=VSS}
N 200 -160 320 -160 {lab=VSS}
N 320 -250 320 -240 {lab=INB}
N 270 -210 280 -210 {lab=IN}
N 270 -250 270 -210 {lab=IN}
N 270 -290 280 -290 {lab=IN}
N 200 -250 270 -250 {lab=IN}
N 270 -290 270 -250 {lab=IN}
N 400 -250 440 -250 {lab=INB}
N 320 -260 320 -250 {lab=INB}
N 790 -220 790 -160 {lab=VSS}
N 660 -180 660 -160 {lab=VSS}
N 660 -250 660 -240 {lab=#net1}
N 610 -210 620 -210 {lab=INB}
N 610 -290 620 -290 {lab=INB}
N 610 -290 610 -210 {lab=INB}
N 660 -160 790 -160 {lab=VSS}
N 660 -250 750 -250 {lab=#net1}
N 660 -260 660 -250 {lab=#net1}
N 480 -220 480 -160 {lab=VSS}
N 320 -160 480 -160 {lab=VSS}
N 400 -210 420 -210 {lab=INB}
N 400 -250 400 -210 {lab=INB}
N 320 -250 400 -250 {lab=INB}
N 200 -340 320 -340 {lab=VDDL}
N 320 -340 320 -320 {lab=VDDL}
N 660 -340 660 -320 {lab=VDDL}
N 610 -340 660 -340 {lab=VDDL}
N 480 -160 660 -160 {lab=VSS}
N 480 -440 480 -280 {lab=#net2}
N 790 -380 790 -280 {lab=#net3}
N 520 -500 600 -500 {lab=#net3}
N 600 -500 660 -440 {lab=#net3}
N 660 -440 790 -440 {lab=#net3}
N 790 -470 790 -440 {lab=#net3}
N 660 -500 750 -500 {lab=#net2}
N 600 -440 660 -500 {lab=#net2}
N 480 -440 600 -440 {lab=#net2}
N 480 -470 480 -440 {lab=#net2}
N 790 -160 1020 -160 {lab=VSS}
N 1020 -220 1020 -160 {lab=VSS}
N 1020 -380 1020 -280 {lab=OUT}
N 790 -560 1020 -560 {lab=VDDH}
N 1020 -560 1020 -530 {lab=VDDH}
N 790 -560 790 -530 {lab=VDDH}
N 480 -560 790 -560 {lab=VDDH}
N 480 -560 480 -530 {lab=VDDH}
N 200 -560 480 -560 {lab=VDDH}
N 960 -500 980 -500 {lab=#net3}
N 960 -380 960 -250 {lab=#net3}
N 960 -250 980 -250 {lab=#net3}
N 790 -380 960 -380 {lab=#net3}
N 790 -440 790 -380 {lab=#net3}
N 960 -500 960 -380 {lab=#net3}
N 1020 -380 1060 -380 {lab=OUT}
N 1020 -470 1020 -380 {lab=OUT}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 200 -160 2 0 {name=p1 lab=VSS
}
C {devices/iopin.sym} 200 -340 2 0 {name=p2 lab=VDDL

}
C {devices/lab_pin.sym} 480 -250 0 1 {name=p5 lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 460 -250 0 0 {name=M1
l=0.5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 200 -250 0 0 {name=p3 lab=IN}
C {sg13g2_pr/sg13_lv_nmos.sym} 300 -210 0 0 {name=M2
l=0.13u
w=2.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 -290 0 0 {name=M3
l=0.13u
w=4.61u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 320 -290 0 1 {name=p4 lab=VDDL}
C {devices/lab_pin.sym} 320 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 790 -250 0 1 {name=p7 lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 770 -250 0 0 {name=M4
l=0.5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -210 0 0 {name=M5
l=0.13u
w=2.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 640 -290 0 0 {name=M6
l=0.13u
w=4.61u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 660 -290 0 1 {name=p8 lab=VDDL}
C {devices/lab_pin.sym} 660 -210 0 1 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 420 -210 0 1 {name=p10 lab=INB}
C {devices/lab_pin.sym} 610 -250 0 0 {name=p11 lab=INB}
C {devices/lab_pin.sym} 610 -340 0 0 {name=p12 lab=VDDL}
C {sg13g2_pr/sg13_hv_pmos.sym} 770 -500 0 0 {name=M7
l=0.5u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 500 -500 0 1 {name=M8
l=0.5u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/iopin.sym} 200 -560 2 0 {name=p13 lab=VDDH

}
C {sg13g2_pr/sg13_hv_pmos.sym} 1000 -500 0 0 {name=M9
l=0.5u
w=4u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1000 -250 0 0 {name=M10
l=0.5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 480 -500 0 0 {name=p14 lab=VDDH}
C {devices/lab_pin.sym} 790 -500 0 1 {name=p15 lab=VDDH}
C {devices/lab_pin.sym} 1020 -500 0 1 {name=p16 lab=VDDH}
C {devices/lab_pin.sym} 1020 -250 0 1 {name=p17 lab=VSS}
C {opin.sym} 1060 -380 0 0 {name=p18 lab=OUT}
