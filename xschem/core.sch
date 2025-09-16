v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Schematic of spi block is set 
in xschemrc according to the 
environment variable DIG_LEVEL.
Instance-Property: schematic="tcleval(spi_$::DIG_LEVEL.sch)"} 330 -800 0 0 0.3 0.3 {}
N 1040 -480 1130 -480 {
lab=#net1}
N 1050 -220 1140 -220 {
lab=vref}
N 1050 -280 1060 -280 {
lab=vref}
N 1050 -280 1050 -220 {
lab=vref}
N 1130 -180 1140 -180 {
lab=#net2}
N 1130 -200 1130 -180 {
lab=#net2}
N 1130 -200 1140 -200 {
lab=#net2}
N 960 -220 1050 -220 {
lab=vref}
N 420 -580 420 -530 {lab=FTOP}
N 420 -530 470 -530 {lab=FTOP}
N 290 -460 530 -460 {lab=fsel1[0..7]}
N 1040 -480 1040 -400 {lab=#net1}
N 1000 -480 1040 -480 {
lab=#net1}
N 1040 -400 1130 -400 {lab=#net1}
N 1290 -710 1310 -710 {lab=POR}
N 300 -950 320 -950 {lab=CS}
N 300 -930 320 -930 {lab=SCLK}
N 300 -910 320 -910 {lab=DIN}
N 300 -890 320 -890 {lab=DOUT}
N 300 -870 320 -870 {lab=DOUT_EN}
N 870 -990 900 -990 {lab=OSC}
N 1260 -220 1280 -220 {lab=VLDO}
N 1280 -220 1280 -190 {lab=VLDO}
N 1280 -190 1300 -190 {lab=VLDO}
N 290 -580 420 -580 {lab=FTOP}
N 290 -560 310 -560 {lab=FPROG}
N 310 -560 310 -540 {lab=FPROG}
N 310 -540 320 -540 {lab=FPROG}
N 420 -610 420 -580 {lab=FTOP}
N 420 -610 530 -610 {lab=FTOP}
N 420 -330 470 -330 {lab=FTOP}
N 290 -260 530 -260 {lab=fsel2[0..7]}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 1300 -190 2 1 {name=p2 lab=VLDO

}
C {devices/ipin.sym} 300 -910 0 0 {name=p34 lab=DIN}
C {devices/opin.sym} 900 -990 0 0 {name=p40 lab=OSC}
C {bmbg.sym} 900 -220 0 0 {name=X1}
C {vthref.sym} 920 -520 0 0 {name=X2}
C {ldo.sym} 1200 -220 0 0 {name=X3}
C {devices/lab_pin.sym} 840 -440 0 0 {name=p53 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 730 -950 0 0 {name=p54 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1000 -540 0 1 {name=p58 sig_type=std_logic lab=ISOURCE1}
C {devices/lab_pin.sym} 1000 -520 0 1 {name=p59 sig_type=std_logic lab=ISINK1}
C {devices/lab_pin.sym} 1290 -500 0 1 {name=p60 sig_type=std_logic lab=ISOURCE2}
C {devices/lab_pin.sym} 730 -1090 0 0 {name=p62 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} 1260 -240 0 1 {name=p64 sig_type=std_logic lab=ISOURCE2}
C {devices/lab_pin.sym} 960 -240 0 1 {name=p66 sig_type=std_logic lab=ISINK1}
C {devices/lab_pin.sym} 1060 -280 0 1 {name=p67 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 840 -600 0 0 {name=p1 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 840 -200 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -300 0 0 {name=p4 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 1140 -160 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1140 -300 0 0 {name=p6 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 1130 -560 0 0 {name=p7 sig_type=std_logic lab=AVDD}
C {vthref_source.sym} 1210 -490 0 0 {name=X5}
C {devices/ammeter.sym} 840 -570 0 0 {name=Vivthref}
C {devices/ammeter.sym} 730 -1060 0 0 {name=Viosc}
C {devices/ammeter.sym} 840 -270 0 0 {name=Vibmbg}
C {devices/ammeter.sym} 1140 -270 0 0 {name=Vildo}
C {devices/lab_pin.sym} 730 -970 0 0 {name=p8 sig_type=std_logic lab=ISOURCE1}
C {devices/lab_pin.sym} 320 -1090 0 0 {name=p26 sig_type=std_logic lab=DVDD}
C {devices/ammeter.sym} 320 -1060 0 0 {name=Vidig}
C {devices/lab_pin.sym} 320 -1010 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 300 -890 0 1 {name=p35 lab=DOUT}
C {devices/ipin.sym} 300 -930 0 0 {name=p36 lab=SCLK}
C {devices/ipin.sym} 300 -950 0 0 {name=p37 lab=CS}
C {spi.sym} 330 -710 0 0 {name=X16
schematic="tcleval(spi_$::DIG_LEVEL.sch)"}
C {devices/lab_pin.sym} 480 -1030 0 1 {name=p28 sig_type=std_logic lab=c0_[0..7]}
C {devices/lab_pin.sym} 480 -990 0 1 {name=p39 sig_type=std_logic lab=c0_[0..7]}
C {devices/lab_pin.sym} 480 -970 0 1 {name=p41 sig_type=std_logic lab=c1_[0..7]}
C {devices/lab_pin.sym} 480 -950 0 1 {name=p42 sig_type=std_logic lab=c2_[0..7]}
C {riosc.sym} 800 -990 0 0 {name=X4}
C {devices/lab_pin.sym} 730 -1010 0 0 {name=p38 sig_type=std_logic lab=c0_7}
C {devices/lab_pin.sym} 870 -950 0 1 {name=p43 sig_type=std_logic lab=c0_[5..0]}
C {fuse.sym} 570 -500 0 0 {name=X22_[0..7]}
C {powersw.sym} 210 -580 0 0 {name=X23}
C {levelup.sym} 220 -460 0 0 {name=X24_[0..7]}
C {devices/lab_pin.sym} 530 -430 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 -560 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 -580 0 0 {name=p46 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 160 -440 0 0 {name=p61 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 -480 0 1 {name=p63 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 160 -460 0 0 {name=p65 sig_type=std_logic lab=c1_[0..7]}
C {lab_wire.sym} 510 -460 0 0 {name=p68 sig_type=std_logic lab=fsel1[0..7]}
C {devices/lab_pin.sym} 160 -480 0 0 {name=p70 sig_type=std_logic lab=DVDD}
C {devices/iopin.sym} 530 -610 2 1 {name=p71 lab=FTOP

}
C {devices/iopin.sym} 320 -540 2 1 {name=p73 lab=FPROG

}
C {devices/ammeter.sym} 500 -530 3 0 {name=Vifuse}
C {devices/ammeter.sym} 1130 -530 0 0 {name=Visource}
C {por.sym} 1210 -760 0 0 {name=X25}
C {devices/lab_pin.sym} 1130 -680 0 0 {name=p57 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} 1130 -760 0 0 {name=Vipor}
C {devices/lab_pin.sym} 1130 -790 0 0 {name=p76 sig_type=std_logic lab=DVDD}
C {vthref_source.sym} 1210 -410 0 0 {name=X26}
C {devices/lab_pin.sym} 1290 -420 0 1 {name=p77 sig_type=std_logic lab=ISOURCE3}
C {devices/lab_pin.sym} 1130 -420 0 0 {name=p79 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 1130 -710 0 0 {name=p80 sig_type=std_logic lab=ISOURCE3}
C {devices/lab_pin.sym} 320 -970 0 0 {name=p84 sig_type=std_logic lab=RESET}
C {devices/lab_pin.sym} 870 -1030 0 1 {name=p30 sig_type=std_logic lab=RESET}
C {devices/iopin.sym} 70 -970 2 0 {name=p85 lab=DVDD

}
C {devices/iopin.sym} 70 -930 2 0 {name=p29 lab=VSS

}
C {devices/iopin.sym} 70 -950 2 0 {name=p86 lab=AVDD

}
C {devices/opin.sym} 1310 -710 0 0 {name=p88 lab=POR}
C {devices/opin.sym} 300 -870 0 1 {name=p89 lab=DOUT_EN}
C {devices/ipin.sym} 70 -870 0 0 {name=p90 lab=RESET}
C {fuse.sym} 570 -300 0 0 {name=X3[0..7]}
C {levelup.sym} 220 -260 0 0 {name=X4[0..7]}
C {devices/lab_pin.sym} 530 -230 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 160 -240 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 -280 0 1 {name=p13 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 160 -260 0 0 {name=p14 sig_type=std_logic lab=c2_[0..7]}
C {lab_wire.sym} 510 -260 0 0 {name=p15 sig_type=std_logic lab=fsel2[0..7]}
C {devices/lab_pin.sym} 160 -280 0 0 {name=p16 sig_type=std_logic lab=DVDD}
C {devices/ammeter.sym} 500 -330 3 0 {name=Vifuse1}
C {devices/lab_pin.sym} 420 -330 0 0 {name=p10 sig_type=std_logic lab=FTOP}
C {devices/code.sym} 1140 -1030 0 0 {name=STDCELLS
only_toplevel=true
format="tcleval( @value )"
value="
.include $\{::IHP_STDCELLS\}/sg13g2_stdcell.spice

.subckt sg13g2_not_1 Y A VDD VSS
XX1 Y A VSS VSS sg13_lv_nmos w=740.00n l=130.00n ng=1 ad=2.516e-13 as=2.516e-13 pd=2.16e-06 ps=2.16e-06 m=1
XX0 Y A VDD VDD sg13_lv_pmos w=1.12u l=130.00n ng=1 ad=3.808e-13 as=3.808e-13 pd=2.92e-06 ps=2.92e-06 m=1
.ends
"}
