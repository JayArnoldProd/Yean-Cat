/// @description Insert description here
// You can write your code in this editor
ex=0
exani+=(global.room_speed_set/1000000*delta_time)*.5
if exani>11 {
	exani=0
}
if instance_exists(obj_unlockmenu) {
	if obj_unlockmenu.menuselectt=1 {
		scalee=1*scale2
	} else {
		if!(position_meeting(mouse_x, mouse_y, self)) {
			scalee=.8*scale2
		}
	}
}
if scale != scalee {
	scale= (scale*30+scalee)/31
}
if scale>.81*scale2 and tout=0 {
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

if instance_exists(obj_unlockmenu) {
		var further=1
	if obj_unlockmenu.menuselect=2 {
		if obj_unlockmenu.swapx>0 {
			tout=1
		} else {
			tout=0
		}
		scale2=.8
		further=3.2
	} else {
		scale2=1
	}
	if obj_unlockmenu.menuselect!=0 and obj_unlockmenu.menuselect!=1 {
		if slidedown<30*further {
			slidedown=(slidedown*30+30*further)/31
			if slidedown>29.5*further {
				slidedown=30*further
			}
		} else {
			if slidedown>30*further {
			slidedown=(slidedown*30+30*further)/31
			if slidedown<30.5*further {
				slidedown=30*further
			}
			}
		}
	} else {
		if slidedown>0 {
			slidedown=(slidedown*30)/31
			if slidedown<.5 {
				slidedown=0
			}
		}
	}
	x=obj_unlockmenu.x-535
	y=obj_unlockmenu.y+335+slidedown
} else {
	instance_destroy()
}

if ex=0 {
var unseen=0
	for (var i=0; i<(array_length(master.tasks));i++) {

		if master.tasks[i,3]=1 {
			unseen=1
			}
		}
		if unseen=1 {
			ex=1
		} else {
			ex=-1
		}
}
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
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