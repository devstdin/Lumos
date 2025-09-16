v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 620 -150 620 -130 { lab=VSS}
N 570 -130 620 -130 { lab=VSS}
N 570 -230 620 -230 {lab=T1}
N 620 -230 620 -210 {lab=T1}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 570 -130 2 0 {name=p1 lab=T2
}
C {devices/iopin.sym} 570 -230 2 0 {name=p2 lab=T1

}
C {res.sym} 620 -180 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
