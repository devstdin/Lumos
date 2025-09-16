v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -560 460 -560 {
lab=RESET}
N 440 -540 460 -540 {
lab=CS}
N 440 -520 460 -520 {
lab=SCLK}
N 440 -500 460 -500 {
lab=DIN}
N 440 -480 460 -480 {lab=DOUT}
N 440 -460 460 -460 {lab=DOUT_EN}
N 620 -560 640 -560 {lab=STAT0[0..7]}
N 620 -520 640 -520 {lab=CTRL0[0..7]}
N 620 -500 640 -500 {lab=CTRL1[0..7]}
N 620 -480 640 -480 {lab=CTRL2[7..0]}
N 440 -420 460 -420 {lab=VDD}
N 440 -400 460 -400 {lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/code.sym} 30 -200 0 0 {name=STDCELLS_DESIGN
only_toplevel=false
format="tcleval( @value )"
value="
.include $\\\{::IHP_STDCELLS\\\}/sg13g2_stdcell.spice
.INCLUDE resources/spi.spice
"}
C {devices/iopin.sym} 440 -400 2 0 {name=p1 lab=VSS
}
C {devices/iopin.sym} 440 -420 2 0 {name=p2 lab=VDD

}
C {devices/ipin.sym} 440 -560 0 0 {name=p3 lab=RESET}
C {devices/opin.sym} 440 -480 0 1 {name=p5 lab=DOUT}
C {devices/ipin.sym} 440 -540 0 0 {name=p4 lab=CS}
C {devices/ipin.sym} 440 -520 0 0 {name=p6 lab=SCLK}
C {devices/ipin.sym} 440 -500 0 0 {name=p18 lab=DIN}
C {devices/opin.sym} 440 -460 0 1 {name=p19 lab=DOUT_EN}
C {devices/opin.sym} 640 -520 0 0 {name=p20 lab=CTRL0[0..7]}
C {devices/opin.sym} 640 -500 0 0 {name=p21 lab=CTRL1[0..7]}
C {devices/opin.sym} 640 -480 0 0 {name=p22 lab=CTRL2[0..7]}
C {devices/ipin.sym} 640 -560 0 1 {name=p28 lab=STAT0[0..7]}
C {spi_synth_openroad.sym} 470 -240 0 0 {name=X1}
