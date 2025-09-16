v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 560 -130 560 -110 {
lab=VSS}
N 560 -410 660 -410 {
lab=VLDO}
N 560 -210 560 -190 {
lab=FBOUT}
N 300 -460 390 -460 {
lab=IB}
N 480 -410 560 -410 {
lab=VLDO}
N 300 -110 560 -110 {
lab=VSS}
N 300 -480 390 -480 {
lab=VDD}
N 300 -430 390 -430 {
lab=FBIN}
N 300 -390 390 -390 {
lab=VREF}
N 300 -210 560 -210 {
lab=FBOUT}
N 560 -410 560 -290 {lab=VLDO}
N 560 -230 560 -210 {
lab=FBOUT}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 300 -110 2 0 {name=p1 lab=VSS
}
C {devices/iopin.sym} 300 -480 2 0 {name=p2 lab=VDD

}
C {devices/opin.sym} 660 -410 0 0 {name=p4 lab=VLDO}
C {ldoota.sym} 420 -410 0 0 {name=X1}
C {devices/lab_pin.sym} 390 -360 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 300 -390 0 0 {name=p5 lab=VREF}
C {devices/opin.sym} 300 -210 2 0 {name=p6 lab=FBOUT}
C {devices/ipin.sym} 300 -430 0 0 {name=p7 lab=FBIN}
C {devices/ipin.sym} 300 -460 0 0 {name=p3 lab=IB}
C {sg13g2_pr/rhigh.sym} 560 -260 0 0 {name=RT
w=0.5e-6
l=12.5e-6
model=rhigh
body=VSS
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 560 -160 0 0 {name=RB
w=0.5e-6
l=50e-6
model=rhigh
body=VSS
spiceprefix=X
b=0
m=1
}
