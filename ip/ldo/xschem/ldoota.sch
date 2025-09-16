v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 450 -530 470 -530 {
lab=#net1}
N 450 -530 450 -480 {
lab=#net1}
N 450 -480 510 -480 {
lab=#net1}
N 510 -480 510 -430 {
lab=#net1}
N 800 -530 890 -530 {
lab=#net2}
N 800 -530 800 -480 {
lab=#net2}
N 740 -480 800 -480 {
lab=#net2}
N 740 -480 740 -430 {
lab=#net2}
N 930 -580 930 -560 {
lab=VDD}
N 740 -580 740 -560 {
lab=VDD}
N 510 -580 510 -560 {
lab=VDD}
N 310 -580 310 -560 {
lab=VDD}
N 510 -370 510 -350 {
lab=#net3}
N 630 -350 740 -350 {
lab=#net3}
N 740 -370 740 -350 {
lab=#net3}
N 630 -350 630 -300 {
lab=#net3}
N 1240 -240 1240 -110 {
lab=VSS}
N 930 -130 930 -110 {
lab=VSS}
N 310 -130 310 -110 {
lab=VSS}
N 350 -160 390 -160 {
lab=#net4}
N 390 -220 390 -160 {
lab=#net4}
N 310 -220 390 -220 {
lab=#net4}
N 390 -160 890 -160 {
lab=#net4}
N 530 -270 530 -210 {
lab=IB}
N 530 -210 1180 -210 {
lab=IB}
N 1240 -340 1240 -300 {
lab=VOUT}
N 930 -450 1200 -450 {
lab=vot}
N 1240 -340 1300 -340 {
lab=VOUT}
N 930 -580 1240 -580 {
lab=VDD}
N 930 -110 1240 -110 {
lab=VSS}
N 110 -240 110 -110 {
lab=VSS}
N 40 -340 110 -340 {
lab=IB}
N 110 -340 110 -300 {
lab=IB}
N 150 -270 190 -270 {
lab=IB}
N 190 -340 190 -270 {
lab=IB}
N 110 -340 190 -340 {
lab=IB}
N 530 -270 590 -270 {
lab=IB}
N 1180 -270 1180 -210 {
lab=IB}
N 1180 -270 1200 -270 {
lab=IB}
N 440 -400 470 -400 {
lab=INP}
N 780 -400 810 -400 {
lab=INN}
N 310 -220 310 -190 {
lab=#net4}
N 350 -530 450 -530 {
lab=#net1}
N 510 -500 510 -480 {
lab=#net1}
N 780 -530 800 -530 {
lab=#net2}
N 740 -500 740 -480 {
lab=#net2}
N 740 -580 930 -580 {
lab=VDD}
N 510 -580 740 -580 {
lab=VDD}
N 310 -580 510 -580 {
lab=VDD}
N 50 -580 310 -580 {
lab=VDD}
N 510 -350 630 -350 {
lab=#net3}
N 310 -110 930 -110 {
lab=VSS}
N 110 -110 310 -110 {
lab=VSS}
N 310 -500 310 -220 {
lab=#net4}
N 190 -270 530 -270 {
lab=IB}
N 50 -110 110 -110 {
lab=VSS}
N 930 -500 930 -450 {
lab=vot}
N 1240 -360 1240 -340 {lab=VOUT}
N 1240 -580 1240 -480 {lab=VDD}
N 1160 -360 1240 -360 {lab=VOUT}
N 1240 -420 1240 -360 {lab=VOUT}
N 930 -360 930 -190 {
lab=vot}
N 1050 -360 1100 -360 {lab=#net5}
N 930 -360 990 -360 {lab=vot}
N 930 -450 930 -360 {
lab=vot}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/ipin.sym} 40 -340 0 0 {name=p7 lab=IB}
C {devices/iopin.sym} 50 -580 2 0 {name=p8 lab=VDD

}
C {devices/iopin.sym} 50 -110 2 0 {name=p9 lab=VSS
}
C {devices/lab_pin.sym} 630 -240 0 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 440 -400 0 1 {name=p10 lab=INP

}
C {devices/iopin.sym} 810 -400 0 0 {name=p11 lab=INN

}
C {devices/iopin.sym} 1300 -340 2 1 {name=p12 lab=VOUT

}
C {devices/lab_pin.sym} 110 -270 0 0 {name=l14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 310 -160 0 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1240 -270 0 1 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 930 -160 0 1 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -270 0 1 {name=l19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 510 -400 0 1 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -400 0 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1240 -450 0 1 {name=l22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 930 -530 0 1 {name=l23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 510 -530 0 1 {name=l24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 -530 0 0 {name=l25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 310 -530 0 0 {name=l26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 930 -480 0 1 {name=l3 sig_type=std_logic lab=vot}
C {sg13g2_pr/sg13_hv_pmos.sym} 330 -530 0 1 {name=MMIRL1
l=2u
w=10u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 760 -530 0 1 {name=MMIRR
l=2u
w=10u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 490 -530 0 0 {name=MMIRL
l=2u
w=10u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 910 -530 0 0 {name=MO
l=2u
w=10u
ng=1
m=10
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1220 -450 0 0 {name=MOT
l=0.5u
w=10u
ng=1
m=40
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 490 -400 0 0 {name=MDL
l=2u
w=10u
ng=1
m=10
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 760 -400 0 1 {name=MDR
l=2u
w=10u
ng=1
m=10
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 610 -270 0 0 {name=MMIR2
l=2u
w=10u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1220 -270 0 0 {name=MOB
l=2u
w=10u
ng=1
m=8
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 910 -160 0 0 {name=MMIR3
l=2u
w=10u
ng=1
m=10
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 330 -160 0 1 {name=MMIRL2
l=2u
w=10u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 130 -270 0 1 {name=MMIR1
l=2u
w=10u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/rppd.sym} 1130 -360 1 0 {name=R1
w=1e-6
l=10.6e-6
model=rppd
body=VSS
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/cap_cmim.sym} 1020 -360 1 0 {name=C1
model=cap_cmim
w=24e-6
l=24e-6
m=9
spiceprefix=X}
