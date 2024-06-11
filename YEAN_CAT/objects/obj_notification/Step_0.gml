/// @description Insert description here
// You can write your code in this editor
if paus>=instance_number(obj_notification) {
	paus=0
}
if paus>0 {
	exit
}

if instance_exists(obj_pickupq) or instance_exists(restar) or instance_exists(obj_reviveq) {
falling=-1
}
if load=1 {
	chosensplash=namee
	load=0
}
x=room_width/2



//pause in dev
if master.devmode=1 {
	if keyboard_check(ord("V")) {
		exit
	} else {
		duration-=delta_time
		timee+=(global.room_speed_set/1000000*delta_time)*.3
		colcol+=(global.room_speed_set/1000000*delta_time)*.3
		splashtime+=.05*(global.room_speed_set/1000000*delta_time)
			if falling!=-1 {

	if splashalpha<string_length(chosensplash) {
	splashalpha+=.05*(global.room_speed_set/1000000*delta_time)
	}
	} else {
		splashalpha= splashalpha*15/16
	}
splashangle=2 * sin((2 * pi / (string_length(chosensplash))) * (splashtime))
	}
} else {
	duration-=delta_time
	timee+=(global.room_speed_set/1000000*delta_time)*.2
	colcol+=(global.room_speed_set/1000000*delta_time)*.3
	splashtime+=.05*(global.room_speed_set/1000000*delta_time)
		if falling!=-1 {

	if splashalpha<string_length(chosensplash) {
	splashalpha+=.05*(global.room_speed_set/1000000*delta_time)
	}
	} else {
		splashalpha= splashalpha*15/16
	}
splashangle=2 * sin((2 * pi / (string_length(chosensplash))) * (splashtime))
}

bottomfade=(1-clamp(abs(camera_get_view_y(master.cam)+135*master.camscale-y)/100,0,1))
topfade=(1-clamp(abs(camera_get_view_y(master.cam)+135*master.camscale-y)/100,0,1))
stretchin=sqrt(1-clamp(abs(camera_get_view_y(master.cam)+135*master.camscale-y)/100,0,1))

if colcol>255 {
	colcol=0
}
	

if splashtime>string_length(chosensplash) {
	splashtime=0
}

if duration<=6/8*durationset*(1000000) {
	if holdshow>0 and holdnum!=2{
		duration=6/8*durationset*(1000000)
		holdnum=1
		holdshow-=delta_time
	} else {
		if holdnum!=2 and holdnum !=3 {
		holdshow=1.5*(1000000)
		holdnum=2
		} else {
			if holdnum!=3 {
			if duration<=2/8*durationset*(1000000) {
				if holdshow>0 {
		duration=2/8*durationset*(1000000)
		holdshow-=delta_time
	} else {
		holdshow=0
		holdnum=3
			}
		}
	}
	}
	}
	}

if duration< 1/8*durationset*(1000000) {
	falling=-1
		if slide>0 {
	slide-=1
} else {
	slide=0
}
} else {
	if duration< 7/8*durationset*(1000000) {
		if duration> 4/8*durationset*(1000000) {
			
		if duration< 5/8*durationset*(1000000) {
				splashalpha= splashalpha*15/16
		splashtime= splashtime*15/16
			if slide>0 {
	slide-=1*(global.room_speed_set/1000000*delta_time)
} else {
	slide=0
}
		if splashalpha<.01 {
			splashalpha=0
			splashtime=0
			
		}
		} else {
				if slide<80 {
	slide+=.5*(global.room_speed_set/1000000*delta_time)
} else {
	slide=80
}	
		}
		} else {
			if chosensplash!=namee2 {
				splashalpha=0
			splashtime=0
			chosensplash=namee2
			}
			desc=desc2
			if duration> 1/8*durationset*(1000000) {
					if splashalpha<string_length(chosensplash) {
	splashalpha+=.05*(global.room_speed_set/1000000*delta_time)
	}
	if slide<80 {
	slide+=1*(global.room_speed_set/1000000*delta_time)
} else {
	slide=80
}
			} else {
				falling=-1
			}
		}
	} else {
	
	if slide<80 {
	slide+=.5*(global.room_speed_set/1000000*delta_time)
} else {
	slide=80
}
}
}



if slowbow>0 {
	slowbow-=.001
} else {
	slowbow=0
}
if rainpos<sprite_get_height(spr_sliderrainbow)/2 {
	rainpos+=(.2+.4*(slowbow))*2
} else {
	rainpos=0
}

if falling=0 {
if y<camera_get_view_y(master.cam)+125*master.camscale-(120-slide*1.5) {
	y+=(global.room_speed_set/1000000*delta_time)*(clamp((abs(camera_get_view_y(master.cam)+125*master.camscale-(120-slide*1.5)-y)+1)/5,0,10))
} else {
	y=camera_get_view_y(master.cam)+125*master.camscale-(120-slide*1.5)
}
}
if falling=1 {
if y<camera_get_view_y(master.cam)+125*master.camscale-(120-slide*1.5) {
	y+=(global.room_speed_set/1000000*delta_time)*(clamp((abs(camera_get_view_y(master.cam)+125*master.camscale-(120-slide*1.5)-y)+1)/5,0,10))
} else {
	y=camera_get_view_y(master.cam)+125*master.camscale-(120-slide*1.5)
	falling=0
}
} else {
	if falling =-1 {
		if y>0 {
	y-=(global.room_speed_set/1000000*delta_time)*((5-clamp(y/125,0,5))*2+2)
} else {
	instance_destroy();
}
	}
}





