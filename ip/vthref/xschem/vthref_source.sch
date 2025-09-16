v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 -290 280 -250 { lab=VDD}
N 280 -190 280 -150 {
lab=ISOURCE}
N 280 -150 290 -150 {
lab=ISOURCE}
N 220 -290 280 -290 {
lab=VDD}
N 220 -220 240 -220 {
lab=VSOURCE}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 220 -290 2 0 {name=p2 lab=VDD

}
C {devices/opin.sym} 290 -150 0 0 {name=p4 lab=ISOURCE}
C {devices/lab_pin.sym} 280 -220 0 1 {name=l13 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 220 -220 0 1 {name=p6 lab=VSOURCE}
C {sg13g2_pr/sg13_hv_pmos.sym} 260 -220 0 0 {name=MSOTR
l=15u
w=10u
ng=1
m=6
model=sg13_hv_pmos
spiceprefix=X
}
