/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	vspeed=0
	speed=0
	}
	
	exit
} else {
if instance_exists(yeancat) {
		fly=yeancat.flying
}
}


if dir=1 {
x-=speedd
} else {
x+=speedd
}




if instance_exists(yeancat) {
	if fly=0 {
	if onground=0 {
if master.vert != 0 {
	
	y-=(global.room_speed_set/1000000*delta_time)*(master.vert*abs(yeancat._vspeed)/((fly+1)))
}

if master.horz != 0 {
	x-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed)/((fly+1)))
}
	} else {
		x-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed)/((fly+1)))
	}
	} else {
		onground=0
	x-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed)/((fly+1))+obj_backg.travelspeed/20)
	y-=(global.room_speed_set/1000000*delta_time)*(master.vert*abs(yeancat._vspeed)/((fly+1)))
}
}


if x<room_width-2000 or x>room_height+2000 {
	instance_destroy()
}

