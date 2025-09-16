v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 -550 280 -550 {
lab=#net1}
N 180 -550 200 -550 {
lab=RESET}
N 130 -630 170 -630 {
lab=VDD}
N 130 -150 170 -150 {
lab=VSS}
N 230 -630 250 -630 {
lab=#net2}
N 310 -630 330 -630 {
lab=DIGITAL_HIGH}
N 330 -650 330 -630 {
lab=DIGITAL_HIGH}
N 230 -150 250 -150 {
lab=#net3}
N 310 -150 330 -150 {
lab=DIGITAL_LOW}
N 330 -150 330 -140 {
lab=DIGITAL_LOW}
N 260 -530 280 -530 {
lab=#net4}
N 180 -530 200 -530 {
lab=CS}
N 260 -510 280 -510 {
lab=#net5}
N 180 -510 200 -510 {
lab=SCLK}
N 260 -490 280 -490 {
lab=#net6}
N 180 -490 200 -490 {
lab=DIN}
N 260 -470 280 -470 {lab=#net7}
N 260 -450 280 -450 {lab=#net8}
N 180 -470 200 -470 {lab=DOUT}
N 180 -450 200 -450 {lab=DOUT_EN}
N 440 -510 590 -510 {lab=c0_[0..7]}
N 650 -510 670 -510 {lab=CTRL0[0..7]}
N 440 -490 590 -490 {lab=c1_[0..7]}
N 650 -490 670 -490 {lab=CTRL1[0..7]}
N 440 -470 590 -470 {lab=c2_[0..7]}
N 650 -470 670 -470 {lab=CTRL2[7..0]}
N 440 -550 590 -550 {lab=s0_[0..7]}
N 650 -550 670 -550 {lab=STAT0[0..7]}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 130 -150 2 0 {name=p1 lab=VSS
}
C {devices/iopin.sym} 130 -630 2 0 {name=p2 lab=VDD

}
C {devices/ipin.sym} 180 -550 0 0 {name=p3 lab=RESET}
C {devices/vdd.sym} 330 -650 0 0 {name=l20 lab=DIGITAL_HIGH}
C {devices/gnd.sym} 330 -140 0 0 {name=l21 lab=DIGITAL_LOW}
C {devices/netlist.sym} 740 -180 0 0 {name=s1 value=".INCLUDE resources/prim_cells_ngspice.mod
.INCLUDE resources/spi.mod
.model adc_buff adc_bridge(in_low = 0.5 in_high=1.0)
.model dac_buff dac_bridge(out_high = 1.5)"}
C {devices/dac_bridge.sym} 620 -510 0 0 {name=A3_[0..7] dac_bridge_model= dac_buff}
C {devices/adc_bridge.sym} 230 -550 0 0 {name=A12 adc_bridge_model= adc_buff}
C {devices/res.sym} 200 -630 1 0 {name=R1
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -150 1 0 {name=R2
value=1m
footprint=1206
device=resistor
m=1}
C {devices/adc_bridge.sym} 280 -630 0 0 {name=A16 adc_bridge_model= adc_buff}
C {devices/adc_bridge.sym} 280 -150 0 0 {name=A17 adc_bridge_model= adc_buff}
C {devices/opin.sym} 180 -470 0 1 {name=p5 lab=DOUT}
C {devices/ipin.sym} 180 -530 0 0 {name=p4 lab=CS}
C {devices/adc_bridge.sym} 230 -530 0 0 {name=A13 adc_bridge_model= adc_buff}
C {devices/ipin.sym} 180 -510 0 0 {name=p6 lab=SCLK}
C {devices/adc_bridge.sym} 230 -510 0 0 {name=A14 adc_bridge_model= adc_buff}
C {devices/ipin.sym} 180 -490 0 0 {name=p18 lab=DIN}
C {devices/adc_bridge.sym} 230 -490 0 0 {name=A18 adc_bridge_model= adc_buff}
C {devices/dac_bridge.sym} 230 -470 2 0 {name=A19 dac_bridge_model= dac_buff}
C {devices/dac_bridge.sym} 230 -450 2 0 {name=A20 dac_bridge_model= dac_buff}
C {devices/opin.sym} 180 -450 0 1 {name=p19 lab=DOUT_EN}
C {devices/opin.sym} 670 -510 0 0 {name=p20 lab=CTRL0[0..7]}
C {devices/dac_bridge.sym} 620 -490 0 0 {name=A21_[0..7] dac_bridge_model= dac_buff}
C {devices/opin.sym} 670 -490 0 0 {name=p21 lab=CTRL1[0..7]}
C {devices/dac_bridge.sym} 620 -470 0 0 {name=A22_[0..7] dac_bridge_model= dac_buff}
C {devices/opin.sym} 670 -470 0 0 {name=p22 lab=CTRL2[0..7]}
C {devices/ipin.sym} 670 -550 0 1 {name=p28 lab=STAT0[0..7]}
C {devices/adc_bridge.sym} 620 -550 0 1 {name=A28_[0..7] adc_bridge_model= adc_buff}
C {spi_synth_xspice.sym} 290 -230 0 0 {name=X1}
C {lab_wire.sym} 570 -550 0 0 {name=p7 sig_type=std_logic lab=s0_[0..7]}
C {lab_wire.sym} 570 -510 0 0 {name=p8 sig_type=std_logic lab=c0_[0..7]}
C {lab_wire.sym} 570 -490 0 0 {name=p9 sig_type=std_logic lab=c1_[0..7]}
C {lab_wire.sym} 570 -470 0 0 {name=p10 sig_type=std_logic lab=c2_[0..7]}
