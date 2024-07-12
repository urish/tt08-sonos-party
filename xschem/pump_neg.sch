v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -320 100 -300 100 {
lab=clk}
N -300 100 -300 150 {
lab=clk}
N -260 180 -260 200 {
lab=VGND}
N -260 100 -160 100 {
lab=clka}
N -90 180 -90 200 {
lab=VGND}
N -260 80 -260 120 {
lab=clka}
N -300 50 -300 100 {
lab=clk}
N -90 80 -90 120 {
lab=clkb}
N -90 100 -60 100 {
lab=clkb}
N -60 100 -40 100 {
lab=clkb}
N -260 0 -260 20 {
lab=VAPWR}
N -90 -0 -90 20 {
lab=VAPWR}
N -130 50 -130 100 {
lab=clka}
N -160 100 -130 100 {
lab=clka}
N -130 100 -130 150 {
lab=clka}
N 40 50 80 50 {
lab=VGND}
N 70 10 110 10 {
lab=VGND}
N 70 10 70 50 {
lab=VGND}
N 140 50 180 50 {
lab=stage1}
N 180 50 180 140 {
lab=stage1}
N 180 200 180 220 {
lab=clka}
N 320 50 320 140 {
lab=stage2}
N 280 50 320 50 {
lab=stage2}
N 320 200 320 220 {
lab=clkb}
N 460 50 460 140 {
lab=VPRGNEG}
N 460 200 460 220 {
lab=VGND}
N 420 50 460 50 {
lab=VPRGNEG}
N 320 50 360 50 {
lab=stage2}
N 180 10 180 50 {
lab=stage1}
N 180 10 250 10 {
lab=stage1}
N 320 10 320 50 {
lab=stage2}
N 320 10 390 10 {
lab=stage2}
N 460 50 500 50 {
lab=VPRGNEG}
N 500 50 530 50 {
lab=VPRGNEG}
N -310 -0 -260 0 {
lab=VAPWR}
N -260 0 -90 -0 {
lab=VAPWR}
N -260 20 -260 50 {
lab=VAPWR}
N -90 20 -90 50 {
lab=VAPWR}
N 40 50 40 70 {
lab=VGND}
N 180 50 220 50 {
lab=stage1}
N 80 50 110 50 {}
N 220 50 250 50 {}
N 360 50 390 50 {}
C {devices/ipin.sym} -320 100 0 0 {name=p2 lab=clk}
C {devices/lab_wire.sym} -160 100 0 0 {name=p4 sig_type=std_logic lab=clka}
C {devices/lab_wire.sym} -40 100 0 0 {name=p5 sig_type=std_logic lab=clkb}
C {sky130_fd_pr/cap_mim_m3_1.sym} 460 170 2 0 {name=C3 model=cap_mim_m3_1 W=25 L=25 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 170 2 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 180 220 3 0 {name=p3 sig_type=std_logic lab=clka}
C {sky130_fd_pr/cap_mim_m3_1.sym} 320 170 2 0 {name=C2 model=cap_mim_m3_1 W=25 L=25 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 320 220 3 0 {name=p6 sig_type=std_logic lab=clkb}
C {devices/title.sym} -220 370 0 0 {name=l2 author="Uri Shaked"}
C {devices/lab_wire.sym} 230 10 0 0 {name=p8 sig_type=std_logic lab=stage1}
C {devices/lab_wire.sym} 370 10 0 0 {name=p9 sig_type=std_logic lab=stage2}
C {devices/ipin.sym} -310 0 0 0 {name=p13 lab=VAPWR}
C {devices/ipin.sym} -300 290 0 0 {name=p15 lab=VGND}
C {vgnd.sym} -260 200 0 0 {name=l1 lab=VGND}
C {vgnd.sym} -90 200 0 0 {name=l3 lab=VGND}
C {vgnd.sym} 460 220 0 0 {name=l4 lab=VGND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -280 50 0 0 {name=M1
L=0.5
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -110 50 0 0 {name=M2
L=0.5
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} -280 150 0 0 {name=M3
L=0.5
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} -110 150 0 0 {name=M4
L=0.5
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/opin.sym} 530 50 0 0 {name=p11 lab=VPRGNEG}
C {vgnd.sym} 40 70 0 0 {name=l5 lab=VGND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 110 30 1 0 {name=M8
L=8
W=7
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 250 30 1 0 {name=M5
L=8
W=7
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 390 30 1 0 {name=M6
L=8
W=7
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
