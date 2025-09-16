v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 -200 530 -200 {lab=#net1}
N 480 -250 480 -200 {lab=#net1}
N 480 -290 530 -290 {lab=#net1}
N 670 -290 670 -200 {lab=IOAVSS}
N 590 -200 670 -200 {lab=IOAVSS}
N 590 -290 670 -290 {lab=IOAVSS}
N 940 -200 990 -200 {lab=#net2}
N 940 -250 940 -200 {lab=#net2}
N 940 -290 990 -290 {lab=#net2}
N 1050 -290 1090 -290 {lab=#net3}
N 1050 -200 1090 -200 {lab=#net4}
N 1150 -290 1190 -290 {lab=#net5}
N 1150 -200 1190 -200 {lab=#net6}
N 1420 -290 1420 -200 {lab=IOAVDD}
N 920 -250 940 -250 {lab=#net2}
N 940 -290 940 -250 {lab=#net2}
N 460 -250 480 -250 {lab=#net1}
N 480 -290 480 -250 {lab=#net1}
N 280 -1880 280 -470 {lab=VSS}
N 340 -1880 340 -470 {lab=DVDD}
N 220 -1880 220 -450 {lab=IODVDD}
N 160 -1880 160 -430 {lab=IODVSS}
N 1350 -200 1420 -200 {lab=IOAVDD}
N 1350 -290 1420 -290 {lab=IOAVDD}
N 1020 -260 1020 -230 {lab=IODVSS}
N 1120 -260 1120 -230 {lab=IODVSS}
N 1220 -260 1220 -230 {lab=IODVSS}
N 1320 -260 1320 -230 {lab=IODVSS}
N 1250 -290 1290 -290 {lab=#net7}
N 1250 -200 1290 -200 {lab=#net8}
N 560 -260 560 -230 {lab=IODVSS}
N 1460 -1430 1460 -460 {lab=AVDD}
N 1520 -1430 1520 -460 {lab=VSS}
N 1580 -1430 1580 -440 {lab=IOAVDD}
N 1640 -1430 1640 -420 {lab=IOAVSS}
N 430 -1600 580 -1600 {lab=#net9}
N 580 -1610 580 -1600 {lab=#net9}
N 640 -1090 730 -1090 {lab=#net10}
N 640 -1490 640 -1090 {lab=#net10}
N 430 -1490 640 -1490 {lab=#net10}
N 430 -1360 620 -1360 {lab=#net11}
N 620 -1360 620 -1070 {lab=#net11}
N 620 -1070 730 -1070 {lab=#net11}
N 600 -1050 730 -1050 {lab=#net12}
N 600 -1230 600 -1050 {lab=#net12}
N 430 -1230 600 -1230 {lab=#net12}
N 580 -1030 730 -1030 {lab=#net13}
N 580 -1060 580 -1030 {lab=#net13}
N 430 -1060 580 -1060 {lab=#net13}
N 560 -1010 730 -1010 {lab=#net14}
N 560 -1040 560 -1010 {lab=#net14}
N 430 -1040 560 -1040 {lab=#net14}
N 1220 -1260 1370 -1260 {lab=#net15}
N 1220 -1260 1220 -1090 {lab=#net15}
N 1030 -1090 1220 -1090 {lab=#net15}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {devices/iopin.sym} 1730 -860 2 1 {name=p2 lab=VLDO

}
C {devices/ipin.sym} 70 -1620 0 0 {name=p33 lab=RST}
C {devices/ipin.sym} 70 -1190 0 0 {name=p34 lab=DIN}
C {devices/opin.sym} 70 -890 0 1 {name=p40 lab=OSC}
C {devices/iopin.sym} 70 -560 2 0 {name=p49 lab=IODVDD

}
C {devices/iopin.sym} 70 -490 2 0 {name=p50 lab=IODVSS

}
C {devices/iopin.sym} 70 -1780 2 0 {name=p51 lab=DVDD

}
C {devices/iopin.sym} 70 -760 2 0 {name=p78 lab=VSS

}
C {IOPadIOVss.sym} 160 -490 0 0 {name=X7}
C {IOPadIOVdd.sym} 160 -560 0 0 {name=X8}
C {IOPadVss.sym} 160 -760 0 0 {name=X9}
C {IOPadVdd.sym} 160 -1780 0 0 {name=X10}
C {devices/lab_pin.sym} 160 -430 0 1 {name=p9 sig_type=std_logic lab=IODVSS}
C {devices/lab_pin.sym} 220 -450 0 1 {name=p10 sig_type=std_logic lab=IODVDD}
C {devices/lab_pin.sym} 280 -680 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 -700 0 1 {name=p19 sig_type=std_logic lab=DVDD}
C {devices/iopin.sym} 1730 -1330 2 1 {name=p11 lab=AVDD

}
C {IOPadVss.sym} 1640 -750 0 1 {name=X12}
C {IOPadVdd.sym} 1640 -1330 0 1 {name=X13}
C {devices/lab_pin.sym} 1520 -670 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1460 -690 0 0 {name=p21 sig_type=std_logic lab=AVDD}
C {IOPadAnalog.sym} 1640 -860 0 1 {name=X6}
C {devices/iopin.sym} 1730 -550 2 1 {name=p13 lab=IOAVDD

}
C {devices/iopin.sym} 1730 -480 2 1 {name=p15 lab=IOAVSS

}
C {IOPadIOVss.sym} 1640 -480 0 1 {name=X11}
C {IOPadIOVdd.sym} 1640 -550 0 1 {name=X14}
C {devices/lab_pin.sym} 1640 -420 0 0 {name=p16 sig_type=std_logic lab=IOAVSS}
C {devices/lab_pin.sym} 1580 -440 0 0 {name=p17 sig_type=std_logic lab=IOAVDD}
C {sg13g2_pr/diodevdd_4kv.sym} 560 -200 1 0 {name=D1
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {sg13g2_pr/diodevdd_4kv.sym} 560 -290 3 0 {name=D2
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -250 0 0 {name=p22 sig_type=std_logic lab=IODVSS}
C {devices/lab_pin.sym} 670 -250 0 1 {name=p23 sig_type=std_logic lab=IOAVSS}
C {sg13g2_pr/diodevdd_4kv.sym} 1020 -200 1 0 {name=D3
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {sg13g2_pr/diodevdd_4kv.sym} 1020 -290 3 0 {name=D4
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {devices/lab_pin.sym} 860 -250 0 0 {name=p24 sig_type=std_logic lab=IODVDD}
C {devices/lab_pin.sym} 1420 -250 0 1 {name=p25 sig_type=std_logic lab=IOAVDD}
C {sg13g2_pr/diodevdd_4kv.sym} 1120 -290 3 0 {name=D5
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {sg13g2_pr/diodevdd_4kv.sym} 1220 -290 3 0 {name=D6
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {sg13g2_pr/diodevdd_4kv.sym} 1120 -200 1 0 {name=D7
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {sg13g2_pr/diodevdd_4kv.sym} 1220 -200 1 0 {name=D8
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {devices/ammeter.sym} 890 -250 3 0 {name=Vivddesd}
C {devices/ammeter.sym} 430 -250 3 0 {name=Vivssesd}
C {IOPadOut30mA.sym} 160 -890 0 0 {name=X15}
C {IOPadTriOut30mA.sym} 160 -1060 0 0 {name=X17}
C {IOPadIn.sym} 160 -1190 0 0 {name=X18}
C {IOPadIn.sym} 160 -1320 0 0 {name=X19}
C {IOPadIn.sym} 160 -1450 0 0 {name=X20}
C {devices/lab_pin.sym} 430 -890 0 1 {name=p32 sig_type=std_logic lab=OSC_OUT}
C {devices/opin.sym} 70 -1060 0 1 {name=p35 lab=DOUT}
C {devices/ipin.sym} 70 -1320 0 0 {name=p36 lab=SCLK}
C {devices/ipin.sym} 70 -1450 0 0 {name=p37 lab=CS}
C {sg13g2_pr/diodevdd_4kv.sym} 1320 -290 3 0 {name=D9
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {sg13g2_pr/diodevdd_4kv.sym} 1320 -200 1 0 {name=D10
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {devices/lab_pin.sym} 1020 -250 0 1 {name=p47 sig_type=std_logic lab=IODVSS}
C {devices/lab_pin.sym} 1120 -250 0 1 {name=p48 sig_type=std_logic lab=IODVSS}
C {devices/lab_pin.sym} 1220 -250 0 1 {name=p52 sig_type=std_logic lab=IODVSS}
C {devices/lab_pin.sym} 1320 -250 0 1 {name=p55 sig_type=std_logic lab=IODVSS}
C {devices/lab_pin.sym} 560 -250 0 1 {name=p56 sig_type=std_logic lab=IODVSS}
C {IOPadAnalog.sym} 1640 -1030 0 1 {name=X22}
C {devices/iopin.sym} 1730 -1030 2 1 {name=p71 lab=FTOP

}
C {devices/lab_pin.sym} 1370 -1030 0 0 {name=p72 sig_type=std_logic lab=FTOP}
C {IOPadAnalog.sym} 1640 -1200 0 1 {name=X24}
C {devices/iopin.sym} 1730 -1200 2 1 {name=p73 lab=FPROG

}
C {IOPadInOut4mA.sym} 160 -1620 0 0 {name=X21}
C {devices/lab_pin.sym} 430 -1620 0 1 {name=p81 sig_type=std_logic lab=POR}
C {devices/lab_pin.sym} 580 -1670 0 0 {name=p82 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} 430 -1710 0 1 {name=p83 sig_type=std_logic lab=RESET}
C {sg13g2_pr/rhigh.sym} 580 -1640 0 0 {name=R1
w=1e-6
l=10e-6
model=rhigh
body=DVSS
spiceprefix=X
b=0
m=1
}
C {core.sym} 880 -1090 0 0 {name=x1}
C {lab_pin.sym} 730 -1190 0 0 {name=p1 lab=DVDD}
C {lab_pin.sym} 730 -1170 0 0 {name=p3 lab=VSS}
C {lab_pin.sym} 730 -1150 0 0 {name=p4 lab=AVDD}
C {lab_pin.sym} 1030 -1190 0 1 {name=p28 lab=RESET}
C {lab_pin.sym} 1030 -1170 0 1 {name=p29 lab=POR}
C {lab_pin.sym} 1030 -1110 0 1 {name=p30 lab=FTOP}
C {lab_pin.sym} 1030 -1060 0 1 {name=p38 lab=VLDO}
C {devices/lab_pin.sym} 1030 -1140 0 1 {name=p26 sig_type=std_logic lab=OSC_OUT}
C {lab_pin.sym} 1370 -860 0 0 {name=p5 lab=VLDO}
