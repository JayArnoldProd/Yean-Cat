///CREATE OF obj_options

totalgrade=0;
alp=0
col=c_white
onscreen=-1
checkcount=1
image_speed=0

time=0

image_xscale=2.2
image_yscale=1.8

dfade=0
countgrade=-1
selected=-1;
slide=0
refcount=0

kind=0
al=0
falling=1;


load=1
variant=-1;
anicount=0
name=""
image=noone
desc=""
numb=-1
level=0
stopped=0
checkcount=1
		
for (i=0; i<=4; i++) {
	//if master.modes[i]=1 {
		var ch1=instance_create_layer(room_width, room_height/2+200, "uiitop", obj_checkboxpause);
		ch1.num=checkcount
		ch1.abcd=i
		checkcount+=1
	//}
}

//spawn cluster of horizontal sliders
var options_pick = [
0,//mastervol
1,//musicvol
2,//sfxvol
3,//dialogvol
4,//uivol
5//uiscale
]
var offset_x = 0
var offset_y = -300
var slider_dir = 0 //horizontal
var lengthh = 500 //slider length
var spacingg = 90 //gap
var menu=1

scr_slider_cluster(options_pick, offset_x, offset_y, slider_dir, lengthh, spacingg, menu)


