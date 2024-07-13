v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 420 -300 1220 100 {flags=graph
y1=-0.851455
y2=2.4421
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-7.47983e-06
x2=6.17732e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rainbow=0





color="11 7 8 6"
node="prog_en
hvshutdown
x1.sonos_gate
x1.sonos_body"}
T {Model Tiny Tapeout analog parasitics} 60 -30 0 0 0.3 0.3 {}
N -90 -260 -50 -260 {
lab=VDPWR}
N -140 -260 -140 -240 {
lab=VAPWR}
N -140 -240 -50 -240 {
lab=VAPWR}
N -280 -280 -240 -280 {lab=clk}
N -140 -220 -50 -220 {
lab=GND}
N -280 -180 -240 -180 {
lab=prog_en}
N -270 -70 -230 -70 {
lab=hvshutdown}
N -160 -160 -50 -160 {
lab=GND}
N -200 -160 -160 -160 {
lab=GND}
C {devices/code.sym} -160 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_wire.sym} -240 -280 0 0 {name=p2 sig_type=std_logic lab=clk}
C {devices/code.sym} -20 50 0 0 {name=STIMULI only_toplevel=false value="

.tran 10n 100u
.save all

.control
run
write flash_tb.raw
.endc
"}
C {devices/vsource.sym} -130 -400 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} -130 -370 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -130 -430 0 0 {name=l4 lab=VAPWR}
C {devices/launcher.sym} 480 130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/flash_tb.raw tran"
}
C {devices/vsource.sym} -280 -250 0 1 {name=V2 value="PULSE(0 1.8 0 0 0 250n 500n)"}
C {devices/title.sym} 210 270 0 0 {name=l5 author="Uri Shaked"}
C {devices/gnd.sym} -280 -220 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -90 -260 0 0 {name=l1 lab=VDPWR}
C {flash.sym} 100 -200 0 0 {name=x1}
C {devices/vsource.sym} -200 -400 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} -200 -370 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -200 -430 0 0 {name=l7 lab=VDPWR}
C {devices/vdd.sym} -140 -260 0 0 {name=l8 lab=VAPWR}
C {devices/gnd.sym} -140 -220 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -50 -200 0 0 {name=p1 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} -50 -180 0 0 {name=p3 sig_type=std_logic lab=prog_en}
C {devices/lab_wire.sym} -50 -140 0 0 {name=p5 sig_type=std_logic lab=hvshutdown}
C {devices/vsource.sym} -280 -150 0 1 {name=V4 value="PULSE(0 1.8 10u 0 0 10u 1s)"}
C {devices/lab_wire.sym} -240 -180 0 0 {name=p6 sig_type=std_logic lab=prog_en}
C {devices/gnd.sym} -280 -120 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -270 -40 0 1 {name=V5 value="PULSE(0 1.8 25u 0 0 1u 1s)"}
C {devices/lab_wire.sym} -230 -70 0 0 {name=p7 sig_type=std_logic lab=hvshutdown}
C {devices/gnd.sym} -270 -10 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} -200 -160 0 0 {name=l12 lab=GND}
