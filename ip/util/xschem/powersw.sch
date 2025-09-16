v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 660 -280 670 -280 {lab=VDD}
N 660 -280 660 -250 {lab=VDD}
N 660 -250 700 -250 {lab=VDD}
N 700 -280 700 -250 {lab=VDD}
N 730 -280 800 -280 {lab=VDDSW}
N 590 -470 590 -450 {lab=#net1}
N 530 -420 550 -420 {lab=POWERON}
N 530 -470 530 -420 {lab=POWERON}
N 530 -520 550 -520 {lab=POWERON}
N 530 -520 530 -470 {lab=POWERON}
N 590 -490 590 -470 {lab=#net1}
N 480 -470 530 -470 {lab=POWERON}
N 480 -350 590 -350 {lab=VSS}
N 590 -570 590 -550 {lab=VDD}
N 590 -390 590 -350 {lab=VSS}
N 480 -390 480 -350 {lab=VSS}
N 430 -350 480 -350 {lab=VSS}
N 480 -470 480 -450 {lab=POWERON}
N 430 -470 480 -470 {lab=POWERON}
N 590 -470 700 -470 {lab=#net1}
N 700 -470 700 -320 {lab=#net1}
N 430 -280 660 -280 {lab=VDD}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 430 -280 2 0 {name=p2 lab=VDD

}
C {ipin.sym} 430 -470 0 0 {name=p3 lab=POWERON}
C {sg13g2_pr/sg13_hv_pmos.sym} 700 -300 3 1 {name=M2
l=0.5u
w=60u
ng=1
m=30
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/iopin.sym} 800 -280 2 1 {name=p4 lab=VDDSW

}
C {devices/iopin.sym} 430 -350 2 0 {name=p5 lab=VSS

}
C {sg13g2_pr/sg13_hv_nmos.sym} 570 -420 0 0 {name=M1
l=2u
w=0.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 480 -420 0 1 {name=R2
w=0.5e-6
l=80e-6
model=rhigh
body=VSS
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_hv_pmos.sym} 570 -520 0 0 {name=M3
l=4u
w=0.5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 590 -570 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 590 -520 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 590 -420 0 1 {name=p7 sig_type=std_logic lab=VSS}
