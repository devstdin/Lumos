v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 580 -210 580 -190 { lab=VSS}
N 530 -190 580 -190 { lab=VSS}
N 530 -370 600 -370 {lab=VDD}
N 520 -240 540 -240 {lab=SEL}
N 580 -310 580 -270 {lab=#net1}
N 580 -310 600 -310 {lab=#net1}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 530 -190 2 0 {name=p1 lab=VSS
}
C {devices/iopin.sym} 530 -370 2 0 {name=p2 lab=VDD

}
C {devices/lab_pin.sym} 580 -240 0 1 {name=p5 lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 560 -240 0 0 {name=M1
l=0.5u
w=10u
ng=1
m=40
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 520 -240 0 0 {name=p3 lab=SEL}
C {fuse_prim.sym} 640 -340 0 0 {name=X1}
