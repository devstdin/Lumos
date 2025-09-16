v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -500 180 -460 {
lab=VDD}
N 380 -340 380 -310 {
lab=#net1}
N 490 -340 600 -340 {
lab=#net1}
N 600 -340 600 -310 {
lab=#net1}
N 380 -210 380 -190 {
lab=vl}
N 600 -210 600 -190 {
lab=#net2}
N 600 -130 600 -100 {
lab=VSS}
N 380 -130 380 -100 {
lab=VSS}
N 450 -160 560 -160 {
lab=vl}
N 380 -210 450 -210 {
lab=vl}
N 450 -210 450 -160 {
lab=vl}
N 180 -400 180 -370 {
lab=IB}
N 70 -370 180 -370 {
lab=IB}
N 250 -430 250 -370 {
lab=IB}
N 180 -370 250 -370 {
lab=IB}
N 380 -100 600 -100 {
lab=VSS}
N 490 -400 490 -340 {
lab=#net1}
N 180 -500 490 -500 {
lab=VDD}
N 490 -500 490 -460 {
lab=VDD}
N 420 -430 450 -430 {
lab=IB}
N 420 -430 420 -370 {
lab=IB}
N 1130 -500 1130 -460 {
lab=VDD}
N 1130 -130 1130 -100 {
lab=VSS}
N 1130 -300 1170 -300 {
lab=VOUT}
N 880 -210 880 -160 {
lab=#net2}
N 880 -240 880 -210 {
lab=#net2}
N 880 -160 1090 -160 {
lab=#net2}
N 880 -240 930 -240 {
lab=#net2}
N 600 -210 880 -210 {
lab=#net2}
N 650 -430 1090 -430 {
lab=IB}
N 640 -280 670 -280 {
lab=INP}
N 310 -280 340 -280 {
lab=INN}
N 420 -370 650 -370 {
lab=IB}
N 650 -430 650 -370 {
lab=IB}
N 490 -500 1130 -500 {
lab=VDD}
N 600 -100 1130 -100 {
lab=VSS}
N 70 -500 180 -500 {
lab=VDD}
N 70 -100 380 -100 {
lab=VSS}
N 380 -250 380 -210 {
lab=vl}
N 420 -160 450 -160 {
lab=vl}
N 220 -430 250 -430 {
lab=IB}
N 380 -340 490 -340 {
lab=#net1}
N 250 -430 420 -430 {
lab=IB}
N 1130 -400 1130 -300 {
lab=VOUT}
N 1130 -240 1130 -190 {
lab=VOUT}
N 600 -250 600 -210 {
lab=#net2}
N 990 -240 1010 -240 {lab=#net3}
N 1070 -240 1130 -240 {lab=VOUT}
N 1130 -300 1130 -240 {
lab=VOUT}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/lab_pin.sym} 600 -280 0 0 {name=l17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 -160 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -160 0 1 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -280 0 1 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 -430 0 1 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -430 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 670 -280 2 1 {name=p1 lab=INP

}
C {devices/iopin.sym} 310 -280 2 0 {name=p2 lab=INN

}
C {devices/iopin.sym} 1170 -300 2 1 {name=p3 lab=VOUT

}
C {devices/opin.sym} 70 -370 0 1 {name=p4 lab=IB}
C {devices/iopin.sym} 70 -500 2 0 {name=p5 lab=VDD

}
C {devices/iopin.sym} 70 -100 2 0 {name=p6 lab=VSS
}
C {devices/lab_pin.sym} 1130 -430 0 1 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1130 -160 0 1 {name=l8 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 200 -430 0 1 {name=MMIR1
l=2u
w=5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 470 -430 0 0 {name=MMIR2
l=2u
w=5u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1110 -430 0 0 {name=MMIR3
l=2u
w=5u
ng=1
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 360 -280 0 0 {name=MDL
l=1u
w=10u
ng=1
m=16
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 620 -280 0 1 {name=MDR
l=1u
w=10u
ng=1
m=16
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 580 -160 0 0 {name=MMIRR
l=2u
w=5u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 400 -160 0 1 {name=MMIRL
l=2u
w=5u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1110 -160 0 0 {name=MO
l=2u
w=5u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 1040 -240 1 0 {name=C1
model=cap_cmim
l=21e-6
w=30e-6
m=1
spiceprefix=X}
C {sg13g2_pr/rhigh.sym} 960 -240 3 0 {name=R1
w=0.5e-6
l=3.5e-6
model=rhigh
body=VSS
spiceprefix=X
b=0
m=1
}
