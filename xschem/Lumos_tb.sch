v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1010 -940 1010 -930 {
lab=VSS}
N 1090 -930 1160 -930 {
lab=VSS}
N 1160 -940 1160 -930 {
lab=VSS}
N 1160 -930 1180 -930 {
lab=VSS}
N 1160 -1010 1180 -1010 {
lab=VOUT}
N 1010 -1010 1010 -1000 {
lab=VOUT}
N 1160 -1010 1160 -1000 {
lab=VOUT}
N 1090 -1010 1160 -1010 {
lab=VOUT}
N 950 -1010 1010 -1010 {lab=VOUT}
N 950 -1010 950 -890 {lab=VOUT}
N 560 -890 950 -890 {lab=VOUT}
N 1180 -870 1180 -850 {lab=OSC}
N 910 -840 910 -790 {lab=RST}
N 1090 -940 1090 -930 {lab=VSS}
N 1010 -930 1090 -930 {
lab=VSS}
N 1090 -1010 1090 -1000 {lab=VOUT}
N 1010 -1010 1090 -1010 {
lab=VOUT}
N 180 -1030 210 -1030 {lab=#net1}
N 210 -1030 210 -990 {lab=#net1}
N 210 -990 260 -990 {lab=#net1}
N 180 -820 210 -820 {lab=#net2}
N 210 -870 210 -820 {lab=#net2}
N 210 -870 260 -870 {lab=#net2}
N 650 -670 690 -670 {lab=a_sclk}
N 670 -800 690 -800 {lab=a_cs}
N 630 -650 720 -650 {lab=a_din}
N 630 -780 630 -650 {lab=a_din}
N 630 -780 690 -780 {lab=a_din}
N 610 -630 720 -630 {lab=a_dout}
N 610 -760 610 -630 {lab=a_dout}
N 610 -760 690 -760 {lab=a_dout}
N 790 -500 790 -480 {
lab=#net3}
N 790 -480 810 -480 {
lab=#net3}
N 670 -500 670 -460 {
lab=#net4}
N 670 -460 810 -460 {
lab=#net4}
N 670 -690 670 -560 {lab=a_cs}
N 670 -690 720 -690 {lab=a_cs}
N 690 -670 720 -670 {lab=a_sclk}
N 690 -590 790 -590 {lab=a_sclk}
N 790 -590 790 -560 {lab=a_sclk}
N 690 -670 690 -590 {lab=a_sclk}
N 650 -820 690 -820 {lab=a_sclk}
N 560 -800 670 -800 {lab=a_cs}
N 560 -780 630 -780 {lab=a_din}
N 560 -760 610 -760 {lab=a_dout}
N 560 -870 1180 -870 {lab=OSC}
N 560 -840 910 -840 {
lab=RST}
N 670 -800 670 -690 {lab=a_cs}
N 650 -820 650 -670 {lab=a_sclk}
N 560 -820 650 -820 {lab=a_sclk}
N 570 -630 610 -630 {lab=a_dout}
N 570 -630 570 -600 {lab=a_dout}
N 130 -560 130 -540 {lab=#net5}
N 130 -560 140 -560 {lab=#net5}
N 290 -560 290 -540 {lab=#net6}
N 290 -560 300 -560 {lab=#net6}
N 560 -940 640 -940 {lab=fprog}
N 700 -940 750 -940 {lab=#net7}
N 200 -920 260 -920 {lab=#net8}
N 200 -920 200 -890 {lab=#net8}
N 180 -890 200 -890 {lab=#net8}
N 180 -970 260 -970 {lab=#net9}
C {devices/title.sym} 160 -30 0 0 {name=l1 author=""}
C {devices/lab_pin.sym} 260 -950 0 0 {name=p2 lab=VSS}
C {devices/vsource.sym} 290 -180 0 0 {name=VAVDD value="PWL(0 0 5us 3.3)"}
C {devices/lab_pin.sym} 290 -150 0 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 290 -210 0 0 {name=p6 lab=AVDD}
C {devices/ammeter.sym} 150 -890 3 0 {name=Viiodvdd}
C {devices/ammeter.sym} 150 -970 3 0 {name=Viavdd}
C {devices/vsource.sym} 645 -190 1 0 {name=V2 value=0
}
C {devices/lab_pin.sym} 615 -190 0 0 {name=p9 lab=0
}
C {devices/lab_pin.sym} 675 -190 0 1 {name=p10 lab=VSS}
C {devices/code.sym} 890 -230 0 0 {name=LIB_CORNER
only_toplevel=true
format="tcleval( @value )"
value="
.csparam TB_ID=$\\\{::TB_ID\\\}
.csparam MC_RUNS=$\\\{::MC_RUNS\\\}
.csparam EXIT_NGSPICE=$\\\{::EXIT_NGSPICE\\\}
.lib $\\\{::IHP_MODELS\\\}/sg13g2.lib $\\\{::CORNER\\\}
.include $\\\{::IHP_MODELS\\\}/sg13g2_esd.lib
"}
C {devices/lab_pin.sym} 490 -150 0 0 {name=p12 lab=VSS}
C {devices/lab_pin.sym} 490 -210 0 0 {name=p13 lab=TEMPERATURE}
C {devices/vsource_arith.sym} 490 -180 0 0 {name=E1 VOL=temper}
C {devices/code.sym} 1020 -230 0 0 {name=NGSPICE
only_toplevel=true
*format="tcleval( @value )"
value="* this experimental option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=0

.control
****************************************
* cosimulation model
pre_codemodel /home/lukas/git/asictools/ngspice_cm/codemodels/d_mycosim/d_mycosim.cm
****************************************
* option savecurrents
* save all


* dummy block for goto
if (1)
if TB_ID = 0
	goto TRAN_OSC
end
if TB_ID = 1
	goto TRAN_STARTUP
end
if TB_ID = 2
	goto TRAN_OSC
end
if TB_ID = 3
	goto TRAN_FUSE
end

define max(x,y) (x > y) * x + (x <= y) * y

****************************************
label TRAN_STARTUP
****************************************
if MC_RUNS = 0
	let veclen=27
	let max_i_a = vector(veclen)
	let max_i_d = vector(veclen)
	let max_i_io_a = vector(veclen)
	let max_i_io_d = vector(veclen)
	let ldo_out_over = vector(veclen)
	let ldo_out_end = vector(veclen)
	let temp = vector(veclen)
	let t_supup_a = vector(veclen)
	let t_supup_d = vector(veclen)
	let run = 0

	*foreach te -40 20 140
	foreach te 20
		*foreach t_supup_a 50us 100us 150us
		foreach t_supup_a 100us
			*foreach t_supup_d 50us 100us 150us
			foreach t_supup_d 100us
			
				.include resources/Lumos_tran_startup_ops.inc

				reset
				let run = run + 1
			end			
		end
	end
	set nobreak
	set width=300
	print temp, t_supup_a, t_supup_d, max_i_a, max_i_d, max_i_io_a, max_i_io_d, ldo_out_over, ldo_out_end > tran.csv
else
	let max_i_a = vector(MC_RUNS)
	let max_i_d = vector(MC_RUNS)
	let max_i_io_a = vector(MC_RUNS)
	let max_i_io_d = vector(MC_RUNS)
	let ldo_out_over = vector(MC_RUNS)
	let ldo_out_end = vector(MC_RUNS)
	let temp = vector(MC_RUNS)
	let t_supup_a = vector(MC_RUNS)
	let t_supup_d = vector(MC_RUNS)
	let run=0

	set t_supup_a = 50us
	set t_supup_d = 50us
	set te = 20

	dowhile run < MC_RUNS
		echo MC-RUN: "$&run"
		
		.include Lumos_tran_startup_ops.inc

 		reset
		let run = run + 1
	end
	set nobreak
	set width=300
	print temp, t_supup_a, t_supup_d, max_i_a, max_i_d, max_i_io_a, max_i_io_d, ldo_out_over, ldo_out_end > tran.csv
end
goto done

****************************************
label TRAN_OSC
****************************************
if MC_RUNS = 0
	let veclen=3
	let temp = vector(veclen)
	let first_high = vector(veclen)
	let first_period = vector(veclen)
	let first_dutycycle_percent = vector(veclen)
	let last_high = vector(veclen)
	let run = 0

	set t_supup_a = 5us
	set t_supup_d = 5us

	*foreach te -40 20 140
	foreach te 20
		
		.include resources/Lumos_tran_osc_ops.inc

		reset
		let run = run + 1

	end
	set nobreak
	set width=300
	print temp, first_high, first_period, first_dutycycle_percent > tran.csv
else
	let temp = vector(MC_RUNS)
	let first_high = vector(MC_RUNS)
	let first_period = vector(MC_RUNS)
	let first_dutycycle_percent = vector(MC_RUNS)
	let last_high = vector(MC_RUNS)
	let run=0

	set t_supup_a = 5us
	set t_supup_d = 5us
	set te = 20

	dowhile run < MC_RUNS
		echo MC-RUN: "$&run"
		
		.include Lumos_tran_osc_ops.inc

 		reset
		let run = run + 1
	end
	set nobreak
	set width=300
	print temp, first_high, first_period, first_dutycycle_percent > tran.csv
end
goto done

****************************************
label TRAN_FUSE
****************************************
if MC_RUNS = 0
	let veclen=3
	let temp = vector(veclen)
	let max_i = vector(veclen)
	let max_vtop = vector(veclen)
	let run = 0

	set t_supup_a = 5us
	set t_supup_d = 5us

	*foreach te -40 20 140
	foreach te 20
		
		.include resources/Lumos_tran_fuse_ops.inc

		reset
		let run = run + 1

	end
	set nobreak
	set width=300
	print temp, max_i, max_vtop > tran.csv
else
	let temp = vector(MC_RUNS)
	let max_i = vector(MC_RUNS)
	let max_vtop = vector(MC_RUNS)
	let run=0

	set t_supup_a = 5us
	set t_supup_d = 5us
	set te = 20

	dowhile run < MC_RUNS
		echo MC-RUN: "$&run"
		
		.include resources/Lumos_tran_fuse_ops.inc

 		reset
		let run = run + 1
	end
	set nobreak
	set width=300
	print temp, max_i, max_vtop > tran.csv
end
goto done

****************************************
label done
****************************************
if EXIT_NGSPICE > 0.0
	exit
end
end
.endc
" }
C {devices/vsource.sym} 110 -180 0 0 {name=VDVDD value="PWL(0 0 5us 1.5)"}
C {devices/lab_pin.sym} 110 -150 0 0 {name=p11 lab=VSS}
C {devices/lab_pin.sym} 110 -210 0 0 {name=p14 lab=DVDD}
C {devices/capa.sym} 1010 -970 0 1 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1160 -970 0 1 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1180 -930 0 1 {name=p4 lab=VSS}
C {devices/lab_pin.sym} 1180 -1010 0 1 {name=p7 lab=VOUT}
C {devices/lab_pin.sym} 1180 -870 0 1 {name=p8 lab=OSC}
C {devices/lab_pin.sym} 910 -810 0 1 {name=p19 lab=RST}
C {devices/lab_pin.sym} 260 -900 0 0 {name=p21 lab=VSS}
C {devices/ammeter.sym} 150 -1030 3 0 {name=Vidvdd}
C {devices/code.sym} 760 -230 0 0 {name=PADS
only_toplevel=true
format="tcleval( @value )"
value="
.include $\{::IHP_PADS\}
"}
C {devices/vsource.sym} 645 -120 1 0 {name=V6 value=0
}
C {devices/lab_pin.sym} 615 -120 0 0 {name=p1 lab=0
}
C {devices/lab_pin.sym} 675 -120 0 1 {name=p15 lab=sub! global=1}
C {devices/res.sym} 1180 -820 0 1 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1180 -790 0 0 {name=p26 lab=VSS}
C {devices/vsource.sym} 910 -760 0 0 {name=VDIGRES value="PWL(0 1.5 6e-6 1.5 6.1e-6 0)"}
C {devices/lab_pin.sym} 910 -730 0 0 {name=p16 lab=VSS}
C {devices/res.sym} 1090 -970 0 1 {name=R1
value=3k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 260 -850 0 0 {name=p3 lab=VSS}
C {devices/vsource.sym} 110 -280 0 0 {name=VIODVDD value="PWL(0 0 5us 2.5)"}
C {devices/lab_pin.sym} 110 -250 0 0 {name=p27 lab=VSS}
C {devices/lab_pin.sym} 110 -310 0 0 {name=p28 lab=IODVDD}
C {devices/vsource.sym} 290 -280 0 0 {name=VIOAVDD value="PWL(0 0 5us 3.3)"}
C {devices/lab_pin.sym} 290 -250 0 0 {name=p29 lab=VSS}
C {devices/lab_pin.sym} 290 -310 0 0 {name=p30 lab=IOAVDD}
C {devices/ammeter.sym} 150 -820 3 0 {name=Viioavdd}
C {devices/lab_pin.sym} 120 -1030 0 0 {name=p20 lab=DVDD}
C {devices/lab_pin.sym} 120 -890 0 0 {name=p23 lab=IODVDD}
C {devices/lab_pin.sym} 120 -970 0 0 {name=p24 lab=AVDD}
C {devices/lab_pin.sym} 120 -820 0 0 {name=p25 lab=IOAVDD}
C {devices/netlist.sym} 760 -340 0 0 {name=s2 value=".model adc_buff1 adc_bridge(in_low = 0.5 in_high=1.0)
.model dac_buff1 dac_bridge(out_high = 1.5 t_rise = 100e-9 t_fall = 100e-9)
.model dac_buff_vdda dac_bridge(out_high = 3.3 t_rise = 100e-9 t_fall = 100e-9)"}
C {devices/code.sym} 1150 -230 0 0 {name=COSIM
only_toplevel=true
format=".model cosim_m d_mycosim (process_file=\\"/usr/bin/python\\" process_params=[\\"./resources/spi_stimuli.py\\", \\"Baud=9600\\"])
Acontrol [cs_in sclk_in dout drst tb1 tb0] [cs sclk din fp] cosim_m"}
C {devices/adc_bridge.sym} 720 -760 2 1 {name=A1 adc_bridge_model=adc_buff1}
C {devices/dac_bridge.sym} 720 -820 0 1 {name=A3 dac_bridge_model=dac_buff1}
C {devices/lab_pin.sym} 750 -800 0 1 {name=p33 lab=cs}
C {devices/lab_pin.sym} 750 -820 0 1 {name=p34 lab=sclk}
C {devices/lab_pin.sym} 750 -780 0 1 {name=p35 lab=din}
C {devices/lab_pin.sym} 750 -760 0 1 {name=p36 lab=dout}
C {devices/lab_pin.sym} 720 -690 0 1 {name=p38 lab=a_cs}
C {devices/lab_pin.sym} 720 -670 0 1 {name=p39 lab=a_sclk}
C {devices/lab_pin.sym} 720 -650 0 1 {name=p40 lab=a_din}
C {devices/lab_pin.sym} 720 -630 0 1 {name=p41 lab=a_dout}
C {devices/vsource.sym} 670 -530 0 1 {name=VSUPP1 value="DC 0 AC 0"}
C {devices/vsource.sym} 790 -530 0 1 {name=VSUPP4 value="DC 0 AC 0"}
C {devices/adc_bridge.sym} 840 -480 0 0 {name=A2 adc_bridge_model=adc_buff1}
C {devices/adc_bridge.sym} 840 -460 0 0 {name=A7 adc_bridge_model=adc_buff1}
C {devices/lab_pin.sym} 870 -480 2 0 {name=p43 lab=sclk_in}
C {devices/lab_pin.sym} 870 -460 2 0 {name=p44 lab=cs_in
}
C {devices/dac_bridge.sym} 720 -800 0 1 {name=A6 dac_bridge_model=dac_buff1}
C {devices/dac_bridge.sym} 720 -780 0 1 {name=A5 dac_bridge_model=dac_buff1}
C {devices/res.sym} 570 -570 0 1 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 570 -540 0 0 {name=p17 lab=VSS}
C {devices/code.sym} 1280 -230 0 0 {name=STDCELLS
only_toplevel=true
format="tcleval( @value )"
value="
.include $\{::IHP_STDCELLS\}/sg13g2_stdcell.spice

.subckt sg13g2_not_1 Y A VDD VSS
XX1 Y A VSS VSS sg13_lv_nmos w=740.00n l=130.00n ng=1 ad=2.516e-13 as=2.516e-13 pd=2.16e-06 ps=2.16e-06 m=1
XX0 Y A VDD VDD sg13_lv_pmos w=1.12u l=130.00n ng=1 ad=3.808e-13 as=3.808e-13 pd=2.92e-06 ps=2.92e-06 m=1
.ends
"}
C {devices/lab_pin.sym} 560 -920 0 1 {name=p18 lab=FTOP}
C {devices/lab_pin.sym} 810 -940 0 1 {name=p31 lab=fp}
C {devices/vsource.sym} 290 -510 0 0 {name=VTB0 value=0}
C {devices/lab_pin.sym} 290 -480 0 1 {name=p37 lab=VSS}
C {devices/vsource.sym} 130 -510 0 0 {name=VTB1 value=0}
C {devices/lab_pin.sym} 130 -480 0 1 {name=p42 lab=VSS}
C {devices/adc_bridge.sym} 330 -560 2 1 {name=A4 adc_bridge_model=adc_buff1}
C {devices/adc_bridge.sym} 170 -560 2 1 {name=A8 adc_bridge_model=adc_buff1}
C {devices/lab_pin.sym} 200 -560 0 1 {name=p45 lab=tb1}
C {devices/lab_pin.sym} 360 -560 0 1 {name=p46 lab=tb0}
C {devices/adc_bridge.sym} 940 -840 2 1 {name=A9 adc_bridge_model=adc_buff1}
C {devices/lab_pin.sym} 970 -840 0 1 {name=p47 lab=drst}
C {devices/dac_bridge.sym} 780 -940 0 1 {name=A10 dac_bridge_model=dac_buff_vdda}
C {lab_wire.sym} 610 -940 0 0 {name=p32 sig_type=std_logic lab=fprog}
C {devices/ammeter.sym} 670 -940 1 1 {name=Vifprog}
C {Lumos.sym} 410 -960 0 0 {name=x1}
