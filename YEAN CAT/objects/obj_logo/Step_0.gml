/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_logo) {
	splashtime+=.025*(global.room_speed_set/1000000*delta_time)
	if obj_logo.onscreen!=0 {
if master.loading<=1 {
	if splashalpha<string_length(chosensplash) {
	splashalpha+=.025*(global.room_speed_set/1000000*delta_time)
	}
}
	} else {
		splashalpha= splashalpha*30/31
	}
splashangle=10 * sin((2 * pi / (string_length(chosensplash))) * (splashtime))
if splashtime>string_length(chosensplash) {
	splashtime=0
}
} else {
	splashtime=0
}

updatee=1-updatee
if time>= 30*pi {
	time-=30*pi-4
}
timee+=(global.room_speed_set/1000000*delta_time)*.2

colcol+=(global.room_speed_set/1000000*delta_time)*.3
if colcol>255 {
	colcol=0
}

if abs((room_height/2-180)-mouse_y)<100 and master.loading<=0 {
	time=(clamp(time+.2,0,30*pi))*(1-sqr(1-(abs((room_height/2-180)-mouse_y)/100)))+(clamp(((room_width/2+800)-(mouse_x-50))/(150/pi),0,30*pi))*(sqr(1-(abs((room_height/2-180)-mouse_y)/100)))
} else {
	time+=(global.room_speed_set/1000000*delta_time)*.2
}



rainbowh+=(global.room_speed_set/1000000*delta_time)*2
rainbowv+=(global.room_speed_set/1000000*delta_time)*2
if rainbowh>=sprite_get_width(spr_rainbowback)*1.1 {
	rainbowh=0
}
if rainbowv>=sprite_get_height(spr_rainbowback)*1.1 {
	rainbowv=0
}

if onscreen=1 {
	if x< room_width/2 {
		x+=20*(room_width-x)/500
	} else {
		x=room_width/2
	}
} else {
	if onscreen=-1 {
		if x> room_width/2 {
		x-=(global.room_speed_set/1000000*delta_time)*20*(x-room_width/2)/500
	} else {
		x = room_width/2
		onscreen=1
	}
		
	} else {
	updatee=0
	if x> 0 {
		x-=(global.room_speed_set/1000000*delta_time)*(20*(x)/500+1)
	} else {
		instance_destroy();
		x=0
	}
	}
}