v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 290 -330 290 -290 { lab=vm2}
N 290 -230 290 -140 { lab=VSS}
N 230 -360 250 -360 {
lab=VSINKT}
N 230 -260 250 -260 {
lab=VSINKB}
N 290 -430 290 -390 {
lab=ISINK}
N 290 -430 300 -430 {
lab=ISINK}
N 230 -140 290 -140 {
lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 230 -140 2 0 {name=p1 lab=VSS
}
C {devices/ipin.sym} 300 -430 2 0 {name=p3 lab=ISINK}
C {devices/lab_pin.sym} 290 -360 0 1 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 -260 0 1 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 290 -320 0 0 {name=l8 sig_type=std_logic lab=vm2}
C {devices/iopin.sym} 230 -360 0 1 {name=p7 lab=VSINKT}
C {devices/iopin.sym} 230 -260 0 1 {name=p8 lab=VSINKB}
C {sg13g2_pr/sg13_hv_nmos.sym} 270 -360 0 0 {name=MMCB2
l=2u
w=10u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 270 -260 0 0 {name=MMB2
l=15u
w=10u
ng=1
m=6
model=sg13_lv_nmos
spiceprefix=X
}
