if onscreen !=0 {
	 if alp <.7 {
		 alp+=.01
	 }
} else {
	if alp >0 {
		 alp-=.01
	 }
}
if audio_emitter_exists(myEmitter) {
	audio_emitter_position(myEmitter,x,y,0);
}

time+=(global.room_speed_set/1000000*delta_time)*.03
if selected != -1 {
	if slide < 1 {
	slide+=(global.room_speed_set/1000000*delta_time)*.05*clamp(1-slide,.1,1);
	} else {
		slide=1
	}
	
} else {
	if slide > 0 {
		slide-=(global.room_speed_set/1000000*delta_time)*.05*clamp(slide,.1,1);
	} else {
		slide = 0;
	}
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
		
	if x> 0 {
		x-=(global.room_speed_set/1000000*delta_time)*(20*(x)/500+1)
	} else {
		x=0
		instance_destroy();
	}
	}
}