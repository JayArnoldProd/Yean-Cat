/// @description Insert description here
// You can write your code in this editor
col=c_white
onscreen=-1
start=1
instance_create_layer(room_width, room_height/2+125, "uiitop", obj_begin);
checkcount=1
stage=1;
stageid=0;
leveltext=master.stages[0,0]
leveldesc=master.stages[0,8]
chartext=""
if instance_exists(yeancat) {
	yeancat.positionplace=2
}
time=0
c1=c_red
c2=c_aqua
c3=c_lime
c4=c_purple
c5=c_blue
c6=c_orange
c7=c_yellow
c8=c_green
dontpause=0
k1=c_red
k2=c_aqua
k3=c_lime
k4=c_purple
k5=c_blue
k6=c_orange
k7=c_yellow
k8=c_green

rhyx=-410
rhyy=-125
flox=410
floy=-125
lyrx=-410
lyry=105
swax=410
sway=105
holdtime=0
rhyps=1
rhyms=1
flops=1
floms=1
lyrps=1
lyrms=1
swaps=1
swams=1

cc1=c_red
cc2=c_aqua
cc3=c_lime
cc4=c_purple
cc5=c_blue
cc6=c_orange
cc7=c_yellow
cc8=c_green

kk1=c_red
kk2=c_aqua
kk3=c_lime
kk4=c_purple
kk5=c_blue
kk6=c_orange
kk7=c_yellow
kk8=c_green

image_xscale=1.3
image_yscale=1.3

for (i=0; i<=3; i++) {
	if master.modes[i]=1 {
		var ch1=instance_create_layer(room_width, room_height/2+200, "uiitop", obj_checkbox);
		ch1.num=checkcount
		ch1.abcd=i
		checkcount+=1
	}
}
charr=0
charselect=master.charselect
var left = instance_create_layer(room_width, room_height/2+200+50, "uiitop", obj_arrowselect);
left.dir=0
var right = instance_create_layer(room_width, room_height/2+200+50, "uiitop", obj_arrowselect);
right.dir=1
var left2 = instance_create_layer(room_width, room_height/2+200-50, "uiitop", obj_arrowselect2);
left2.dir=0
var right2 = instance_create_layer(room_width, room_height/2+200-50, "uiitop", obj_arrowselect2);
right2.dir=1
sound=audio_play_sound(nothingsound,0,0)
myEmitter=audio_emitter_create()
