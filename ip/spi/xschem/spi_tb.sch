v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Schematic of spi block is set 
in xschemrc according to the 
environment variable DIG_LEVEL.
Instance-Property: schematic="tcleval(spi_$::DIG_LEVEL.sch)"} 580 -690 0 0 0.3 0.3 {}
N 350 -210 350 -170 {
lab=VSS}
N 190 -920 190 -910 {lab=reset}
N 390 -920 390 -850 {lab=reset}
N 190 -920 390 -920 {lab=reset}
N 390 -850 570 -850 {lab=reset}
N 470 -830 570 -830 {lab=a_cs}
N 490 -810 570 -810 {lab=a_sclk}
N 510 -790 570 -790 {lab=a_din}
N 530 -770 570 -770 {lab=a_dout}
N 550 -750 570 -750 {lab=a_dout_en}
N 470 -830 470 -700 {lab=a_cs}
N 450 -830 470 -830 {lab=a_cs}
N 450 -680 490 -680 {lab=a_sclk}
N 490 -810 490 -680 {lab=a_sclk}
N 450 -810 490 -810 {lab=a_sclk}
N 420 -660 510 -660 {lab=a_din}
N 510 -790 510 -660 {lab=a_din}
N 450 -790 510 -790 {lab=a_din}
N 420 -640 530 -640 {lab=a_dout}
N 530 -770 530 -640 {lab=a_dout}
N 450 -770 530 -770 {lab=a_dout}
N 420 -620 550 -620 {lab=a_dout_en}
N 550 -750 550 -620 {lab=a_dout_en}
N 450 -750 550 -750 {lab=a_dout_en}
N 350 -480 350 -460 {
lab=#net1}
N 330 -460 350 -460 {
lab=#net1}
N 470 -480 470 -440 {
lab=#net2}
N 330 -440 470 -440 {
lab=#net2}
N 470 -700 470 -540 {lab=a_cs}
N 420 -700 470 -700 {lab=a_cs}
N 450 -680 450 -570 {lab=a_sclk}
N 420 -680 450 -680 {lab=a_sclk}
N 350 -570 450 -570 {lab=a_sclk}
N 350 -570 350 -540 {lab=a_sclk}
C {devices/netlist.sym} 920 -280 0 0 {name=s2 value=".model adc_buff1 adc_bridge(in_low = 0.5 in_high=1.0)
.model dac_buff1 dac_bridge(out_high = 1.5 t_rise = 100e-9 t_fall = 100e-9)"}
C {devices/adc_bridge.sym} 420 -770 2 0 {name=A1 adc_bridge_model=adc_buff1}
C {devices/dac_bridge.sym} 420 -830 0 0 {name=A3 dac_bridge_model=dac_buff1}
C {devices/adc_bridge.sym} 420 -750 2 0 {name=A4 adc_bridge_model=adc_buff1}
C {devices/lab_pin.sym} 350 -190 0 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 140 -110 0 0 {name=p12 lab=VSS}
C {devices/lab_pin.sym} 140 -170 0 0 {name=p13 lab=TEMPERATURE}
C {devices/vsource_arith.sym} 140 -140 0 0 {name=E1 VOL=temper}
C {devices/vsource.sym} 350 -240 0 0 {name=VSUPP2 value="PWL(0 0 1us 1.5)"}
C {devices/vsource.sym} 350 -140 0 1 {name=VSUPP3 value="DC 0 AC 0"}
C {devices/lab_pin.sym} 350 -110 0 0 {name=p9 lab=0}
C {devices/lab_pin.sym} 350 -270 0 0 {name=p15 lab=VDD}
C {devices/lab_pin.sym} 570 -910 0 0 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 570 -890 0 0 {name=p2 lab=VSS}
C {devices/vsource.sym} 190 -880 0 0 {name=VRST value="PWL(0 1.5 2e-6 1.5 2.1e-6 0)"}
C {devices/lab_pin.sym} 190 -850 0 0 {name=p17 lab=VSS}
C {devices/lab_pin.sym} 390 -850 0 0 {name=p18 lab=reset}
C {devices/lab_pin.sym} 390 -830 0 0 {name=p26 lab=cs}
C {devices/lab_pin.sym} 390 -810 0 0 {name=p27 lab=sclk}
C {devices/lab_pin.sym} 390 -790 0 0 {name=p28 lab=din}
C {devices/lab_pin.sym} 390 -770 0 0 {name=p29 lab=dout}
C {devices/lab_pin.sym} 390 -750 0 0 {name=p30 lab=dout_en}
C {devices/lab_pin.sym} 420 -700 0 0 {name=p31 lab=a_cs}
C {devices/lab_pin.sym} 420 -680 0 0 {name=p32 lab=a_sclk}
C {devices/lab_pin.sym} 420 -660 0 0 {name=p33 lab=a_din}
C {devices/lab_pin.sym} 420 -640 0 0 {name=p34 lab=a_dout}
C {devices/lab_pin.sym} 420 -620 0 0 {name=p35 lab=a_dout_en}
C {devices/vsource.sym} 470 -510 0 0 {name=VSUPP1 value="DC 0 AC 0"}
C {devices/vsource.sym} 350 -510 0 0 {name=VSUPP4 value="DC 0 AC 0"}
C {devices/adc_bridge.sym} 300 -460 0 1 {name=A2 adc_bridge_model=adc_buff1}
C {devices/adc_bridge.sym} 300 -440 0 1 {name=A7 adc_bridge_model=adc_buff1}
C {devices/lab_pin.sym} 270 -460 2 1 {name=p36 lab=sclk_in}
C {devices/lab_pin.sym} 270 -440 2 1 {name=p37 lab=cs_in
}
C {devices/dac_bridge.sym} 420 -810 0 0 {name=A6 dac_bridge_model=dac_buff1}
C {devices/dac_bridge.sym} 420 -790 0 0 {name=A5 dac_bridge_model=dac_buff1}
C {devices/code.sym} 800 -180 0 0 {name=LIB_CORNER
only_toplevel=true
format="tcleval( @value )"
value="
.csparam TB_ID=$\{::TB_ID\}
.csparam MC_RUNS=$\{::MC_RUNS\}
.csparam EXIT_NGSPICE=$\{::EXIT_NGSPICE\}
.lib $\{::IHP_MODELS\}/sg13g2.lib $\{::CORNER\}
"}
C {devices/code.sym} 930 -180 0 0 {name=NGSPICE
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
option savecurrents
* save all



* dummy block for goto
if (1)
if TB_ID = 0
	goto TRAN_TEMP
end
if TB_ID = 1
	goto TRAN_TEMP
end


****************************************
label TRAN_TEMP
* save all
****************************************
if MC_RUNS = 0

	let veclen=3
	let v_avdd = vector(veclen)
	let temp = vector(veclen)
	let run = 0

	*foreach te -40 20 140
	foreach te 20
		
		.include resources/spi_tran_temp_ops.inc

		reset
		let run = run + 1
	end

	set nobreak
	set width=300
	print v_avdd, temp > sar8_tran_temp.csv

else
	let v_avdd = vector(MC_RUNS)
	let temp = vector(MC_RUNS)
	let run = 0

	set te = 20

	dowhile run < MC_RUNS
		echo MC-RUN: $&run

		.include resources/spi_tran_temp_ops.inc

 		reset
		let run = run + 1
	end

	set nobreak
	set width=300
	print v_avdd, temp > sar8_tran_temp.csv

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
C {devices/code.sym} 1070 -180 0 0 {name=COSIM
only_toplevel=true
format=".model cosim_m d_mycosim (process_file=\\"/usr/bin/python\\" process_params=[\\"./resources/spi_stimuli.py\\", \\"Baud=9600\\"])
Acontrol [cs_in sclk_in dout dout_en ] [cs sclk din] cosim_m"}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Lukas Baumann"}
C {spi.sym} 580 -590 0 0 {name=X1
schematic="tcleval(spi_$::DIG_LEVEL.sch)"}
C {devices/lab_pin.sym} 730 -910 0 1 {name=p3 lab=c0_[0..7]}
C {devices/lab_pin.sym} 730 -870 0 1 {name=p4 lab=c0_[0..7]}
C {devices/lab_pin.sym} 730 -850 0 1 {name=p6 lab=c1_[0..7]}
C {devices/lab_pin.sym} 730 -830 0 1 {name=p7 lab=c2_[0..7]}
