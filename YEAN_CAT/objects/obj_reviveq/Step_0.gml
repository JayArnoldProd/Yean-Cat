/// @description Insert description here
// You can write your code in this editor

al=(1-clamp((room_height/2-y)/1000,0,1))/2

if falling=1 {
if y<room_height/2 {
	y+=(global.room_speed_set/1000000*delta_time)*((room_height/2-y)/30+3)
} else {
	y=room_height/2
	falling=0
}
} else {
	if falling =-1 {
		if y>0 {
	y-=(global.room_speed_set/1000000*delta_time)*((y)/20+4)
} else {
	if instance_exists(obj_yesornorev) {
	with (obj_yesornorev) {
		instance_destroy();
	}
	}
	instance_destroy();
}
	}
}
if load=1 {
	if ad=0 {
	image=spr_miracle
var yess = instance_create_layer(x,y,"uiitop",obj_yesornorev)
yess.yorn=1
yess.rev=1
var nooo = instance_create_layer(x,y,"uiitop",obj_yesornorev)
nooo.yorn=-1
nooo.rev=1
}
if ad=1 {
	image=spr_miracle
var yess = instance_create_layer(x,y,"uiitop",obj_yesornorev)
yess.yorn=2
yess.rev=1
var nooo = instance_create_layer(x,y,"uiitop",obj_yesornorev)
nooo.yorn=-1
nooo.rev=1
}
	load=0
}


anicount+=.03
