/// @description Insert description here
// You can write your code in this editor
ex=0
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}
exani+=(global.room_speed_set/1000000*delta_time)*.5

if exani>11 {
	exani=0
}

for (var i=0; i<array_length(master.notice); i++ ) {
	if master.notice[i,0]=1 {
		if master.notice[i,3]!=-1 {
		ex=1
		}
	}
}
for (var ii=0; ii<array_length(master.notice); ii++ ) {
	if master.notice[ii,1]=1 {
		if master.notice[ii,3]!=-1 {
		ex=2
		}
	}
}




if scale != scalee {
	scale= (scale*30+scalee)/31
}
if scale>1.01 {
	 if hover<255 {
		 hover+=5*(global.room_speed_set/1000000*delta_time)
	 } else {
		 hover=255
	 }
} else {
	 if hover>0 {
		 hover-=5*(global.room_speed_set/1000000*delta_time)
	 } else {
		 hover=0
	 }
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
		x+=(global.room_speed_set/1000000*delta_time)*20*(room_width-x)/500
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


if audio_is_playing(sound) {
audio_sound_pitch(sound,1*pitch*(hover/255))
}
if audio_is_playing(soundd) {
audio_sound_pitch(soundd,1*pitch2*(hover/255))
}
if audio_is_playing(click) {
audio_sound_pitch(click,.5+.5*(hover/255))
}
