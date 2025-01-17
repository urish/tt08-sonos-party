v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 420 -300 1220 100 {flags=graph
y1=-5
y2=12
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=2.11779e-07
x2=0.000102133
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ua[0]
ua[1]
clk"
color="4 7 10"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0}
T {Model Tiny Tapeout analog parasitics} 60 -30 0 0 0.3 0.3 {}
N -120 -220 -90 -220 {
lab=CLK}
N -120 -160 -90 -160 {
lab=GND}
N -90 -160 -90 -150 {
lab=GND}
N -90 -200 -90 -160 {
lab=GND}
N 110 -90 150 -90 {
lab=ua[0]}
N 130 -90 130 -80 {
lab=ua[0]}
N 210 -90 250 -90 {
lab=analog_pad}
N 230 -90 230 -80 {
lab=analog_pad}
N -120 -370 -90 -370 {
lab=VAPWR}
N -120 -350 -120 -220 {
lab=CLK}
N -120 -350 -90 -350 {
lab=CLK}
N -90 -330 -90 -310 {
lab=GND}
C {devices/code.sym} -160 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_wire.sym} -100 -220 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/code.sym} -20 50 0 0 {name=STIMULI only_toplevel=false value="

.tran 10n 100u
.save all

.control
run
write pump_tb.raw
.endc
"}
C {devices/vsource.sym} 330 -210 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} 330 -180 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 330 -240 0 0 {name=l4 lab=VAPWR}
C {devices/launcher.sym} 480 130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pump_tb.raw tran"
}
C {devices/vsource.sym} -120 -190 0 1 {name=V2 value="PULSE(0 1.8 0 0 0 250n 500n)"}
C {devices/title.sym} 210 270 0 0 {name=l5 author="Uri Shaked"}
C {devices/gnd.sym} -90 -150 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -90 -240 0 0 {name=l1 lab=VAPWR}
C {devices/res.sym} 180 -90 3 1 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/parax_cap.sym} 130 -70 0 0 {name=C1 gnd=0 value=2.5p m=1}
C {devices/lab_pin.sym} 210 -240 2 0 {name=p3 sig_type=std_logic lab=ua[1]}
C {devices/lab_pin.sym} 110 -90 0 0 {name=p4 sig_type=std_logic lab=ua[0]}
C {devices/lab_pin.sym} 250 -90 2 0 {name=p1 sig_type=std_logic lab=analog_pad}
C {devices/parax_cap.sym} 230 -70 0 0 {name=C2 gnd=0 value=2.5p m=1}
C {pump_pos.sym} 60 -350 0 0 {name=x1}
C {pump_neg.sym} 60 -220 0 0 {name=x2}
C {devices/vdd.sym} -120 -370 0 0 {name=l2 lab=VAPWR}
C {devices/gnd.sym} -90 -310 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 210 -370 2 0 {name=p5 sig_type=std_logic lab=ua[0]}
