v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 510 -230 510 -210 {lab=G}
N 390 -230 510 -230 {lab=G}
N 510 -250 510 -230 {lab=G}
N 390 -330 510 -330 {lab=T}
N 510 -330 510 -310 {lab=T}
N 390 -130 510 -130 {lab=VSS}
N 510 -150 510 -130 {lab=VSS}
N 550 -180 680 -180 {lab=#net1}
N 550 -280 580 -280 {lab=#net2}
N 680 -280 680 -180 {lab=#net1}
N 660 -280 680 -280 {lab=#net1}
N 680 -280 700 -280 {lab=#net1}
N 780 -280 800 -280 {lab=EN}
C {title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {sg13g2_pr/sg13_lv_nmos.sym} 530 -180 0 1 {name=M1
l=0.25u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 530 -280 0 1 {name=M2
l=0.25u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 390 -230 0 1 {name=p1 lab=G}
C {iopin.sym} 390 -130 0 1 {name=p2 lab=VSS}
C {iopin.sym} 390 -330 0 1 {name=p3 lab=T}
C {ipin.sym} 800 -280 0 1 {name=p4 lab=EN}
C {iopin.sym} 390 -390 0 1 {name=p7 lab=VDD}
C {lab_pin.sym} 510 -280 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 510 -180 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sg13g2_not_1.sym} 740 -280 0 1 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_not_1.sym} 620 -280 0 1 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
